<?php
namespace Api\Model;
use Think\Model;
class CollegeModel extends Model {
    public function getCollege() {
        return $this->where(array('status'=>array('eq',1), 'pid'=>array('eq',0)))->select();
    }
    public function getAllCollege() {
        return $this->where(array('status'=>array('eq',1)))->select();
    }
}