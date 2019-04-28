<?php
namespace Api\Model;
use Think\Model;
class UserModel extends Model {
    public function checkPass($users){
        $infos = $users;
        $count = 0;
        unset($infos['user_id']);
        foreach ($infos as $key => $info) {
            $modUser = $this->where(array('user_no'=>array('eq', $info), 'status'=> array('eq', 1)))->save(array('authrity'=> 1));
            $count += $modUser;
        }
        return $count;
    }
    public function checkRoles($users){
        $infos = $users;
        $roles = $infos['roles'];
        unset($infos['user_id']);
        unset($infos['roles']);
        $count = 0;
        foreach ($infos as $key => $info) {
            $modUser = $this->where(array('user_no'=>array('eq', $info), 'status'=> array('eq', 1)))->save(array('roles'=>  $roles));
            $count += $modUser;
        }
        return $infos;
    }
    public function modUser($uid, $user){
        $user_no = $uid;
        $info = $user;
        return $this->where(array('user_no'=>array('eq', $user_no), 'status'=> array('eq', 1)))->save($info);
    }
    public function getUsers(){
        $users = $this->where(array('status'=> array('eq', 1)))->select();
        return $users;
    }
    public function getAuthUser(){
        $users = $this->where(array('status'=> array('eq', 1), 'authrity'=>  array('eq', 0), 'student_no'=> array('exp','is not null')))->select();
        return $users;
    }
    public function getAdminUser(){
        $users = $this->where(array('status'=> array('eq', 1), 'roles'=>  array('eq', 31)))->select();
        return $users;
    }
    public function getUser($user_no){
        $users = $this->where(array('user_no'=> array('eq', $user_no)))->find();
        return $users;
    }
    public function searchUserByStudentNo($student_no){
        $users = $this->where(array('student_no'=> array('eq', $student_no), 'roles'=> array('neq', 31)))->find();
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