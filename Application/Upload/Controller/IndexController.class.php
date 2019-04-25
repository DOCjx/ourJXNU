<?php
namespace Upload\Controller;
use Think\Controller;
class IndexController extends Controller {
    public function index(){
    	$uid = I('get.uid');
    	$college_id = I('get.college_id');
    	$options = array_merge(D('Api/college')->getCollege($college_id), D('Api/college')->getCollege(1000), D('Api/college')->getCollege(2000));
    	$uploadToken = D('Api/resources')->getUploadToken();

        $this->assign(array('options' => $options, 'uid' => $uid, 'uploadToken' => $uploadToken));
        $this->display();
    }
}