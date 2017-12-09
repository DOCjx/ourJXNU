/**
 * 
 */
var edit = function () {
    
    var showWy = function  () {
         $('.editor1').each( function(index, element){
        	index = 0;
            $(element).wysiwyg({
                classes: 'some-more-classes',
                position: 'top-selection',
                buttons: {
                    // Dummy-HTML-Plugin
                    dummybutton1: index != 1 ? false : {
                        html: $('<input id="submit" type="button" value="bold" />').click(function(){
                                    // We simply make 'bold'
                                    if( $(element).wysiwyg('selected-html') )
                                        $(element).wysiwyg('bold');
                                    else
                                        alert( 'Please selection some text' );
                                }),
                        //showstatic: true,    // wanted on the toolbar
                        showselection: false    // wanted on selection
                    },
                    // Dummy-Button-Plugin
                    dummybutton2: index != 1 ? false : {
                        title: 'Dummy',
                        image: '\uf1e7',
                        click: function( $button ) {
                                alert('Do something');
                               },
                        //showstatic: true,    // wanted on the toolbar
                        showselection: false    // wanted on selection
                    },
                    insertlink: {
                        title: '插入链接',
                        image: '\uf08e' // <img src="path/to/image.png" width="16" height="16" alt="" />
                    },
                    // Fontanme + Fontsize Plugin
                    fontname: index == 1 ? false : {
                        title: '字体',
                        image: '\uf031', // <img src="path/to/image.png" width="16" height="16" alt="" />
                        popup: function( $popup, $button, $editor ) {
                                var list_fontnames = {
                                        // Name : Font
                                        'Arial, Helvetica' : 'Arial,Helvetica',
                                        'Verdana'          : 'Verdana,Geneva',
                                        'Georgia'          : 'Georgia',
                                        'Courier New'      : 'Courier New,Courier',
                                        'Times New Roman'  : 'Times New Roman,Times'
                                    };
                                var $list = $('<div/>').addClass('wysiwyg-toolbar-list')
                                                       .attr('unselectable','on');
                                $.each( list_fontnames, function( name, font ){
                                    var $link = $('<a/>').attr('href','#')
                                                        .css( 'font-family', font )
                                                        .html( name )
                                                        .click(function(event){
                                                            $(element).wysiwyg('fontname',font);
                                                            $(element).wysiwyg('close-popup');
                                                            // prevent link-href-#
                                                            event.stopPropagation();
                                                            event.preventDefault();
                                                            return false;
                                                        });
                                    $list.append( $link );
                                });
                                $popup.append( $list );
                               },
                        //showstatic: true,    // wanted on the toolbar
                        showselection: index == 0 ? true : false    // wanted on selection
                    },
                    fontsize: index == 1 ? false : {
                        title: '标题',
                        image: '\uf034', // <img src="path/to/image.png" width="16" height="16" alt="" />
                        popup: function( $popup, $button, $editor ) {
                                var list_fontsizes = {
                                    // Name : Size
                                    '标题一'    : 7,
                                    '标题二'  : 6,
                                    '标题三'   : 5,
                                    '标题五'  : 4,
                                    '标题六'   : 3,
                                    '标题七' : 2,
                                    '标题八'    : 1
                                };
                                var $list = $('<div/>').addClass('wysiwyg-toolbar-list')
                                                       .attr('unselectable','on');
                                $.each( list_fontsizes, function( name, size ){
                                    var $link = $('<a/>').attr('href','#')
                                                        .css( 'font-size', (8 + (size * 3)) + 'px' )
                                                        .html( name )
                                                        .click(function(event){
                                                            $(element).wysiwyg('fontsize',size);
                                                            $(element).wysiwyg('close-popup');
                                                            // prevent link-href-#
                                                            event.stopPropagation();
                                                            event.preventDefault();
                                                            return false;
                                                        });
                                    $list.append( $link );
                                });
                                $popup.append( $list );
                               }
                        //showstatic: true,    // wanted on the toolbar
                        //showselection: true    // wanted on selection
                    },
                    bold: {
                        title: '加粗 (Ctrl+B)',
                        image: '\uf032', // <img src="path/to/image.png" width="16" height="16" alt="" />
                        hotkey: 'b'
                    },
                    italic: {
                        title: '斜体文字 (Ctrl+I)',
                        image: '\uf033', // <img src="path/to/image.png" width="16" height="16" alt="" />
                        hotkey: 'i'
                    },
                    underline: {
                        title: '下划线 (Ctrl+U)',
                        image: '\uf0cd', // <img src="path/to/image.png" width="16" height="16" alt="" />
                        hotkey: 'u'
                    },
                    strikethrough: {
                        title: '删除线文字 (Ctrl+S)',
                        image: '\uf0cc', // <img src="path/to/image.png" width="16" height="16" alt="" />
                        hotkey: 's'
                    },
                    forecolor: {
                        title: '文本色',
                        image: '\uf1fc' // <img src="path/to/image.png" width="16" height="16" alt="" />
                    },
                    highlight: {
                        title: '背景色',
                        image: '\uf043' // <img src="path/to/image.png" width="16" height="16" alt="" />
                    },
                    alignleft: index != 0 ? false : {
                        title: '左对齐',
                        image: '\uf036', // <img src="path/to/image.png" width="16" height="16" alt="" />
                        //showstatic: true,    // wanted on the toolbar
                        showselection: false    // wanted on selection
                    },
                    aligncenter: index != 0 ? false : {
                        title: '居中对齐',
                        image: '\uf037', // <img src="path/to/image.png" width="16" height="16" alt="" />
                        //showstatic: true,    // wanted on the toolbar
                        showselection: false    // wanted on selection
                    },
                    alignright: index != 0 ? false : {
                        title: '右对齐',
                        image: '\uf038', // <img src="path/to/image.png" width="16" height="16" alt="" />
                        //showstatic: true,    // wanted on the toolbar
                        showselection: false    // wanted on selection
                    },
                    alignjustify: index != 0 ? false : {
                        title: '两边对齐',
                        image: '\uf039', // <img src="path/to/image.png" width="16" height="16" alt="" />
                        //showstatic: true,    // wanted on the toolbar
                        showselection: false    // wanted on selection
                    },
                    subscript: index == 1 ? false : {
                        title: '下标',
                        image: '\uf12c', // <img src="path/to/image.png" width="16" height="16" alt="" />
                        //showstatic: true,    // wanted on the toolbar
                        showselection: true    // wanted on selection
                    },
                    superscript: index == 1 ? false : {
                        title: '上标',
                        image: '\uf12b', // <img src="path/to/image.png" width="16" height="16" alt="" />
                        //showstatic: true,    // wanted on the toolbar
                        showselection: true    // wanted on selection
                    },
                    indent: index != 0 ? false : {
                        title: '缩进',
                        image: '\uf03c', // <img src="path/to/image.png" width="16" height="16" alt="" />
                        //showstatic: true,    // wanted on the toolbar
                        showselection: false    // wanted on selection
                    },
                    outdent: index != 0 ? false : {
                        title: '减少缩进',
                        image: '\uf03b', // <img src="path/to/image.png" width="16" height="16" alt="" />
                        //showstatic: true,    // wanted on the toolbar
                        showselection: false    // wanted on selection
                    },
                    orderedList: index != 0 ? false : {
                        title: '有序列表',
                        image: '\uf0cb', // <img src="path/to/image.png" width="16" height="16" alt="" />
                        //showstatic: true,    // wanted on the toolbar
                        showselection: false    // wanted on selection
                    },
                    unorderedList: index != 0 ? false : {
                        title: '无序列表',
                        image: '\uf0ca', // <img src="path/to/image.png" width="16" height="16" alt="" />
                        //showstatic: true,    // wanted on the toolbar
                        showselection: false    // wanted on selection
                    },
                    removeformat: {
                        title: '清除格式',
                        image: '\uf12d' // <img src="path/to/image.png" width="16" height="16" alt="" />
                    }
                },
                // Submit-Button
                submit: {
                    title: 'Submit',
                    image: '\uf00c' // <img src="path/to/image.png" width="16" height="16" alt="" />
                },
                // Other properties
                dropfileclick: 'Drop image or click',
                placeholderUrl: 'www.example.com',
                maxImageSize: [500,300]
            })
            .change(function(){
                if( typeof console != 'undefined' )
                    console.log( 'change' );
            })
            .focus(function(){
                if( typeof console != 'undefined' )
                    console.log( 'focus' );
            })
            .blur(function(){
                if( typeof console != 'undefined' )
                    console.log( 'blur' );
            });
        });
        
        $('#editor3-bold').click(function(){
            $('#editor3').wysiwyg('bold');
            return false;
        });
        $('#editor3-red').click(function(){
            $('#editor3').wysiwyg('highlight','#ff0000');
            return false;
        });
        $('#editor3-sethtml').click(function(){
            $('#editor3').wysiwyg('html', 'This is a the html text');
            return false;
        });
        $('#editor3-inserthtml').click(function(){
            $('#editor3').wysiwyg('inserthtml', 'This is some text');
            return false;
        });

        // Raw editor
        var option = {
            element: $('#editor0').get(0),
            onkeypress: function( code, character, shiftKey, altKey, ctrlKey, metaKey ) {
                            if( typeof console != 'undefined' )
                                console.log( 'RAW: '+character+' key pressed' );
                        },
            onselection: function( collapsed, rect, nodes, rightclick ) {
                            if( typeof console != 'undefined' && rect )
                                console.log( 'RAW: selection rect('+rect.left+','+rect.top+','+rect.width+','+rect.height+'), '+nodes.length+' nodes' );
                        },
            onplaceholder: function( visible ) {
                            if( typeof console != 'undefined' )
                                console.log( 'RAW: placeholder ' + (visible ? 'visible' : 'hidden') );
                        }
        };
        var wysiwygeditor = wysiwyg( option );

    };

    return {
         init: function () {
             showWy();  
         }
    };
}();
    
    // Demo-Buttons
    
    //wysiwygeditor.setHTML( '<html>' );