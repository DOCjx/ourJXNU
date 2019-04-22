<?php
namespace Api\Controller;
use Think\Controller;
class CollegeController extends BaseController {
    public function getCollege(){
    	$level = I('get.level');
    	$data['status'] = 1;
    	$data['content'] = $level == 0 ? D('college')->getCollege() : D('college')->getAllCollege();
    	$this->ajaxReturn($data);
    }
}