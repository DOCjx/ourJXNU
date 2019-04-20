<?php
namespace GuidanceCourse\Model;
use Common\Model\HyAllModel;

/**
 * 招聘管理模型
 *
 * @author
 */
class GuidanceCourseModel extends HyAllModel
{

    /**
     * @overrides
     */
    protected function initTableName()
    {
        return 'guidance_course';
    }

    /**
     * @overrides
     */
    protected function initInfoOptions()
    {
        return array(
            'title' => '招就处管理',
            'subtitle' => '管理招聘信息'
        );
    }

    /**
     * @overrides
     */
    protected function initSqlOptions()
    {

        return array(
            'associate' => array(
                'college|college_id|id|name AS college_name||left',
                //'class|college.id|college_id|name AS class_name,grade||left'


            ),
            'where' => array(
                'status' => array('eq', 1)
            )
        );
    }

    /**
     * @overrides
     */
    protected function initPageOptions()
    {
        return array(
            'checkbox' => true,
            //  'deleteType'=> 'status|9',
            'actions' => array(
                'edit' => array(
                    'title' => '编辑',
                    'max' => 1
                ),
                'delete' => array(
                    'title' => '删除',
                    // 是否需要确认
                    'confirm' => true
                )
            ),
            'buttons' => array(
                'add' => array(
                    'title' => '信息录入',
                    'icon' => 'fa-plus'
                )
            ),
            //'initJS'=>'InteQwf'
        );
    }

    /**
     * @overrides
     */
    protected function initFieldsOptions()
    {
        return array(
            'college_id' => array(
                'title' => '学院名',
                'list' => array(
                    'callback'=>array('value','{:college_name}'),
                    'search' => array(
                        'type' => 'select',
                    )
                ),
                'form' => array(
                    'type' => 'select',
                    'callback'=>array('value','{:college_name}'),

                )
            ),

            'title' => array(
                'title' => '专题名',
                'list' => array(
                    'type' => 'text',
                ),
                'form' => array(
                   // 'attr' => 'disabled',
                )
            ),

            'content' => array(
                'title' => '课程内容',
                'list' => array(
                    'type' => 'textarea',
                ),
                'form' => array(
                    'title' => '内容',
                    'type' => 'textarea',
                    'attr' => 'style="height:300px"',
                    'validate' => array (
                        'required' => true,
                        'minlength'=>2,
                        'maxlength'=>1000,
                    ),
                    'tip' => '2-1000个长度的内容'
                )
            ),

            'start_time' => array(
                'title' => '报名时间',
                'list' => array(
                    'callback'=>array('to_time')
                ),
                'form' => array(
                    'type'=>'date',
                    'fill' => array(
                        'both' => array('str_to_time')
                    ),
                    'callback'=>array('to_time')
                )
            ),

            'end_time' => array(
                'title' => '报名截至时间',
                'list' => array(
                    'callback'=>array('to_time')
                ),
                'form' => array(
                    'type'=>'date',
                    'fill'=>array(
                        'both'=>array('str_to_time')
                    ),
                    'callback'=>array('to_time')
                )
            ),

            'create_time' => array(
                'list' => array(
                    'title'=>'创建时间',
                    'callback'=>array('to_time')
                ),
                'form' => array(
                    'fill'=>array(
                        'both'=>array('value',time())
                    ),
                )
            ),


        );
    }

    public function callback_str_to_time($str_time){
        if(!$str_time) return '';
        return strtotime($str_time);
    }

    protected function callback_get_college_name($college_id){
        return M('college')->where(array(
            'id' => $college_id
        ))->getField('id,name');
    }

    public function getOptions_college_id()
    {
        return M('college')->where(array(
            'status' => 1
        ))->getField('id,name');
    }

    protected function callback_get_class_name($college_id){
        return M('class')->where(array(
            'college_id' => $college_id
        ))->getField('id,name');
    }



}