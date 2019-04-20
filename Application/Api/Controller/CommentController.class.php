<?php
namespace Api\Controller;
use Think\Controller;
class CommentController extends BaseController {
    public function addComment(){
    	$comment = I('post.');
        $data['status']  = 1;
        $addComment = D('comment')->addComment($comment);
        $modArticle = D('article')->modArticle($comment);
        $data['content'] = $addComment;
        if($addComment === 0 || $modArticle == null)  $data['status']  = 0;
        $this->ajaxReturn($data);
    }
}