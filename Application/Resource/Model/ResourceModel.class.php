<?php
namespace Resource\Model;
use Common\Model\HyAllModel;

/**
 * 文章分类管理模型
 *
 * @author
 */
class ResourceModel extends HyAllModel {

    /**
     * @overrides
     */
    protected function initTableName(){
        return 'resources';
    }

    /**
     * @overrides
     */
    protected function initInfoOptions(){
        return array(
            'title'=>'资源管理项',
            'subtitle'=>'对资源栏目进行设置'
        );
    }
    /**
     * @overrides
     */
    protected function initSqlOptions(){
        return array(
            'where'=>array(
                'status'=>array('eq',1)
            ),

        );
    }
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
                    'title'=>'新增资源',
                    'icon'=>'fa-plus'
                ),
            ),
            /*出现在add按钮和edit按钮的提示块*/
            'tips'=>array(
                'add'=>'栏目设置!',
                'edit'=>'请按选择的语言进行栏目设置!'
            ),
            'initJS'=>'Category',
            /*表单弹窗尺寸*/
            'formSize'=>'large'
        );
    }
    protected function initFieldsOptions() {
        return array (
         
            'id'=>array(
                'title'=>'序号',
                /*列表显示配置*/
                'list'=>array(
                    'order' => true,
                    /*字段值回调方法：*/
                    // 'callback'=>array('get_pid_name'),
                    /*检索配置：*/
                    // 'search'=>array(
                    //     'type'=>'select',
                    // )
                )
            ),
                /* 表单显示配置*/
            'category_id'=>array(
                 'title'=>'学院',
                 'list'=>array(
                    'title'     =>  '学院',
                    'order'     =>  false,
                    
                 ),
                'form'=>array(
                    'title'=>'学院',
                    'type'=>'text',
                    'callback' =>array('get_collage_name','{:id}','{#}')
                )
                    /*字段表现类型*/
                    // 'type'=>'select',
                    /* 如果type为select，则可选配置*/
                    // 'select'=>array(
                        /* 是否支持新增其他选项*/
                        // 'addon'=>true,
                        /*提示信息：*/
                        // 'first'=>'请选择以下父栏目..'
                    // ),
                     // 表单验证规则（jQuery Validation Rules）：
                    // 'validate'=>array(
                        // 'required'=>true,
                    // ),
                    /*表单字段值回调方法：*/
                    // 'callback'=>array('get_fir_list','{:id}','{#}')
                // )
            ),
            
            // 'name'=>array(
            //     'title'=>'子栏目',
                /*列表显示配置*/
                // 'list'=>array(
                //     'callback'=>array('value','{:name}')
                // ),
                // 指新增操作的那个表单的配置
                // 'form'=>array(
                //     'title'=>'子栏目',
                //     'type'=>'text',
                //     'callback' =>array('get_sec_list','{:id}','{#}')
                // )
            // ),
            // 'ename'=>array(
            //     /*指新增操作的那个表单的配置*/
            //     'form'=>array(
            //         'title'=>'英文子栏目',
            //         'type'=>'text',
            //         // 'callback' =>array('get_sec_elist','{:id}','{#}')
            //     )
            // ),
            // 'remark'=>array(
            //     'title'=>'备注',
            //     'list'=>array(
            //         'order'=>false
            //     ),
            //     'form'=>array(
            //         'type'=>'textarea'
            //     )
            // ),
            // 'style'=>array(
            //     'list'=>array(
            //         'title'=>'类型',
            //         /*一定是在某个位置调用了这个函数*/
            //         // 'callback'=>array('get_style'),
            //         'order'=>false
            //     ),
            //      'form'=>array(
            //             'fill'=>array(
            //                 'both'=>array('value',2)
            //             )
            //         )
            // ),
            // 'switch'=>array(
            //     'title'=>'是否开启栏目',
            //     'list'=>array(
            //         /*一定是在某个位置调用了这个函数*/
            //         // 'callback'=>array('get_switch'),
            //         'order'=>false
            //     ),
            //     'form'=>array(
            //         'type'=>'select',
            //         'validate'=>array(
            //             'required'=>true,
            //         ),
            //         'select'=>array(
            //             'first'=>'请选择...'
            //         )
            //     )
            // ),

        );
    }
     protected function get_collage_name(){
        return M('collage')->where(array('id'=>1))->getField('name');
     }

}