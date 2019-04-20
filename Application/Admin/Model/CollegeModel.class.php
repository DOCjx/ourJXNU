<?php
namespace Admin\Model;
use Common\Model\HyAllModel;

/**
 * 文章分类管理模型
 *
 * @author
 */
class CollegeModel extends HyAllModel {

    /**
     * @overrides
     */
    protected function initTableName(){
        return 'college';
    }

    /**
     * @overrides
     */
    protected function initInfoOptions(){
        return array(
            'title'=>'学院与专业管理',
            'subtitle'=>'对学院与专业进行设置'
        );
    }
    /**
     * @overrides
     */
    protected function initSqlOptions(){
        return array(
            'associate' => array (
           
             ),
            'where'=>array(
                'pid'=>array('neq',0),
                'status'=>array('eq',1)
            ),

        );
    }
    /**
     * @overrides
     */
    protected function initPageOptions(){
        return array(
            'deleteType'=>  'status|9',         //逻辑删除; 默认-物理删除:delete
            'action'=>array(
                'edit'=>array(
                    'title'=>'编辑',
                    'max'=>1
                ),
                'delete'=>array(
                    'title'=>'删除',
                    'confirm'=>true
                )
            ),
            /*新增按钮*/ 
            'buttons'=>array(
                'add'=>array(
                    'title'=>'新增学院或专业',
                    'icon'=>'fa-plus'
                ),
            ),
            /*出现在add按钮和edit按钮的提示块*/
            'tips'=>array(
                'add'=>'栏目设置!',
                'edit'=>'请按选择的语言进行栏目设置!'
            ),
            /*表单弹窗尺寸*/
            'formSize'=>'large'
        );
    }
    /**
     * @overrides
     */
    protected function initFieldsOptions() {
        return array (
         
            'pid'=>array(
                'title'=>'学院名',
                /*列表显示配置*/
                'list'=>array(
                    /*字段值回调方法：*/
                    'callback'=>array('get_pid_name'),
                    /*检索配置：*/
                    'search'=>array(
                        'type'=>'select',
                    )
                ),
                /* 表单显示配置*/
                'form'=>array(
                    /*字段表现类型*/
                    'type'=>'select',
                    /* 如果type为select，则可选配置*/
                    'select'=>array(
                        /* 是否支持新增其他选项*/
                        'addon'=>true,
                        /*提示信息：*/
                        'first'=>'请选择以下学院..'
                    ),
                    /* 表单验证规则（jQuery Validation Rules）：*/
                    'validate'=>array(
                        'required'=>true,
                    ),
                    /*表单字段值回调方法：*/
                    'callback'=>array('get_fir_list','{:id}','{#}'),
                    'tip'=>'如要添加学院，下拉框拖动至底部另行补充，无需填写专业'
                )
            ),
            
            'name'=>array(
                'title'=>'专业',
                /*列表显示配置*/
                'list'=>array(
                    'callback'=>array('value','{:name}')
                ),
                /*指新增操作的那个表单的配置*/
                'form'=>array(
                    'title'=>'专业',
                    'type'=>'text',
                    'callback' =>array('get_sec_list','{:id}','{#}')
                )
            ),
            'switch'=>array(
                'title'=>'是否开启栏目',
                'list'=>array(
                    /*一定是在某个位置调用了这个函数*/
                    'callback'=>array('get_switch'),
                    'order'=>false
                ),
                'form'=>array(
                    'type'=>'select',
                    'validate'=>array(
                        'required'=>true,
                    ),
                    'select'=>array(
                        'first'=>'请选择...'
                    )
                )
            ),

        );
    }

    /*下面写的就是callback方法*/
    protected function callback_get_fir_list($id){

        return $this->where(array(
            'id' => $id
        ))->getField('pid');

    }
    protected function callback_get_sec_list($id){
        return $this->where(array(
            'id' => $id
        ))->getField('name');
    }
    protected function _after_insert($data, $options){
        $sec_name = I('name');
        if($sec_name) return;
        $pid = I('pid');
        $data['pid'] = 0 ;
        $data['name'] = $pid;
        M('college')->where(array(
            'id'=>$data['id']
        ))->save($data);
    }

    protected function _after_update($data, $options){
        $sec_name = I('name');
        $data['name'] = $sec_name;
        M('college')->where(array(
            'id'=>$data['id']
        ))->save($data);
    }


    protected function getOptions_name(){
        return $this->where(array('status'=>1,'pid'=>array('neq',0)))->getField('id,name');
    }
    protected function getOptions_pid(){
        return $this->where(array('status'=>1,'pid'=>0))->getField('id,name');
    }

    protected function callback_get_pid_name($pid){
        if(!$pid) return '<span style="color: #797676;">无学院</span>';
        else{
            return $this->where(array('status'=>1,'id'=>$pid))->getField('name');
        }
    }
    protected function getOptions_nav_show(){
        return array(
            0=>'顶部显示',
            1=>'首页中部显示',
            null=>'不显示'
        );
    }
    protected function callback_get_switch($no){
        if($no==1) return '<span style="color: green;">开</span>';
        if(!$no) return '<span style="color: #646669;">关</span>';
    }
    protected function getOptions_switch(){
        return array(
            1=>'开',
            0=>'关'
        );
    }
     protected function callback_get_style($no){
        if($no==1) return '<span style="color: green;">新闻</span>';
        if($no==2) return '<span style="color: green;">文章</span>';
    }
    protected function getOptions_style(){
        return array(
            1=>'新闻',
            2=>'文章'
        );
    }

}