<?php
namespace Api\Controller;
use Think\Controller;

class ResourcesController extends BaseController {
    public function getResourcesCategory(){
        $data['status']  = 1;
        $data['content'] = D('resources')->getResourcesCategory();
        $this->ajaxReturn($data);
    }
    public function getResourcesDetail(){
        $navId = I('get.navId');
        $titleId = I('get.titleId');
        $resources = D('resources')->getResourcesDetail($navId,$titleId);        $detail = array();
        foreach ($resources as $v) {
            if($v['navId'] == $navId && $v['titleId'] == $titleId){
                $detail = $v['detail'];
                break;
            }
        }
        $data['status']  = 1;
       
        $data['content'] = $detail;
       
         $this->ajaxReturn($data);
    }
    public function getUploadToken(){
        $data['status']  = 1;
        $data['content'] = D('resources')->getUploadToken();
        $this->ajaxReturn($data);
    }
    public function addResource() {
        $resource = I('post.');
        $data['status']  = 1;
        $data['content'] = D('resources')->addResource($resource);
        $this->ajaxReturn($data);
    }
}