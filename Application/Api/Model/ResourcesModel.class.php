<?php
namespace Api\Model;
use Think\Model;
Vendor('QiniuSDK.autoload');  //七牛入口文件引入
use Qiniu\Auth;
class ResourcesModel extends Model {
    public function addResource($data) {
        $info = $data;
        $info['user_id'] = $info['id'];
        unset($info['id']);
        $this->create($info);
        return $this->add();
    }
    public function getUploadToken() {
        $accessKey = 'oRjO5qMHsINS0VxbPlIIUG4tG_pb2pMT2kHqVPBP';
        $secretKey = 'azAtpSRNfj69HdKtJURyGGGd7epDG2EE_1TIOIjy';
        $bucket = 'docdoc';
        $auth = new Auth($accessKey, $secretKey);
        $token = $auth->uploadToken($bucket);
        return $token;
    }
    public function getResourcesRank() {
        $res = $this
            ->where(
                array(
                    'status'=> array('eq', 1)
                )
            )
            ->order('downloads desc')
            ->limit(10)
            ->select();
        return $res;
    }
    public function searchResources ($value) {
        $res = $this
            ->where(
                array(
                    'status'=> array('eq', 1),
                    'resource_name'=> array('like', '%'.$value.'%')
                )
            )
            ->select();
        return $res;
    }
    public function getResourcesCategory(){
 
    
        $uid = I('server.HTTP_UID');
        // $Model = new  Model();
        // $sql = "select type,count('type') from jxnu_downloads_log where user_id=".$userid." GROUP BY type order by count('type') desc";
        // $log =  $Model->query($sql);
        // $max = $log[0]['type'];
        $college_id = M('user')->where(array('user_no'=>$uid,'status'=>1))->find();
        
       //  $resource = M('resources')->where(array('category_id'=>$max))->field('id,uri,resource_name,resource_type')->select();
       // for($i=0;$i<count($resource);$i++){
       //    $resource[$i]['title']=$resource[$i]['resource_name'];
       //    $resource[$i]['type']=$resource[$i]['resource_type'];
       //    unset($resource[$i]['resource_name']);
       //    unset($resource[$i]['resource_type']);
       // }
        $arr = M('college')->where(array('status'=>array('eq',1)))->select();
        foreach ($arr as $k => $v) {
            if($v['id']==$college_id['college_id']||$v['id']==1000||$v['id']==2000){
                foreach($arr as $k1 => $v1){ 
                    if($v1['pid'] == $v['id']){
                        $v['navC'][] = $v1;
                    }
                } 
              $arr1[] = $v; 
            }
        }
        
        for($i=0;$i<count($arr1);$i++){
            for($j=0;$j<count($arr1[$i]['navC']);$j++){
                $arr1[$i]['navC'][$j]['title'] = $arr1[$i]['navC'][$j]['name'];
                $arr1[$i]['navC'][$j]['titleId'] = $arr1[$i]['navC'][$j]['id'];
            }
            $resourcesCategory[$i]= array(
                "nav"=> $arr1[$i]['name'],
                "open"=> $arr1[$i]['switch']==1?true:false,
                "navId"=> $arr1[$i]['id'],
                'navC'=>$arr1[$i]['navC'],
            );
        }
        $likeTags = M('resources')->where(array('category_id'=>$college_id['college_id']))->field('id,uri,resource_name,resource_type')->order('downloads desc')->limit(5)->select();
        $resourcesCategory1 =  array(
            "nav"=> '猜你喜欢',
            "navId"=> '0',
            "open"=> true,
            "tags"=> $likeTags
        ); 
        array_unshift($resourcesCategory, $resourcesCategory1);

        return $resourcesCategory;
    }
    public function getResourcesDetail($navId,$titleId){
      $user_id =1;
      $resource = M('resources')->where(array('category_id'=>$navId,'college_id'=>$titleId))->select();
      for($i=0;$i<count($resource);$i++){
          $resource[$i]['title']=$resource[$i]['resource_name'];
          $resource[$i]['type']=$resource[$i]['resource_type'];
          $resource[$i]['userId']=$resource[$i]['user_id'];
          if($resource[$i]['fav']==1){
            $resource[$i]['fav']=true;
          }else{
            $resource[$i]['fav']=false;
          }
          unset($resource[$i]['resource_name']);
          unset($resource[$i]['resource_type']);
          unset($resource[$i]['user_id']);
       }

        $resourcesDetails = array(
            "navId"=>$navId,
            "titleId"=>$titleId,
            'detail'=>$resource
      );

      
     
     
      // for($i=0;$i<count($resource);$i++){
      //   $resourcesDetails[$i]=
      //   array(  
      //       "navId"=>$navId,
      //       "titleId"=>$titleId,
      //       "detail"=>array(
      //         array(    
      //         'id'=>$resource[$i]['id'],
      //         "title"=>$resource[$i]['resource_name'],
      //         "fav"=>$resource[$i]['fav'],
      //         "userId"=>$user_id,
      //         "type"=>$resource[$i]['resource_type']
      //         )
          
      //       )
      //     );
      // }
   
        // $resourcesDetails = array(
        //     array(
        //         "navId"=>1,
        //         "titleId"=>23,
        //         "detail"=>array(
        //             array(
        //                 "id"=>1,
        //                 "title"=>"数据结构15级试卷A",
        //                 "fav"=>false,
        //                 "userId"=>1,
        //                 "type"=>1
        //             ),array(
        //                 "id"=>2,
        //                 "title"=>"数据结构15级试卷B",
        //                 "fav"=>true,
        //                 "userId"=>2,
        //                 "type"=>4
        //             )
        //         )
        //     ),
        //     array(
        //         "navId"=>1,
        //         "titleId"=>3,
        //         "detail"=>array(
        //             array(
        //                 "id"=>1,
        //                 "title"=>"计算机组成原理实验仪器介绍及实验报告",
        //                 "fav"=>false,
        //                 "userId"=>3,
        //                 "type"=>1
        //             )
        //         )
        //     ),
        //     array(
        //         "navId"=>1,
        //         "titleId"=>4,
        //         "detail"=>array(
        //             array(
        //                 "id"=>1,
        //                 "title"=>"计算机网络数据统计",
        //                 "fav"=>true,
        //                 "userId"=>4,
        //                 "type"=>3
        //             )
        //         )
        //     ),
        //     array(
        //         "navId"=>1,
        //         "titleId"=>2,
        //         "detail"=>array(
        //             array(
        //                 "id"=>1,
        //                 "title"=>"c语言从入门到放弃",
        //                 "fav"=>false,
        //                 "userId"=>5,
        //                 "type"=>4
        //             )
        //         )
        //     )
        // );
    
      return array($resourcesDetails);
    }
}