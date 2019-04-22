<?php
namespace Api\Controller;
use Think\Controller;
class UserController extends BaseController {
    
    public function modUser(){
        $userInfo = I('post.');

        $data['status']  = 1;
        $data['content'] = D('user')->modUser($userInfo);
        $this->ajaxReturn($data);
    }
    public function getUsers(){
        $type = I('get.type');
        $data['status']  = 1;
        $data['content'] = D('user')->getUsers();
        $this->ajaxReturn($data);
    }
    public function getToken(){
        $userNum = I('get.userNum');
        $authPwd = I('get.authPwd');
        //数据库中查询用户是否存在
        $user = M('user')
                ->where(array('user_no'=> array('eq', $userNum), 'status'=> array('eq', 1)))
                ->find();
        //验证认证密码是否正确
        $AU = $user && hash("sha256", $userNum) == $authPwd;
        $time = time();
        $token = hash("sha256", $userNum . $authPwd . time());
        $setToken = M('user')->where(array('user_no'=> array('eq', $userNum), 'status'=> array('eq', 1)))->save(array('session_id'=> $token));
        $data['status']  = 1;
        $data['content']['token'] = $AU ? $token : false;//生成token
        $data['content']['time'] = $time;
        $this->ajaxReturn($data);
    }
    public function decryptData( $appid , $sessionKey, $encryptedData, $iv ) {
        $OK = 0;
        $IllegalAesKey = -41001;
        $IllegalIv = -41002;
        $IllegalBuffer = -41003;
        $DecodeBase64Error = -41004;

        if (strlen($sessionKey) != 24) {
            return $IllegalAesKey;
        }
        $aesKey=base64_decode($sessionKey);

        if (strlen($iv) != 24) {
            return $IllegalIv;
        }
        $aesIV=base64_decode($iv);

        $aesCipher=base64_decode($encryptedData);

        $result=openssl_decrypt( $aesCipher, "AES-128-CBC", $aesKey, 1, $aesIV);
        $dataObj=json_decode( $result );
        if( $dataObj  == NULL )
        {
            return $IllegalBuffer;
        }
        if( $dataObj->watermark->appid != $appid )
        {
            return $DecodeBase64Error;
        }
        $data = json_decode($result,true);

        return $data;
    }
    public function define_str_replace($data) {
        return str_replace(' ','+',$data);
    }
    public function httpCurl($url, $params, $method = 'POST', $header = array(), $multi = false){
        date_default_timezone_set('PRC');
        $opts = array(
            CURLOPT_TIMEOUT        => 30,
            CURLOPT_RETURNTRANSFER => 1,
            CURLOPT_SSL_VERIFYPEER => false,
            CURLOPT_SSL_VERIFYHOST => false,
            CURLOPT_HTTPHEADER     => $header,
            CURLOPT_COOKIESESSION  => true,
            CURLOPT_FOLLOWLOCATION => 1,
            CURLOPT_COOKIE         =>session_name().'='.session_id(),
        );
        /* 根据请求类型设置特定参数 */
        switch(strtoupper($method)){
            case 'GET':
                $opts[CURLOPT_URL] = $url . '?' . http_build_query($params);
                break;
            case 'POST':
                $params = $multi ? $params : http_build_query($params);
                $opts[CURLOPT_URL] = $url;
                $opts[CURLOPT_POST] = 1;
                $opts[CURLOPT_POSTFIELDS] = $params;
                break;
            default:
                throw new Exception('不支持的请求方式！');
        }
        $ch = curl_init();
        curl_setopt_array($ch, $opts);
        $data  = curl_exec($ch);
        $error = curl_error($ch);
        curl_close($ch);
        if($error) throw new Exception('请求发生错误：' . $error);
        return  $data;
    }
    public function getUserEncryptInfo($userInfo) {
        $params['appid']= 'wxebfa80e6a5f3103a';
        $params['secret']= 'bf973783bda833b28d585520df4dd9a6';
        $params['js_code']= $this->define_str_replace($userInfo['code']);
        $params['grant_type']= 'authorization_code';
        $http_key = $this->httpCurl('https://api.weixin.qq.com/sns/jscode2session', $params, 'GET');
        $session_key = json_decode($http_key,true);
        if(!empty($session_key['session_key'])){
            $appid = $params['appid'];
            $encryptedData= $userInfo['encryptedData'];
            $iv = $this->define_str_replace($userInfo['iv']);
            $errCode = $this->decryptData($appid, $session_key['session_key'], $encryptedData, $iv);
            return array(
                'errCode'=> $errCode, 
                'sessionKey' => $session_key
            );
        }else{
            return '获取session_key失败！';
        }
    }
    public function userRegiest(){
        $userInfo = I('post.');
        $userEncryptInfo = $this->getUserEncryptInfo($userInfo);
        $userInfo['openid'] = !!is_array($userEncryptInfo) ? $userEncryptInfo['sessionKey']['openid'] : '获取session_key失败！';
        $updateUserInfo = D('user')->userRegiest($userInfo);


        $data['status']  = 1;
        $data['content'] = array_merge($userInfo, M('user')->where(array('user_no'=> array('eq', $userInfo['openid'])))->find());
        if($updateUserInfo === 0)  $data['status']  = 0;
        $this->ajaxReturn($data);
    }
}
