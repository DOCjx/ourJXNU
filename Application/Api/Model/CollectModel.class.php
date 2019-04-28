<?php
namespace Api\Model;
use Think\Model;
class CollectModel extends Model {
    public function addCollect($data) {
    	$info = $data;
    	$info['create_time'] =  date("Y-m-d H:i:s", time());
        $this->create($info);
        return $this->add();
    }
    public function modCollect($collect, $likeStatus) {
    	$info = $collect;
        return $this->where(
        	array(
        		'article_id'=>array('eq', $info['article_id']),
        		'user_id'=>array('eq', $info['user_id']),
        		'collect_type'=>array('eq', $info['collect_type'])
        	)
        )->save(array(
            'status' => $likeStatus == "0" ? 1 : 0,
            'create_time'=> date("Y-m-d H:i:s", time())
        ));
    }
    public function getAllCollect(){
    	return $this
            ->where(
                array(
                    'status'=> array('eq', 1)
                )
            )
            ->order('create_time desc')
            ->select();;
    }
}