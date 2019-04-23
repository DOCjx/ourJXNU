<?php
namespace Api\Model;
use Think\Model;
class CommentModel extends Model {
    public function addComment($data) {
    	$info = $data;
    	$info['create_time'] =  date("Y-m-d H:i:s", time());
        $this->create($info);
        return $this->add();
    }
    public function modComment($comment, $times) {
        $like = $this->where(array('id'=>array('eq', $comment['article_id']), 'status'=> array('eq', 1)))->find()['like'];
        return $this->where(array('id'=>array('eq', $comment['article_id']), 'status'=> array('eq', 1)))->save(array(
            'like' => $like + $times
        ));
    }
}