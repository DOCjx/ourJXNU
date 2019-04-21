<?php
namespace Api\Controller;
use Think\Controller;
class CollectController extends BaseController {
    public function addCollect(){
    	$collect = I('post.');
    	$collect['user_id'] = I('server.HTTP_UID');
        $data['status']  = 1;
        $didLike = M('collect') ->where(
        	array(
        		'article_id'=>array('eq', $collect['article_id']),
        		'user_id'=>array('eq', $collect['user_id']),
        		'collect_type'=>array('eq', $collect['collect_type'])
        	)
       	)->find();
        if ($didLike) {
        	$this->modCollect($collect, $didLike);
        } else {
	        $addCollect = D('collect')->addCollect($collect);
	        $modComment = D('comment')->modComment($collect, 1);
	        $data['content'] = $addComment;
	        if($addComment === 0 || $modComment == null)  $data['status']  = 0;
	        $this->ajaxReturn($data);
        }
    }
    public function modCollect($collect, $didLike){
    	$likeStatus = $didLike['status'];
        $data['status']  = 1;
        $modCollect = D('collect')->modCollect($collect, $likeStatus);
        $modComment = D('comment')->modComment($collect, $likeStatus == "0" ? 1 : -1);
        $data['content'] = $modCollect && $modCollect;
        if($modCollect == null || $modComment == null)  $data['status']  = 0;
        $this->ajaxReturn($data);
    }
}