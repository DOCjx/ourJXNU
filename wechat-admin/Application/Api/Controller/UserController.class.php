<?php
namespace Api\Controller;
use Think\Controller;
class UserController extends BaseController {
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
    public function userRegiest(){
        $userInfo = I('post.');
        $data['status']  = 1;
        $data['content'] = D('user')->userRegiest($userInfo);
        if($data['content'] == false)  $data['status']  = 0;
        $this->ajaxReturn($data);
    }
}
