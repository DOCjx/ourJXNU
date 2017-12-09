<?php
namespace Api\Model;
use Think\Model;
class UserModel extends Model {
    public function getUsers(){
        $users = array(
            array(
                "count"=> 20,
                "fav"=>false,
                "name"=> "稻壳",
                "pic"=>"http://ockglmdea.bkt.clouddn.com/2.jpg",
                "title"=> "好像是我室友。。。"
            ),
            array(
                "count"=> 11,
                "fav"=>true,
                "name"=> "大虾",
                "pic"=>"http://ockglmdea.bkt.clouddn.com/4.jpg",
                "title"=> "楼上认错了吧！"
            ),
            array(
                "count"=> 7,
                "fav"=>false,
                "name"=> "小花生",
                "pic"=>"http://ockglmdea.bkt.clouddn.com/6.jpg",
                "title"=> "这不是我家茹茹吗"
            ),
            array(
                "count"=> 6,
                "fav"=>true,
                "name"=> "米蓝",
                "pic"=>"http://ockglmdea.bkt.clouddn.com/1.jpg",
                "title"=> "不认识"
            ),
            array(
                "count"=> 0,
                "fav"=>false,
                "name"=> "勺子",
                "pic"=>"http://ockglmdea.bkt.clouddn.com/3.jpg",
                "title"=> "似曾相识"
            ),
            array(
                "count"=> 3,
                "fav"=>false,
                "name"=> "国服第一李白",
                "pic"=>"http://ockglmdea.bkt.clouddn.com/9.jpg",
                "title"=> "是女神吗"
            )
        );
        return $users;
    }
    public function userRegiest($userInfo){
        $data['user_img'] = $userInfo['avatarUrl'];
        $data['name'] = $userInfo['nickName'];
        $data['user_no'] = array_slice(explode('/', $userInfo['avatarUrl']), -2, 1)[0];
        $this->create($data);
        $check = $this->where(array('user_no'=>array('eq', $data['user_no']), 'status'=> array('eq', 1)))->find();
        if($check) {
            return false;
        }else{
            return $this->add();
        }
    }
}