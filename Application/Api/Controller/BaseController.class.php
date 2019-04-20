<?php
namespace Api\Controller;
use Think\Controller;
class BaseController extends Controller {
    public function action(){
        $actPass = implode(",", array("gettoken", "getToken", "userRegiest", "userregiest"));
        $action = I('get.action');
        $uid = I('server.HTTP_UID');
        $tokenSet = M('user')->where(array('user_no'=> array('eq', $uid), 'status'=> array('eq', 1)))->find()['session_id'];
        $AU = strpos($actPass, $action) !== false ? true :  $tokenSet && $tokenSet == I('server.HTTP_TOKEN');
        if($AU){
            $this->$action($uid);
        }else{
            $this->ajaxReturn(array('status'=> 0, 'content'=> '非法操作！'));
        }
    }
}