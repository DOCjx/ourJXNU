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
    public function search() {
        $searchType = I('get.searchType');
        $value = I('get.value');

        $data['status']  = 1;
        switch ($searchType) {
            case 0:
                $users = D('user')->getUsers();
                $help = D('article')->searchArticle($value, 1);
                $scenery = D('article')->searchArticle($value, 3);
                foreach ($help as $articleKey => $article) {
                    foreach ($users as $key => $user) {
                       if($user['user_no'] == $article['user_id']) {
                           $help[$articleKey]['user_name'] = $user['name'];
                       }
                    }
                }

                foreach ($scenery as $articleKey => $article) {
                    foreach ($users as $key => $user) {
                       if($user['user_no'] == $article['user_id']) {
                           $scenery[$articleKey]['user_name'] = $user['name'];
                       }
                    }
                }
                $data['content'] = array(
                    'help' => $help,
                    'resource' => D('resources')->searchResources($value),
                    'user' => D('user')->searchUsers($value),
                    'scenery' => $scenery
                );
                break;
            case 1:
                $data['content'] = D('article')->searchArticle($value, $searchType);
                break;
            case 2:
                $data['content'] = D('resources')->searchUsers($value);
                break;
            case 3:
                $data['content'] =  D('user')->searchUsers($value);
                break;
            case 4:
                $data['content'] = D('article')->searchArticle($value, $searchType);
                break;
            default:
                $data['content'] = null;
                break;
        }
        $this->ajaxReturn($data);
    }
    public function getRankList() {
        $rankType = I('get.rankType'); 
        $data['status']  = 1;
        switch ($rankType) {
            case 0:
                $users = D('user')->getUsers();
                $articles = D('article')->getArticleRank();
                foreach ($articles as $articleKey => $article) {
                    foreach ($users as $key => $user) {
                       if($user['user_no'] == $article['user_id']) {
                           $articles[$articleKey]['user_name'] = $user['name'];
                       }
                    }
                }
                $data['content'] = $articles;
                break;
            case 1:
                $data['content'] = D('resources')->getResourcesRank();
                break;
            default:
                $data['content'] = null;
                break;
        }
        $this->ajaxReturn($data);
    }
    public function getMsg() {
        $uid = I('server.HTTP_UID');
        $lastMsgTime = (int)D('user')->getUser($uid)['admission_time'];
        // $modUserTime = D('user')->modUser($uid, array('admission_time'=> time()));
        $comments = D('comment')->getCommentMsg();
        $articles = D('article')->getAllArticle();
        $collects = D('collect')->getAllCollect();
        $data['status']  = 1;
        $res = array();
        $res['help'] = array();
        $res['scenery'] = array();

        foreach ($comments as $key => $comment) {
            foreach ($articles as $articleKey => $article) {
                if(
                    $article['article_type'] == 1
                    && $comment['article_id'] == $article['id'] 
                    && $article['user_id'] == $uid 
                    && strtotime($comment['create_time']) > $lastMsgTime
                ){
                    $res['help'][] = $comment;
                }
            }
        }
        foreach ($collects as $key => $collect) {
            foreach ($articles as $articleKey => $article) {
                if(
                    $article['article_type'] == 2
                    && $collect['article_id'] == $article['id'] 
                    && $article['user_id'] == $uid 
                    && strtotime($collect['create_time']) > $lastMsgTime
                ){
                    $res['scenery'][] = $collect;
                }
            }
        }
        $res['score'] = D('score_log')->getScoreLog(strtotime($lastMsgTime));
        $data['content'] = $res;
        $this->ajaxReturn($data);
    }
}