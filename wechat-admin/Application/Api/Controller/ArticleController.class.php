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
        $data['status']  = 1;
        $data['content'] = D('Article')->getArticleById($id);
        $this->ajaxReturn($data);
    }
    public function getScenery($uid){
        $data['status']  = 1;
        $data['content'] = D('Article')->getScenery($uid);
        $this->ajaxReturn($data);
    }
}