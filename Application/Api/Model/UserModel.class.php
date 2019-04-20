<?php
namespace Api\Model;
use Think\Model;
class UserModel extends Model {
    public function getUsers(){
        $users = $this->where(array('status'=> array('eq', 1)))->select();
        return $users;
    }
    public function searchUsers($value){
        $users = $this
            ->where(
                array(
                    'status'=> array('eq', 1),
                    'name'=> array('like', '%'.$value.'%')
                )
            )
            ->select();
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