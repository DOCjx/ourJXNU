<?php
namespace Api\Controller;
use Think\Controller;
Vendor('QiniuSDK.autoload');  //七牛入口文件引入
use Qiniu\Auth;

class ResourcesController extends BaseController {
    public function getResourcesCategory(){
        $type = I('get.type');
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
        $accessKey = 'oRjO5qMHsINS0VxbPlIIUG4tG_pb2pMT2kHqVPBP';
        $secretKey = 'azAtpSRNfj69HdKtJURyGGGd7epDG2EE_1TIOIjy';
        $bucket = 'docdoc';
        $auth = new Auth($accessKey, $secretKey);
        $token = $auth->uploadToken($bucket);
        
        $data['status']  = 1;
        $data['content'] = $token;
        $this->ajaxReturn($data);
    }
}