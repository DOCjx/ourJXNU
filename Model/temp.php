<?php
namespace GuidanceCourse\Model;
use Common\Model\HyAllModel;

/**
 * 管理员模型
 *
 * @author
 */
class GuidanceCourseReportModel extends GuidanceCourseReportSModel
{

    /**
     * @overrides
     */
    protected function initTableName()
    {
        return 'guidance_course_report';
    }

    /**
     * @overrides
     */
    protected function initInfoOptions()
    {
        return array(
            'title' => '就业专题指导课管理',
            'subtitle' => '申请指导课信息'
        );
    }

    /**
     * @overrides
     */
    protected function initSqlOptions()
    {

        return array(
            'associate' => array(
                'guidance_course_type|guidance_course_type_id|id|type||left',
                'teacher|teacher_id|user_id|user_id||left',
                'user|teacher.user_id|id|name as teacher_name||left'


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
            'deleteType'=> 'status|9',
            'actions' => array(
                'edit' => array(
                    'title' => '审核',
                    'max' => 1
                ),
                'delete' => array(
                    'title' => '删除',
                    // 是否需要确认
                    'confirm' => true
                )
            ),
            'buttons' => array(

            ),
        );
    }

    /**
     * @overrides
     */
    protected function initFieldsOptions()
    {
        return array(
            'guidance_course_type_id' => array(
                'title' => '指导课类型',
                'list' => array(
                    'callback'=>array('value','{:type}'),
                    'search' => array(
                        'type' => 'select',
                    )
                ),
                'form' => array(
                    'attr'=>'disabled',
                    'title'=>'指导课类型',
                    'type' => 'select',
                    // 'callback'=>array('value','{:type}'),
                )
            ),

            'teacher_id' => array(
                'title' => '授课老师',
                'list' => array(
                    'callback'=>array('value','{:teacher_name}'),
//                    'search' => array(
//                        'type' => 'select',

                ),
                'form'=>array(
                    'attr'=>'disabled',
                    'type' => 'select',
                    'callback'=>array('value','{:teacher_name}'),
                )

            ),

            'report_time' => array(
                'title' => '申请时间',
                'list' => array(
                    'callback'=>array('to_time'),
                ),
                'form' => array(
                    'attr'=>'disabled',
                    'type' => 'date',
                    'fill'=>array(
                        'both'=>array('str_to_time')
                    ),
                    'callback'=>array('to_time'),
                )
            ),

            'report_place' => array(
                'title' => '申请地点',
                'list' => array(

                ),
                'form' => array(

                )
            ),

            'checked_person_id' => array(
                'list' => array(
                    'type' => 'text',
                    'callback'=>array('value','name')
                ),
                'form' => array(
                    'title' => '审核人',
                    'callback'=>array('value','{:checked_person_id}')
                    // 'attr' => 'disabled'
                )
            ),

            'checked_time' => array(
                'list' => array(
                    'title' => '审核时间',
                    'callback'=>array('to_time')
                ),
                'form' => array(
                    'type' => 'date',
                    'fill'=>array(
                        'both'=>array('value',time())
                    ),
                )
            ),
//            'is_checked'=>array(
//                'title' => '审核结果',
//                'list' => array (
//                    'callback' => array ('getCheckResult')
//                ),
//                'form' => array (
//                    'title' => '审核结果',
//                    'type' => 'select',
//                    'options' => array (
//                        '1' => '通过',
//                        '0' => '不予通过'
//                    ),
//                    'style' => 'no-bs-select'
//                )
//            ),

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



    protected function getOptions_teacher_id()
    {
        $teacher_ids = M('teacher')->where(array('status'=>array('lt',9)))->getField('user_id',true);
        $arr=M('user')
            ->where(array('status'=>array('eq',1),'id'=>array('in',$teacher_ids)))
            ->getField('name',true);
        return $arr;
    }

    protected function getOptions_guidance_course_type_id()
    {
        return M('guidance_course_type')->where(array(
            'status' => 1
        ))->getField('id,type');
    }

    public function callback_str_to_time($str_time){
        if(!$str_time) return '';
        return strtotime($str_time);
    }

    protected function callback_guidance_course_type_id()
    {
        return M('guidance_course_type')->where(array(
            'status' => 1
        ))->getField('type');
    }

    protected function callback_teacher_id($user_id)
    {
        return M('user')->where(array(
            'id' => $user_id
        ))->getField('teacher_name');
    }

    protected function callback_checked_person_id($checked_person_id)
    {
        // $checked_person_id = $this->where(array('status'=>array('lt',9)))->getField('checked_person_id');
        return M('user')
            ->where(array('status'=>array('eq',1),'id'=>array('in',$checked_person_id)))
            ->getField('id,name');
    }

    protected function callback_getCheckResult($is_checked_id) {
        if ($is_checked_id === '1') {

            $CheckResult = "<span style='color:green;'>已审核通过</span>";
        } else if ($is_checked_id === '0') {
            $CheckResult = "<span style='color:red;'>已审核未通过</span>";
        } else {
            $CheckResult = "<span style='color:#5ABBB7;'>已提交待审核</span>";
        }
        return $CheckResult;
    }

//    public function ajax_select_teacherViaType(&$json){
//        $user_id=I('id');
//        $idArr=M('teacher')->where(array(
//            'teacher_id'=>$user_id,
//            'status'=>1
//        ))->getField('teacher_id',true);
//        $idStr = implode(',',$idArr);
//        $data=$userIdArr=M('user')->where(array(
//            'id' =>array(IN,$idStr)
//        ))->select();
//        foreach($data as $k=>$v){
//            $data[$k]['name_user_no'] = $v['name']."(".$v['user_no'].")";
//        }
//        if(!$data) return $json;
//        $json['status'] = true;
//        $json['data'] = md_arr_2_asc_arr($data,'id','name_user_no');
//    }


}