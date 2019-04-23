<?php
namespace Api\Model;
use Think\Model;
class CollegeModel extends Model {
    public function getCollege($pid = 0) {
        return $this->where(array('status'=>array('eq',1), 'pid'=>array('eq',$pid)))->select();
    }
    public function getAllCollege() {
        $colleges = $this->where(array('status'=>array('eq',1)))->select();
        $category = array();
        foreach ($colleges as $key => $college) {
        	if($college['pid'] == 0) {
        		$college['children'] = array();
        		foreach ($colleges as $key => $item) {
        			if($item['pid'] == $college['pid']){
        				array_push($college['children'], $item);
        				array_push($category, $college);
        			}
        		}
        	}
        }
        return $category;
    }
}