<?php
namespace Api\Model;
use Think\Model;
class UserModel extends Model {
    public function getUsers(){
        // $cdnUrl = 'http://localwechatstatic.wvwvw.cn/';
        // $users = array(
        //     array(
        //         "count"=> 20,
        //         "fav"=>false,
        //         "name"=> "稻壳",
        //         "pic"=> $cdnUrl."2.jpg",
        //         "title"=> "好像是我室友。。。"
        //     ),
        //     array(
        //         "count"=> 11,
        //         "fav"=>true,
        //         "name"=> "大虾",
        //         "pic"=> $cdnUrl."4.jpg",
        //         "title"=> "楼上认错了吧！"
        //     ),
        //     array(
        //         "count"=> 7,
        //         "fav"=>false,
        //         "name"=> "小花生",
        //         "pic"=> $cdnUrl."6.jpg",
        //         "title"=> "这不是我家茹茹吗"
        //     ),
        //     array(
        //         "count"=> 6,
        //         "fav"=>true,
        //         "name"=> "米蓝",
        //         "pic"=> $cdnUrl."1.jpg",
        //         "title"=> "不认识"
        //     ),
        //     array(
        //         "count"=> 0,
        //         "fav"=>false,
        //         "name"=> "勺子",
        //         "pic"=> $cdnUrl."3.jpg",
        //         "title"=> "似曾相识"
        //     ),
        //     array(
        //         "count"=> 3,
        //         "fav"=>false,
        //         "name"=> "国服第一李白",
        //         "pic"=> $cdnUrl."9.jpg",
        //         "title"=> "是女神吗"
        //     )
        // );
        $users = $this->where(array('status'=> array('eq', 1)))->select();
        return $users;
    }
    public function userRegiest($userInfo){
        $data['pic'] = $userInfo['avatarUrl'];
        $data['name'] = $userInfo['nickName'];
        $data['user_no'] =  $userInfo['openid'];
        $data['login_last_time'] = time();
        $check = $this->where(array('user_no'=>array('eq', $data['user_no']), 'status'=> array('eq', 1)))->find();
        if($check!=null) {
            return $this->where(array('user_no'=>array('eq', $data['user_no']), 'status'=> array('eq', 1)))->save($data);
        }else{
            $this->create($data);
            return $this->add();
        }
    }
}