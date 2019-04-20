<?php
return array(
    // 自动加载静态资源（HyFrameController）
    'LOAD_ASSETS' =>array(
        'PAGES'		=>	array(
            'CSS'	=>	array(

            ),
            'JS'	=>	array(
                'Category/all' => array(
                    'category-zm.js'
                ),
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

);