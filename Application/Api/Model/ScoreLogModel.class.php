<?php
namespace Api\Model;
use Think\Model;
class ScoreLogModel extends Model {
	public function addScoreLog($data) {
    	$info = $data;
        return $this->addAll($info);
    }
    public function getScoreLog($lastMsgTime) {
    	$uid = I('server.HTTP_UID');
    	$condition[] = $uid;
    	return $this->where(
        	array(
        		'user_id' => array('eq', $uid),
        		'create_time' => array('egt', $lastMsgTime)
        	)
        )
        ->order('create_time desc')
        ->select();
    }
}