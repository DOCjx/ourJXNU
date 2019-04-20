<?php
return array(
    // 自动加载静态资源（HyFrameController）
    'LOAD_ASSETS' =>array(
        'PAGES'		=>	array(
            'CSS'	=>	array(

            ),
            'JS'	=>	array(
                'Article/all'=>array(        
                )
            )
        ),
        'PLUGINS'	=>	array(
            'CSS'	=>	array(
            ),
            'JS'	=>	array(
                'Article/all'	=>	array(
                   'ueditor/ueditor.config.js',
                   'ueditor/ueditor.all.min.js',
                   'ueditor/lang/zh-cn/zh-cn.js',
                   'ueditor/lang/en/en.js'
                )
            )
        ),
        ),
    'TPL_DETAIL_BTN'        =>  '<a href="javascript:;" title="查看详情" class="btn btn-xs blue dt-detail" ><i class="fa fa-eye">查看详情</i>&nbsp;{0}</a>',

);