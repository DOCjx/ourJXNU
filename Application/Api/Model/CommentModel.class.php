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
}