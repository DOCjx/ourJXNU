<?php
namespace Admin\Model;
use Common\Model\HyAllModel;

/**
 * 文章分类管理模型
 *
 * @author
 */
class ArticlesModel extends HyAllModel {

    /**
     * @overrides
     */
    protected function initTableName(){
        return 'article';
    }

    /**
     * @overrides
     */
    protected function initInfoOptions() {
        return array (
            'title' => '动态与文章内容管理',
            'subtitle' => '管理所有动态与文章',
            'pagetitle' => '动态与文章内容信息'
        );
    }
    /**
     * @overrides
     */
    protected function initSqlOptions() {

        return array (
            // 'associate' => array (
           
           
            //  ),
            // 'where' => array (
            //     'pid'=>array('neq',0),
            //     'status'=>array('eq',1)
    
            // )
        );
    }
    /**
     * @overrides
     */
    protected function initPageOptions() {
        return array (
            'checkbox'	=> true,
            'actions' 	=> array (
                'delete' => array (
                    'title' => '删除',
                    // 是否需要确认
                    'confirm' => true
                ),
                'disable' => array (
                    'title' => '禁用',
                    // 是否需要确认
                    'confirm' => true
                ),
                'enable' => array (
                    'title' => '启用',
                    // 是否需要确认
                    'confirm' => true
                ),
            ),
            'buttons'=>array(
                   

            ),
            
            'formSize'=>'full',
        );
    }
    /**
     * @overrides
     */
    protected function initFieldsOptions() {
        return array (
            'see' => array (
                        'title' => ' ',
                        'list' => array (
                            'callback'=>array('tplReplace',C('TPL_DETAIL_BTN')),
                        ),
            ),
            'content' => array (
                        'title' => '内容',
                        'list' => array (
                            'order' => 'CONVERT(`name` USING gbk)',
                            'callback'=>array('get_article_content'),
                        ),
            ),
            'user_id'=>array(
                    'title'=>'作者',
                    'list'=>array(
                       'callback'=>array('get_user_name'),
                    ),
            ),
            'comment_num'=>array(
                    'title'=>'评论数量',
                    'list'=>array(
                        'callback'=>array('value','{:comment_num}')
                    ),
            ),
            'value'=>array(
                    'title'=>'积分价值',
                    'list'=>array(
                       'callback'=>array('value', '{:value}'),
                    ),
            ),
            'deadline' => array (
                'list'=>array(
                    'title'=>'截止时间',
                    'callback'=>array('value', '{:deadline}')
                ),
                
            ),   
             'article_type'=>array(
                'title'=>'类型',
                'list'=>array( 
                    /*一定是在某个位置调用了这个函数*/
                    'callback'=>array('get_article_type'),
                    'order'=>false,
                    'search' => array (
                        'type'=>'select', 
                     ) 
                ),
            ),
            'status'=>array(
                    'title'=>'状态',
                    'list'=>array(
                        'callback'=>array('status'),
                        'search' => array (
                            'type'=>'select', 
                         ) 
                    ),
            ),
                
                
                
        );
    }

    protected function callback_get_article_content($content){
        $article_content = $this->where(array('content'=>$content))->getField('content');
        if(strlen($article_content) > 20){
            $article_content =  mb_substr($article_content,0,20,'utf-8').'.....';
            return $article_content;
        }
        return $article_content;
    }

    protected function callback_downfile($file_id,$file_name){
        if(!$file_id) return '无';
        return '<a href="'.file_down_url($file_id).'" title="'.$file_name.'" class="btn btn-xs green"><i class="fa fa-download"></i> 下载附件</a>';
    }
    protected function getOptions_title(){
        return $this->where(array(
            'status'=>1,

        ))->getField('id,title');
    }
    

    protected function callback_dateToTime($time){
        if(!$time){
            return time();
        }
        else{
            return strtotime($time);
        }
    }
    protected function callback_get_article_type($no){
        if($no==1) return '<span style="color: green;">动态消息</span>';
        if($no==2) return '<span style="color: green;">风景文章</span>';
    }
    protected function callback_get_user_name($user_id){
        return M('user')->where(array('user_no'=>$user_id))->getField('name');
    }
   protected function detail($pk){
        $associate=array(

           
        );
        $where = array('id'=>$pk);
        $arr1 = $this->associate(array('frame_file|file_id|id|savepath,savename,id||left'))->where($where)->find();
        $arr=$this->where(array('id'=>$pk))->find();
        //var_dump($arr['etitle']);
        return array('table'=>array(

            'base'=>array(
                'title'=>'文章内容信息',
                'icon'=>'fa-list-alt',
                'style'=>'green',
                'cols'=>'2,12',
                'value'=>array(
          
                    ''=>val_decrypt($arr['content']),

                )
            )



        ),
    
        );

    }

   protected function getOptions_article_type(){
        return array(
            1=>'动态消息',
            2=>'风景文章'
        );
    }
    protected function getOptions_status(){
        return array(
            1=>'启用',
            0=>'禁用'
        );
    }

}