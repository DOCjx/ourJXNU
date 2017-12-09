<?php
namespace Api\Model;
use Think\Model;
class ArticleModel extends Model {
    public function articleList($type = 0, $uid){
      $articleAll = M('article')->where(array('status'=>1,'article_type'=>1))->select();
      //var_dump($uid);
      //var_dump($articleAll);
      $userAll = M('user')->where(array('status'=>1))->select();

      foreach ($articleAll as $key => $articleArr) {
        foreach ($userAll as $key => $user) {
          if($articleArr['user_id'] == $user['user_no']){
            $getArticle['author']['name'] = $user['name'];
            $getArticle['author']['pic'] = $user['user_img'];
            $getArticle['author']['authrity'] = $user['authrity'];
            $getArticle['image'] = $articleArr['file_id'];
            $getArticle['pages'] = $articleArr['comment_num'];
            $getArticle['id'] = $articleArr['id'];
            $getArticle['summary'] = $articleArr['content'];
            $getArticle['price'] = $articleArr['value'];
            $getArticle['time'] = $articleArr['deadline'];
            $commentAll = M('comment') ->where(array('status'=>1,'article_id'=>$articleArr['id']))->select();
            //var_dump($articleArr['id'].'11');
            $getArticle['tags']='';
            foreach ($commentAll as $key => $commentArr) {
              $commentFarCount = M('collect')->where(array('status'=>1,'article_id'=>$commentArr['id'],'collext_type'=>1))->count();
              $commentUser = M('user')->where(array('status'=>1,'user_no'=>$commentArr['user_id']))->find();
              $getComment['name'] = $commentUser['name'];
              $getComment['title'] = $commentArr['content'];
              $getComment['count'] = $commentFarCount;
              //var_dump($getComment);
              $getArticle['tags'][]=$getComment;
              //var_dump($getArticle['tags']);
            }
          }
        }
        $getArticle['favorite'] = M('collect') ->where(array('status'=>1,'article_id'=>$articleArr['id'],'user_id'=> $uid ,'collext_type'=>2))->find() ? true : false;
        //var_dump($article['favorite']);
        $getArticle['markers'] = '';
        $positionAll = M('position')->where(array('status'=>1,'article_id'=>$articleArr['id']))->find();
        $getPosition['latitude'] = $positionAll['latitude'];
        $getPosition['longitude'] = $positionAll['longitude'];
        $getArticle['markers'][] = $getPosition;
        $article[] = $getArticle;
        //var_dump($getArticle['markers']);
      }

       //var_dump($article);

        $time = array('20:5', '10::6 2', '4:12: ', '45:: 5', '26:3:2 1', '41:20:1', '33:40', '56:: 9', '15::9 1', '');
        //mock时间
        foreach ($article as $k => $v) {
            $article[$k]['time'] = $this->dateToTimeStamp($time[$k]);
        }
        // var_dump($article);
        $orderBy = $type == 1 ? 'price' : 'time';
        $order = $type == 1 ? 'desc' : 'esc';
        $res = $this->quickSort($article, $orderBy, $order);
        return $res;
    }
    public function getArticleById($id){
       $articleAll = M('article')->where(array('status'=>1,'article_type'=>1))->select();
      //var_dump($uid);
      //var_dump($articleAll);
      $userAll = M('user')->where(array('status'=>1))->select();

      foreach ($articleAll as $key => $articleArr) {
        foreach ($userAll as $key => $user) {
          if($articleArr['user_id'] == $user['user_no']){
            $getArticle['author']['name'] = $user['name'];
            $getArticle['author']['pic'] = $user['user_img'];
            $getArticle['author']['authrity'] = $user['authrity'];
            $getArticle['image'] = $articleArr['file_id'];
            $getArticle['pages'] = $articleArr['comment_num'];
            $getArticle['id'] = $articleArr['id'];
            $getArticle['summary'] = $articleArr['content'];
            $getArticle['price'] = $articleArr['value'];
            $getArticle['time'] = $articleArr['deadline'];
            $commentAll = M('comment') ->where(array('status'=>1,'article_id'=>$articleArr['id']))->select();
            //var_dump($articleArr['id'].'11');
            $getArticle['tags']='';
            foreach ($commentAll as $key => $commentArr) {
              $commentFarCount = M('collect')->where(array('status'=>1,'article_id'=>$commentArr['id'],'collext_type'=>1))->count();
              $commentUser = M('user')->where(array('status'=>1,'user_no'=>$commentArr['user_id']))->find();
              $getComment['fav'] = M('collect') ->where(array('status'=>1,'article_id'=>$commentArr['id'],'user_id'=> $commentUser['user_no'] ,'collext_type'=>1))->find() ? true : false;
              $getComment['name'] = $commentUser['name'];
              $getComment['pic'] = $commentUser['user_img'];
              $getComment['title'] = $commentArr['content'];
              $getComment['count'] = $commentFarCount;
              //var_dump($getComment);
              $getArticle['tags'][]=$getComment;
              //var_dump($getArticle['tags']);
            }
          }
        }
        $getArticle['favorite'] = M('collect') ->where(array('status'=>1,'article_id'=>$articleArr['id'],'user_id'=> $id ,'collext_type'=>2))->find() ? true : false;
        //var_dump($article['favorite']);
        $getArticle['markers'] = '';
        $positionAll = M('position')->where(array('status'=>1,'article_id'=>$articleArr['id']))->find();
        $getPosition['latitude'] = $positionAll['latitude'];
        $getPosition['longitude'] = $positionAll['longitude'];
        $getArticle['markers'][] = $getPosition;
        $article[] = $getArticle;
        //var_dump($getArticle['markers']);
      }
      //var_dump($getArticle['tags']);
      //var_dump($article);
        // $article = array(
        //     array(
        //       "author"=> array(
        //         "name"=>"潘绥铭",
        //         "pic"=>"http://ockglmdea.bkt.clouddn.com/1.jpg",
        //         "authrity"=>1
        //       ),
        //       "favorite"=>false,
        //       "tags"=> array(
        //         array(
        //           "count"=> 20,
        //           "fav"=>false,
        //           "name"=> "稻壳",
        //           "pic"=>"http://ockglmdea.bkt.clouddn.com/2.jpg",
        //           "title"=> "好像是我室友。。。"
        //         ),
        //         array(
        //           "count"=> 11,
        //           "fav"=>true,
        //           "name"=> "大虾",
        //           "pic"=>"http://ockglmdea.bkt.clouddn.com/4.jpg",
        //           "title"=> "楼上认错了吧！"
        //         ),
        //         array(
        //           "count"=> 7,
        //           "fav"=>false,
        //           "name"=> "小花生",
        //           "pic"=>"http://ockglmdea.bkt.clouddn.com/6.jpg",
        //           "title"=> "这不是我家茹茹吗"
        //         ),
        //         array(
        //           "count"=> 6,
        //           "fav"=>true,
        //           "name"=> "米蓝",
        //           "pic"=>"http://ockglmdea.bkt.clouddn.com/1.jpg",
        //           "title"=> "不认识"
        //         ),
        //         array(
        //           "count"=> 0,
        //           "fav"=>false,
        //           "name"=> "勺子",
        //           "pic"=>"http://ockglmdea.bkt.clouddn.com/3.jpg",
        //           "title"=> "似曾相识"
        //         ),
        //         array(
        //           "count"=> 3,
        //           "fav"=>false,
        //           "name"=> "国服第一李白",
        //           "pic"=>"http://ockglmdea.bkt.clouddn.com/9.jpg",
        //           "title"=> "是女神吗"
        //         )
        //       ),
        //       "image"=> "http://ockglmdea.bkt.clouddn.com/psb.jpg",
        //       "pages"=> "329",
        //       "id"=> "1023169",
        //       "summary"=> "校医院毕业生体检，一位同学遗失身份证，请若有人认识请告知失主。",
        //       "price"=> "17",
        //       markers=> array(array(
        //         latitude=> 28.681317,
        //         longitude=> 116.025667,
        //         name=> "校医院"
        //       )),
        //       "time"=>1492712609000
        //     ),
        //     array(
        //       "author"=> array(
        //         "name"=>"邵燕君",
        //         "pic"=>"http://ockglmdea.bkt.clouddn.com/2.jpg",
        //         "authrity"=>1
        //       ),
        //       "favorite"=>true,
        //       "tags"=> array(
        //         array(
        //           "count"=> 10,
        //           "fav"=>true,
        //           "name"=> "米蓝",
        //           "pic"=>"http://ockglmdea.bkt.clouddn.com/8.jpg",
        //           "title"=> "没从那经过"
        //         ),
        //         array(
        //           "count"=> 8,
        //           "fav"=>false,
        //           "name"=> "勺子",
        //           "pic"=>"http://ockglmdea.bkt.clouddn.com/3.jpg",
        //           "title"=> "心疼楼主三十秒。"
        //         ),
        //         array(
        //           "count"=> 7,
        //           "fav"=>true,
        //           "name"=> "国服第一李白",
        //           "pic"=>"http://ockglmdea.bkt.clouddn.com/9.jpg",
        //           "title"=> "是灰色的吗？"
        //         ),
        //         array(
        //           "count"=> 1,
        //           "fav"=>false,
        //           "name"=> "稻壳",
        //           "pic"=>"http://ockglmdea.bkt.clouddn.com/2.jpg",
        //           "title"=> "我室友，大家帮帮忙"
        //         ),
        //         array(
        //           "count"=> 4,
        //           "fav"=>false,
        //           "name"=> "大虾",
        //           "pic"=>"http://ockglmdea.bkt.clouddn.com/4.jpg",
        //           "title"=> "好吧，傻狍子"
        //         ),
        //         array(
        //           "count"=> 2,
        //           "fav"=>false,
        //           "name"=> "小花生",
        //           "pic"=>"http://ockglmdea.bkt.clouddn.com/6.jpg",
        //           "title"=> "这不是我家茹茹吗"
        //         )
        //       ),
        //       "image"=> "http://ockglmdea.bkt.clouddn.com/5.JPG",
        //       "pages"=> "335",
        //       "id"=> "1140896",
        //       "summary"=> "在这个位置遗失了一个小包包，对我意义重大，请好心人联系我。18334205426",
        //       "price"=> "17",
        //       markers=> array(array(
        //         latitude=> 28.677806,
        //         longitude=> 116.037447,
        //         name=> '音乐艺术广场'
        //       )),
        //       "time"=> 1492521200000,
        //     ),
        //     array(
        //       "author"=> array(
        //         "name"=>"陈昕",
        //         "pic"=>"http://ockglmdea.bkt.clouddn.com/3.jpg",
        //         "authrity"=>0
        //       ),
        //       "favorite"=>false,
        //       "tags"=> array(
        //         array(
        //           "count"=> 7,
        //           "fav"=>true,
        //           "name"=> "芈月",
        //           "pic"=>"http://ockglmdea.bkt.clouddn.com/7.jpg",
        //           "title"=> "小哥哥可以不"
        //         ),
        //         array(
        //           "count"=> 6,
        //           "fav"=>false,
        //           "name"=> "star",
        //           "pic"=>"http://ockglmdea.bkt.clouddn.com/6.jpg",
        //           "title"=> "我刚好有空哦！私聊私聊"
        //         ),
        //         array(
        //           "count"=> 2,
        //           "fav"=>true,
        //           "name"=> "hellobick",
        //           "pic"=>"http://ockglmdea.bkt.clouddn.com/8.jpg",
        //           "title"=> "我就在你隔壁"
        //         ),
        //         array(
        //           "count"=> 0,
        //           "fav"=>false,
        //           "name"=> "稻壳er",
        //           "pic"=>"http://ockglmdea.bkt.clouddn.com/10.jpg",
        //           "title"=> "这时候你需要一个男票"
        //         ),
        //         array(
        //           "count"=> 1,
        //           "fav"=>false,
        //           "name"=> "玉米棒",
        //           "pic"=>"http://ockglmdea.bkt.clouddn.com/7.jpg",
        //           "title"=> "可以"
        //         )
        //       ),
        //       "image"=> "http://ockglmdea.bkt.clouddn.com/1.JPG  ",
        //       "pages"=> "264",
        //       "id"=> "1140897",
        //       "summary"=> "哪位小姐姐可以帮忙带一杯奶茶吗？地点右下角，s230",
        //       "price"=> "14",
        //       markers=> array(array(
        //         latitude=> 28.682512,
        //         longitude=> 116.033585,
        //         name=> "12栋宿舍"
        //       )),
        //       "time"=> 1493568000000
        //     ),
        //     array(
        //       "author"=> array(
        //         "name"=>"王晓明",
        //         "pic"=>"http://ockglmdea.bkt.clouddn.com/4.jpg",
        //         "authrity"=>0
        //       ),
        //       "favorite"=>false,
        //       "tags"=> array(
        //         array(
        //           "count"=> 26,
        //           "fav"=>true,
        //           "name"=> "稻壳er",
        //           "pic"=>"http://ockglmdea.bkt.clouddn.com/10.jpg",
        //           "title"=> "找人陪呗"
        //         ),
        //         array(
        //           "count"=> 17,
        //           "fav"=>true,
        //           "name"=> "玉米棒",
        //           "pic"=>"http://ockglmdea.bkt.clouddn.com/7.jpg",
        //           "title"=> "多和身边的人沟通"
        //         )
        //       ),
        //       "image"=> "",
        //       "pages"=> "394",
        //       "id"=> "1227079",
        //       "summary"=> "最近好难过怎么办呀。。。。",
        //       "price"=> "18",
        //       markers=> array(),
        //     ),
        //     array(
        //       "author"=> array(
        //         "name"=>"包亚明",
        //         "pic"=>"http://ockglmdea.bkt.clouddn.com/5.JPG",
        //         "authrity"=>1
        //       ),
        //       "favorite"=>false,
        //       "tags"=> array(
        //         array(
        //           "count"=> 30,
        //           "fav"=>false,
        //           "name"=> "明月",
        //           "pic"=>"http://ockglmdea.bkt.clouddn.com/4.jpg",
        //           "title"=> "我就是你的小姐姐，私聊我嘿嘿"
        //         ),
        //         array(
        //           "count"=> 18,
        //           "fav"=>true,
        //           "name"=> "虾米",
        //           "pic"=>"http://ockglmdea.bkt.clouddn.com/6.jpg",
        //           "title"=> "有人找你o，明月同学"
        //         ),
        //         array(
        //           "count"=> 12,
        //           "fav"=>false,
        //           "name"=> "mthink",
        //           "pic"=>"http://ockglmdea.bkt.clouddn.com/2.jpg",
        //           "title"=> "楼主可以的"
        //         )
        //       ),
        //       "image"=> "http://ockglmdea.bkt.clouddn.com/2.JPG",
        //       "pages"=> "269",
        //       "id"=> "1313911",
        //       "summary"=> "拿个小姐姐画得不错，求联系方式",
        //       "price"=> "14",
        //       markers=> array(array(
        //         latitude=> 28.682362,
        //         longitude=> 116.036139,
        //         name=> '贝壳体育场'
        //       )),
        //     ),
        //     array(
        //       "author"=> array(
        //         "name"=>"南帆",
        //         "pic"=>"http://ockglmdea.bkt.clouddn.com/6.jpg",
        //         "authrity"=>0
        //       ),
        //       "favorite"=>true,
        //       "tags"=> array(
        //         array(
        //           "count"=> 9,
        //           "fav"=>false,
        //           "name"=> "布什x",
        //           "pic"=>"http://ockglmdea.bkt.clouddn.com/.jpg",
        //           "title"=> "感觉有点危险，毕竟好久没有上英语课了"
        //         ),
        //         array(
        //           "count"=> 5,
        //           "fav"=>true,
        //           "name"=> "筷子",
        //           "pic"=>"http://ockglmdea.bkt.clouddn.com/.jpg",
        //           "title"=> "急啥，人有多大胆，复习有多晚。反正我不怕，改革就是平时分多了而已"
        //         ),
        //         array(
        //           "count"=> 4,
        //           "fav"=>true,
        //           "name"=> "包亚明",
        //           "pic"=>"http://ockglmdea.bkt.clouddn.com/8.jpg",
        //           "title"=> "楼上正解"
        //         )
        //       ),
        //       "image"=> "",
        //       "pages"=> "266",
        //       "id"=> "1314022",
        //       "summary"=> "英语改革大家有什么好的计划吗？",
        //       "price"=> "14",
        //       markers=> array(),      ),
        //     array(
        //       "author"=> array(
        //         "name"=>"陈映芳",
        //         "pic"=>"http://ockglmdea.bkt.clouddn.com/7.jpg",
        //         "authrity"=>1
        //       ),
        //       "favorite"=>false,
        //       "tags"=> array(
        //         array(
        //           "count"=> 25,
        //           "fav"=>false,
        //           "name"=> "爆米花",
        //           "pic"=>"http://ockglmdea.bkt.clouddn.com/9.jpg",
        //           "title"=> "我也从旁边经过"
        //         )
        //       ),
        //       "image"=> "http://ockglmdea.bkt.clouddn.com/3.JPG",
        //       "pages"=> "261",
        //       "id"=> "1325385",
        //       "summary"=> "跳舞的黑衣服女生求介绍",
        //       "price"=> "40",
        //       markers=> array(),
        //     ),
        //     array(
        //       "author"=> array(
        //         "name"=>"戴锦华编",
        //         "pic"=>"http://ockglmdea.bkt.clouddn.com/9.jpg",
        //         "authrity"=>1
        //       ),
        //       "favorite"=>false,
        //       "tags"=> array(
        //         array(
        //           "count"=> 39,
        //           "fav"=>true,
        //           "name"=> "戴锦华",
        //           "pic"=>"http://ockglmdea.bkt.clouddn.com/7.jpg",
        //           "title"=> "首页第二个资源，你值得拥有"
        //         )
        //       ),
        //       "image"=> "",
        //       "pages"=> "231",
        //       "id"=> "1556261",
        //       "summary"=> "谁可以帮我复习高数吗",
        //       "price"=> "16",
        //       markers=> array(),
        //     ),
        //     array(
        //         "author"=> array(
        //             "name"=>"宋伟杰",
        //             "pic"=>"http://ockglmdea.bkt.clouddn.com/11.jpg",
        //             "authrity"=>0
        //         ),
        //         "favorite"=>true,
        //         "tags"=> array(
        //             array(
        //                 "count"=> 8,
        //                 "fav"=>false,
        //                 "name"=> "金庸",
        //                 "pic"=>"http://ockglmdea.bkt.clouddn.com/1.jpg",
        //                 "title"=> "感觉大冰来我们学校好多次了，，，"
        //             ),
        //             array(
        //                 "count"=> 8,
        //                 "fav"=>false,
        //                 "name"=> "花生",
        //                 "pic"=>"http://ockglmdea.bkt.clouddn.com/4.jpg",
        //                 "title"=> "挺喜欢他的书"
        //             ),
        //             array(
        //                 "count"=> 3,
        //                 "fav"=>false,
        //                 "name"=> "宋伟杰",
        //                 "pic"=>"http://ockglmdea.bkt.clouddn.com/6.jpg",
        //                 "title"=> "可以啊"
        //             )
        //         ),
        //         "image"=> "http://ockglmdea.bkt.clouddn.com/6.JPG",
        //         "pages"=> "252",
        //         "id"=> "1661409",
        //         "summary"=> "谁有《阿弥陀佛，么么哒》吗？咱们换着看",
        //         "price"=> "13",
        //         markers=> array(array(
        //           latitude=> 28.681806,
        //           longitude=> 116.032104,
        //           name=> '图文信息中心'
        //         )),
        //     )
        // );
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
      $sceneryAll = M('article')->where(array('status'=>1,'article_type'=>2))->select();
      //var_dump($sceneryAll);
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
        $getScenery['fav'] = M('collect') ->where(array('status'=>1,'article_id'=>$sceneryArr['id'],'user_id'=> $uid ,'collext_type'=>3))->find() ? true : false;
        $scenery[] = $getScenery;

      }
      //var_dump($scenery);
      //var_dump($sceneryAll);
        // $scenery = array(
        //     array(
        //         "id"=> 1,
        //         "image"=> array(
        //             "http://ockglmdea.bkt.clouddn.com/IMG_20151211_204535.jpg",
        //         ),
        //         "comments"=> 23,
        //         "fav"=> true,
        //         "summary"=> "夜里太烦，不知不觉走到了正大坊,以前都是匆匆经过，从没注意到它，现在的正大坊这么安静这么祥和。",
        //         "markers"=> array(array(
        //             "latitude"=> 28.675039,
        //             "longitude"=> 116.032362,
        //             "name"=> "正大坊"
        //         ))
        //     ),
        //     array(
        //         "id"=> 2,
        //         "image"=> array(
        //             "http://ockglmdea.bkt.clouddn.com/IMG_20151130_172030.jpg",
        //         ),
        //         "comments"=> 52,
        //         "fav"=> false,
        //         "summary"=> "大学这么几年经常听到镜湖的天鹅被塑料袋缠住了嘴，为啥它们那么喜欢吃塑料呢，，，，",
        //         "markers"=> array(array(
        //             "latitude"=> 28.679208,
        //             "longitude"=> 116.032244,
        //             "name"=> "镜湖"
        //         ))
        //     ),
        //     array(
        //         "id"=> 3,
        //         "image"=> array(
        //             "http://ockglmdea.bkt.clouddn.com/IMG_20150913_065449.jpg",
        //         ),
        //         "comments"=> 15,
        //         "fav"=> false,
        //         "summary"=> "来到师大很意外的是，我们学校居然有小鹿",
        //         "markers"=> array(array(
        //             "latitude"=> 28.674766,
        //             "longitude"=> 116.036439,
        //             "name"=> "鹿园"
        //         ))
        //     ),
        // );
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