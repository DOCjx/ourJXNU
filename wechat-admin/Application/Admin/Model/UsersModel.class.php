<?php
namespace Admin\Model;
use Common\Model\HyAllModel;

/**
 * 文章分类管理模型
 *
 * @author
 */
class UsersModel extends HyAllModel {

    /**
     * @overrides
     */
    protected function initTableName(){
        return 'user';
    }

    /**
     * @overrides
     */
    protected function initInfoOptions() {
        return array (
            'title' => '用户管理',
            'subtitle' => '管理用户',
            'pagetitle' => '用户信息'
        );
    }
    /**
     * @overrides
     */
    protected function initSqlOptions() {

        return array (
            'associate' => array (

             ),
            'where' => array (
                'roles'=>array('neq',31),
            )
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
                'edit' => array (
                    'title' => '编辑用户积分',
                    // 最大限制1
                    'max' => 1
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
            'name' => array (
                        'title' => '昵称',
                        'list' => array (
                            'callback'=>array('value','{:name}'),
                        ),
                        'form' => array (
                            'type'=>'disableedit'
                        ) 
            ),
            'user_no' => array (
                        'title' => '账号',
                        'list' => array (
                            'callback'=>array('value','{:user_no}'),
                        ),
                         'form' => array (
                            'type'=>'disableedit'
                        ) 
            ),
            'integral'=>array(
                    'title'=>'积分',
                    'list'=>array(
                       'callback'=>array('value','{:integral}'),
                    ),
                    'form' => array (
                                'validate' => array (
                                        'required' => true,
                                )
                        ) 
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

    protected function callback_content(){
        return I('content','','');
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
   protected function detail($pk){
        $associate=array(

           
        );
        $where = array('id'=>$pk);
        // $arr1 = $this->associate(array('frame_file|file_id|id|savepath,savename,id||left'))->where($where)->find();
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

    protected function getOptions_status(){
        return array(
            1=>'启用',
            0=>'禁用'
        );
    }

}