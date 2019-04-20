<?php
namespace Api\Controller;
use Think\Controller;
class ArticleController extends BaseController {
    public function getArticleList($uid){
        $type = I('get.type');
        $data['status']  = 1;
        $data['content'] = D('Article')->articleList($type, $uid);
        $this->ajaxReturn($data);
    }
    public function getArticleById(){
        $id = I('get.id');
        $articleType = I('get.articleType');
        $data['status']  = 1;
        $data['content'] = D('Article')->getArticleById($id, $articleType);
        $this->ajaxReturn($data);
    }
    public function getScenery($uid){
        $data['status']  = 1;
        $data['content'] = D('Article')->getScenery($uid);
        $this->ajaxReturn($data);
    }
    public function addArticle(){
        $data['status']  = 1;
        $data['content'] = D('Article')->addArticle(I('post.'));
        $this->ajaxReturn($data);
    }
}