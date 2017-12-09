<?php
/**
 *
 *  将手机号码中间**化*/
//function phoneHidden($num){
//	return preg_replace( '/(\d{3})\d{5}(\d+)/', '\1*****\2', $num );
//}

/*
 * 多语言选择的语言id
 * */
function ss_lanid(){
    return session('lanId');
}
function ss_h_uno(){
    return session('user_no');
}
function ss_h_uid(){
    return session('user_id');
}

/**
 * 递归重组节点信息为多维数组
 * @return [type] $node [要处理的节点数组]
 * @return [type] $pid [父级ID]
 */
function node_merge($node,$pid=0){
	foreach ($node as $v) {
		if ($v['pid'] == $pid) {
			$v['children'] = node_merge($node,$v['id']);
			$arr[] = $v;
		}
		
	}
	return $arr;
}
/**
 * 密码加密
 * @param string $pwd
 * @return string
 */
function pwdEncrypt($pwd, $isSha1=false){
	if(!$isSha1) $pwd = sha1($pwd.C('PWD_HASH_ADDON'));
	return aes_encrypt($pwd, C('CRYPT_KEY_PWD'));
}























 ?>