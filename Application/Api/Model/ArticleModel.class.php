<?php
namespace Api\Model;
use Think\Model;
class ArticleModel extends Model {
    public function getAllArticle() {
        return  $this
            ->where(
                array(
                    'status'=> array('eq', 1)
                )
            )
            ->select();;
    }
    public function getArticleRank () {
        $res = $this
            ->where(
                array(
                    'status'=> array('eq', 1),
                    'article_type'=> array('eq', 2)
                )
            )
            ->order('comment_num desc')
            ->limit(10)
            ->select();
        return $res;
    }
    public function searchArticle ($value, $type) {
        $articleType = $type == 1 ? 1 : 2;
        $res = $this
            ->where(
                array(
                    'status'=> array('eq', 1),
                    'article_type'=> array('eq', $articleType),
                    'content'=> array('like', '%'.$value.'%')
                )
            )
            ->select();
        return $res;
    }
    public function modArticle($article) {
        $comment_num = $this->where(array('id'=>array('eq', $article['article_id']), 'status'=> array('eq', 1)))->find()['comment_num'];
        return $this->where(array('id'=>array('eq', $article['article_id']), 'status'=> array('eq', 1)))->save(array(
            'comment_num' => $comment_num + 1
        ));
    }
    public function addArticle($article) {
        if($article['deadline'] == ''){
            $article['deadline'] = date("Y-m-d H:i:s", time());
        }
        $articleAdd = $this->add($article);
        $position['latitude'] = $article['latitude'];
        $position['longitude'] = $article['longitude'];
        $position['article_id'] = $articleAdd;
        $positionAdd = $position['latitude'] && M('position')->add($position);

        return $articleAdd != null && ($position['latitude'] ? $positionAdd != null : true);
    }
    public function str2time($str) {
        $date = explode('-', explode(' ', $str)[0]);
        $time = explode(':', explode(' ', $str)[1]);
        $year = 0;
        $month = 0;
        $day = 0;
        $hour = 0;
        $minute = 0;
        if(count($date)){
            $year = $date[0];
            $month = $date[1];
            $day = $date[2];
        }
        if(count($date)){
            $hour = $time[0];
            $minute = $time[1];
        }
        return mktime($hour, $minute, 0, $month, $day, $year);
    }
    public function articleList($type = 0, $uid){
      $articleAll = M('article')->where(array('status'=>1,'article_type'=>1))->select();
      //var_dump($uid);
      //var_dump($articleAll);
      $userAll = M('user')->where(array('status'=>1))->select();

      foreach ($articleAll as $key => $articleArr) {
        foreach ($userAll as $key => $user) {
          if($articleArr['user_id'] == $user['user_no']){
            $getArticle['author']['name'] = $user['name'];
            $getArticle['author']['pic'] = $user['pic'];
            $getArticle['author']['authrity'] = $user['authrity'];
            $getArticle['author']['login_last_time'] = $user['login_last_time'];
            $getArticle['image'] = $articleArr['file_id'];
            $getArticle['pages'] = $articleArr['comment_num'];
            $getArticle['id'] = $articleArr['id'];
            $getArticle['summary'] = $articleArr['content'];
            $getArticle['price'] = $articleArr['value'];
            $getArticle['time'] = ($this->str2time($articleArr['deadline']) - time()) * 1000;
            $commentAll = M('comment') ->where(array('status'=>1,'article_id'=>$articleArr['id']))->select();
            //var_dump($articleArr['id'].'11');
            $getArticle['tags']='';
            foreach ($commentAll as $key => $commentArr) {
              // $commentFarCount = M('collect')->where(array('status'=>1,'article_id'=>$commentArr['id'],'collect_type'=>1))->count();
              $commentUser = M('user')->where(array('status'=>1,'user_no'=>$commentArr['user_id']))->find();
              $getComment['name'] = $commentUser['name'];
              $getComment['title'] = $commentArr['content'];
              $getComment['like'] = $commentArr['like'];
              // $getComment['count'] = $commentFarCount;
              //var_dump($getComment);
              $getArticle['tags'][]=$getComment;
              //var_dump($getArticle['tags']);
            }
          }
        }
        $getArticle['favorite'] = M('collect') ->where(array('status'=>1,'article_id'=>$articleArr['id'],'user_id'=> $uid ,'collect_type'=>1))->find() ? true : false;
        //var_dump($article['favorite']);
        $getArticle['markers'] = '';
        $positionAll = M('position')->where(array('status'=>1,'article_id'=>$articleArr['id']))->find();
        $getPosition['latitude'] = $positionAll['latitude'];
        $getPosition['longitude'] = $positionAll['longitude'];
        $getArticle['markers'][] = $getPosition;
        if($getArticle['time'] > 0){
            $article[] = $getArticle;
        }
        //var_dump($getArticle['markers']);
      }

       //var_dump($article);

        $time = array('20:5', '10::6 2', '4:12: ', '45:: 5', '26:3:2 1', '41:20:1', '33:40', '56:: 9', '15::9 1', '');
        //mock时间
        // foreach ($article as $k => $v) {
        //     $article[$k]['time'] = $this->dateToTimeStamp($time[$k]);
        // }
        // var_dump($article);
        $orderBy = $type == 1 ? 'price' : 'time';
        $order = $type == 1 ? 'desc' : 'esc';
        $res = $this->quickSort($article, $orderBy, $order);
        return $res;
    }
    public function getArticleById($id, $articleType){
       $articleAll = M('article')->where(array('status'=>1,'article_type'=>$articleType))->select();
      //var_dump($uid);
      //var_dump($articleAll);
      $userAll = M('user')->where(array('status'=>1))->select();

      foreach ($articleAll as $key => $articleArr) {
        foreach ($userAll as $key => $user) {
          if($articleArr['user_id'] == $user['user_no']){
            $getArticle['author']['name'] = $user['name'];
            $getArticle['author']['pic'] = $user['pic'];
            $getArticle['author']['authrity'] = $user['authrity'];
            $getArticle['author']['login_last_time'] = $user['login_last_time'];
            $getArticle['image'] = $articleArr['file_id'];
            $getArticle['pages'] = $articleArr['comment_num'];
            $getArticle['id'] = $articleArr['id'];
            $getArticle['summary'] = $articleArr['content'];
            $getArticle['price'] = $articleArr['value'];
            $commentAll = M('comment') ->where(array('status'=>1,'article_id'=>$articleArr['id']))->order('create_time desc')->select();
            //var_dump($articleArr['id'].'11');
            $getArticle['tags']=array();
            foreach ($commentAll as $key => $commentArr) {
              // $commentFarCount = M('collect')->where(array('status'=>1,'article_id'=>$commentArr['id'],'collect_type'=>2))->count();
              $commentUser = M('user')->where(array('status'=>1,'user_no'=>$commentArr['user_id']))->find();
              $getComment['fav'] = M('collect') ->where(array('status'=>1,'article_id'=>$commentArr['id'],'user_id'=> I('server.HTTP_UID') ,'collect_type'=>2))->find() ? true : false;
              $getComment['name'] = $commentUser['name'];
              $getComment['pic'] = $commentUser['pic'];
              $getComment['title'] = $commentArr['content'];
              $getComment['id'] = $commentArr['id'];
              $getComment['count'] = $commentArr['like'];
              //var_dump($getComment);
              $getArticle['tags'][]=$getComment;
              //var_dump($getArticle['tags']);
            }
          }
        }
        if($articleType == 2){
            $getArticle['farCount'] = M('collect')->where(array('status'=>1,'article_id'=>$articleArr['id'],'collect_type'=>1))->count();
        }
        $getArticle['favorite'] = M('collect') ->where(array('status'=>1,'article_id'=>$articleArr['id'],'user_id'=> I('server.HTTP_UID') ,'collect_type'=>1))->find() ? true : false;
        //var_dump($article['favorite']);
        $getArticle['markers'] = '';
        $positionAll = M('position')->where(array('status'=>1,'article_id'=>$articleArr['id']))->find();
        $getPosition['latitude'] = $positionAll['latitude'];
        $getPosition['longitude'] = $positionAll['longitude'];
        $getArticle['markers'][] = $getPosition;
        $article[] = $getArticle;
        //var_dump($getArticle['markers']);
      }
        $articleDetail = array();
        //后面直接根据id从数据库查找，这里模拟先直接for循环查找
        foreach ($article as $v) {
            if($v['id'] == $id){
                $articleDetail = $v;
            }
        }
        return $articleDetail;
    }
    public function getScenery(){
      $sceneryAll = M('article')->where(array('status'=>1,'article_type'=>2))->order('deadline desc')->select();
      foreach ($sceneryAll as $key => $sceneryArr) {
        $getScenery['id'] = $sceneryArr['id'];
        $getScenery['image'] = '';
        $getScenery['image'][] = $sceneryArr['file_id'];
        $getScenery['comments'] = $sceneryArr['comment_num'];
        $getScenery['summary'] = $sceneryArr['content'];
        $positionAll = M('position')->where(array('status'=>1,'article_id'=>$sceneryArr['id']))->find();
        $getScenery['markers'] = '';
        $getPosition['latitude'] = $positionAll['latitude'];
        $getPosition['longitude'] = $positionAll['longitude'];
        $getPosition['name'] = $positionAll['name'];
        $getScenery['markers'][] = $getPosition;
        $getScenery['farCount'] = M('collect')->where(array('status'=>1,'article_id'=>$sceneryArr['id'],'collect_type'=>1))->count();
        $getScenery['fav'] = M('collect') ->where(array('status'=>1,'article_id'=>$sceneryArr['id'],'user_id'=> I('server.HTTP_UID'),'collect_type'=>1))->find() ? true : false;
        $scenery[] = $getScenery;

      }
      
        return  $scenery;
    }
    private function dateToTimeStamp($date, $type = 'future'){// s:m:h d/M/y $type返回过去还是未来
        $arr = explode(' ', $date);
        $arr[0] = explode(':', $arr[0]);
        $arr[1] = explode('/', $arr[1]);
        $arr = array_merge($arr[0], $arr[1]);
        $timeStamp= $arr[0]*1000 + $arr[1]*1000*60+ $arr[2]*1000*60*60 + $arr[3]*1000*60*60*24 + $arr[4]*1000*60*60*24*30 + $arr[5]*1000*60*60*24*30*12;
        $timeStamp = $type == 'last' ? -$timeStamp : $timeStamp;
        return $timeStamp;
    }
    private function shellInsetSort(&$arr, $key, $order = 'esc'){
        array_unshift($arr, array());
        $length = count($arr);
        $d = $length / 2;
        while($d >= 1){
            for($i = $d + 1;$i <= $length;$i++){
                $arr[0] = $arr[$i];
                $j = $i - $d;
                $judge  = $order == 'desc' || $order == 'DESC' ? $arr[0][$key] > $arr[$j][$key] : $arr[0][$key] < $arr[$j][$key];
                while($j > 0 && $judge){
                    $arr[$j + $d] = $arr[$j];
                    $j = $j - $d;
                    $judge  = $order == 'desc' || $order == 'DESC' ? $arr[0][$key] > $arr[$j][$key] : $arr[0][$key] < $arr[$j][$key];
                }
                $arr[$j + $d] = $arr[0];
            }
            $d = (int)($d / 2);
        }
        array_shift($arr);
    }
    private function quickSort($arr, $key, $order = 'esc'){
        $length = count($arr);
        if ($length <= 1) {
            return $arr;
        }
        $base = $arr[0];
        $left = array();  //小于$base
        $right = array();  //大于$base
        for ($i = 1; $i < $length ; $i++) {
            $judge = $order == 'desc' || $order == 'DESC' ? $base[$key] < $arr[$i][$key] : $base[$key] > $arr[$i][$key];
            if ($judge) {
                $left[] = $arr[$i];
            } else{
                $right[] = $arr[$i];
            }
        }
        $left = $this->quickSort($left, $key, $order);
        $right = $this->quickSort($right, $key, $order);
        return array_merge($left, array($base), $right);
    }
}