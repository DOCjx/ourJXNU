<?php
namespace Home\Controller;
use Think\Controller;

class IndexController extends BaseController{

	public function _initialize(){
		parent::_initialize();
	}

	public function index(){
		//主页临时加载图片start
		$picture = M('picture');
		$linkImgFileId = $picture
					->where(array('style'=>array('eq',"链接"),'status'=>array('eq',1)))
					->find()['file_id'];
		$linkimg = M('picture')
			->where(array('style'=>array('eq',"3"),'status'=>array('eq',1)))
			->join('man_frame_file as c on man_picture.file_id = c.id')
			->field('c.savename,c.savepath')
			->find();
		$linkimg=$linkimg['savepath'].$linkimg['savename'];
		//主页临时加载图片end
		$detail=M('detail');
		$centerarticle=$detail
			->where('category_id = 38 AND style = 2')
			->select();
		$centerimg=$detail
			->where('category_id = 38 AND status = 1')
			->find();

		
//dump($centerimg);

		$centerimg_file=M('frame_file')
			->where(array('id'=>array('EQ',$centerimg['file_id'])))
			->find();
		$news1=$detail
			->where(array('category_id'=>array('eq',27)))
			->order('create_time desc')
			->limit(4)
			->select();
		$news2=$detail
			->where(array('category_id'=>array('eq',28)))
			->order('create_time desc')
			->limit(4)
			->select();
		$news3=$detail
			->where(array('category_id'=>array('eq',29)))
			->order('create_time desc')
			->limit(4)
			->select();
		

		$inlink=M('link')->where('status = 1 AND type = 1')->select();
		$outlink=M('link')->where('status = 1 AND type = 2')->select();
		
		$wechat = M('picture')
			->where(array('style'=>array('eq',"1"),'status'=>array('eq',1)))
			->join('man_frame_file as c on man_picture.file_id = c.id')
			->field('c.savename,c.savepath,update_time')
            ->order('update_time desc')
			->find();
		$contact['qq'] = M('link')
			->where(array('type'=>array('eq',3),'status'=>array('eq',1)))->field('link,title,id')
			->order('id desc')
			->select()[0]['link'];
		$contact['weibo'] = M('link')
			->where(array('type'=>array('eq',4),'status'=>array('eq',1)))->field('link,title,id')
			->order('id desc')
			->select()[0]['link'];
			// dump($contact);
		// if( $qqAndWeibo[0]['title']=="QQ" ){
		// 	 = $qqAndWeibo[0]['link'];
		// 	$contact['weibo'] = $qqAndWeibo[1]['link'];
		// }else{
		// 	$contact['qq'] = $qqAndWeibo[1]['link'];
		// 	$contact['weibo'] = $qqAndWeibo[0]['link'];
		// }
		$contact['wechat'] = $wechat['savepath'].$wechat['savename'];
		$ing=D('detail')->get_first_img(39);
		$inng=D('detail')->get_first_img(38);
		
		
   		$this
	   		->assign('centerarticle',$inng)
	   		->assign('centerimg_file',$centerimg_file)
	   		->assign('news1',$news1)
	   		->assign('news2',$news2)
	   		->assign('news3',$news3)
	   		->assign('messageRightimg',$ing)
	   		->assign('scinlink',$inlink)
	   		->assign('outlink',$outlink)
	   		->assign('linkimg',$linkimg)
	   		->assign('contact',$contact);
//dump($contact);
//dump($wechat);
		$this->display();

	}

	public function categoryd(){
		$categoryId = I('category_id');
		if( $categoryId==1||$categoryId==0 ) $this->error('非法访问！',U('Index/index'));
		$categoryModel = D('category');
		$detailModel = D('detail');
		$flag = I('flag');
		$leftNav = $categoryModel->getLeftNav($categoryId);
		$articlePage = $detailModel->ArticlePage($categoryId);
		if( !$flag ){
			$list = $detailModel->getAList($categoryId);
		}elseif( $flag==1 ){
			$list = M('detail')
				->where(array('category_id'=>array('eq',$categoryId),'status'=>array('eq',1)))
				->field('title,content,create_time,etitle,econtent')
            	->order('create_time desc')
				->find();
			//dump($list);
		}elseif( $flag==11 ){
			$list = M('science')
				->where(array('category_id'=>array('eq',$categoryId),'status'=>array('eq',1)))
				->field('title,content,create_time,etitle,econtent')
            	->order('create_time desc')
				->find();
			// dump($list);
		}else{
			$people = M('people')
				->where(array('category_id'=>array('eq',$categoryId),'status'=>array('eq',1)))
				->field('title,content,phone,id,file_id,position,remark')
            	->order('remark desc')
				->select();

			$file = M('frame_file')
				->where(array('status'=>array('eq',1)))
				->select();
			$list = array();
			foreach($people as $kp=>$vp){
				foreach($file as $kf=>$vf){
					if( $vp['file_id']==$vf['id'] ){
						$picUrl = $vf['savepath']."/".$vf['savename'];
						$vp['url']=$picUrl;
					}
				}
				array_push($list,$vp);
			}
			// dump($list);
			$picture = M('frame_file')
				->where(array('category_id'=>array('eq',$categoryId),'status'=>array('eq',1)))
				->select();
		}
		// dump($list);
		//dump($list[0]['position']);
		$this->assign('navGroup',$leftNav)
			 ->assign('list',$list)
			 ->assign('page',$articlePage)
			 ->assign('flag',$flag);
		$this->display();
	}
	public function articledetail(){
		$detailId = I('id');
		$categoryId = I('category_id');
		$detailModel = D('detail');
		$categoryModel = D('category');

		$data = $detailModel->getArticle($detailId,$categoryId);
		$articleTitle = M('detail')
			->where(array('status'=>array("eq",1),'category_id'=>$categoryId))
            ->order('create_time desc')
            ->limit(C('INDEX_ARTICLE_NUM'))
			->field('id,title,category_id,create_time')
			->select();
		$navTop = $categoryModel->getTopNav($categoryId);
		//dump($flag);
		$this->assign('data',$data)
			 ->assign('navTop',$navTop)
			 ->assign('articleTitle',$articleTitle);
		$this->display();
	}


	//英文版首页
	public function eindex(){
		//主页临时加载图片start
		$picture = M('picture');
		$linkImgFileId = $picture
					->where(array('style'=>array('eq',"链接"),'status'=>array('eq',1)))
					->find()['file_id'];
		$linkimg = M('picture')
			->where(array('style'=>array('eq',"3"),'status'=>array('eq',1)))
			->join('man_frame_file as c on man_picture.file_id = c.id')
			->field('c.savename,c.savepath')
			->find();
		$linkimg=$linkimg['savepath'].$linkimg['savename'];
		//主页临时加载图片end
		$detail=M('detail');
		$centerarticle=$detail
			->where('category_id = 38 AND style = 2')
			->select();
		$centerimg=$detail
			->where('category_id = 38 AND status = 1')
			->find();

		
//dump($centerimg);

		$centerimg_file=M('frame_file')
			->where(array('id'=>array('EQ',$centerimg['file_id'])))
			->find();
		$news1=$detail
			->where(array('category_id'=>array('eq',27)))
			->order('create_time desc')
			->limit(4)
			->select();
		$news2=$detail
			->where(array('category_id'=>array('eq',28)))
			->order('create_time desc')
			->limit(4)
			->select();
		$news3=$detail
			->where(array('category_id'=>array('eq',29)))
			->order('create_time desc')
			->limit(4)
			->select();
		

		$inlink=M('link')->where('status = 1 AND type = 1')->select();
		$outlink=M('link')->where('status = 1 AND type = 2')->select();
		
		$wechat = M('picture')
			->where(array('style'=>array('eq',"1"),'status'=>array('eq',1)))
			->join('man_frame_file as c on man_picture.file_id = c.id')
			->field('c.savename,c.savepath,update_time')
            ->order('update_time desc')
			->find();
		$contact['qq'] = M('link')
			->where(array('type'=>array('eq',3),'status'=>array('eq',1)))->field('link,title,id')
			->order('id desc')
			->select()[0]['link'];
		$contact['weibo'] = M('link')
			->where(array('type'=>array('eq',4),'status'=>array('eq',1)))->field('link,title,id')
			->order('id desc')
			->select()[0]['link'];
			// dump($contact);
		// if( $qqAndWeibo[0]['title']=="QQ" ){
		// 	 = $qqAndWeibo[0]['link'];
		// 	$contact['weibo'] = $qqAndWeibo[1]['link'];
		// }else{
		// 	$contact['qq'] = $qqAndWeibo[1]['link'];
		// 	$contact['weibo'] = $qqAndWeibo[0]['link'];
		// }
		$contact['wechat'] = $wechat['savepath'].$wechat['savename'];
		$ing=D('detail')->get_first_img(39);
		$inng=D('detail')->get_first_img(38);
		
		
   		$this
	   		->assign('centerarticle',$inng)
	   		->assign('centerimg_file',$centerimg_file)
	   		->assign('news1',$news1)
	   		->assign('news2',$news2)
	   		->assign('news3',$news3)
	   		->assign('messageRightimg',$ing)
	   		->assign('scinlink',$inlink)
	   		->assign('outlink',$outlink)
	   		->assign('linkimg',$linkimg)
	   		->assign('contact',$contact);
//dump($contact);
//dump($wechat);
	   		//var_dump($ing);
		$this->display();

	}

	public function ecategoryd(){
		$categoryId = I('category_id');
		if( $categoryId==1||$categoryId==0 ) $this->error('非法访问！',U('Index/index'));
		$categoryModel = D('category');
		$detailModel = D('detail');
		$flag = I('flag');
		$leftNav = $categoryModel->egetLeftNav($categoryId);
		$articlePage = $detailModel->ArticlePage($categoryId);
		if( !$flag ){
			$list = $detailModel->getAList($categoryId);
			//dump($list);
		}elseif( $flag==1 ){
			$list = M('detail')
				->where(array('category_id'=>array('eq',$categoryId),'status'=>array('eq',1)))
				->field('title,content,create_time,etitle,econtent')
            	->order('create_time desc')
				->find();
		}elseif( $flag==11 ){
			$list = M('science')
				->where(array('category_id'=>array('eq',$categoryId),'status'=>array('eq',1)))
				->field('title,content,create_time,etitle,econtent')
            	->order('create_time desc')
				->find();
			// dump($list);
		}else{
			$people = M('people')
				->where(array('category_id'=>array('eq',$categoryId),'status'=>array('eq',1)))
				->field('title,content,phone,id,file_id,position,remark,etitle,econtent,eposition')
            	->order('remark desc')
				->select();
			$file = M('frame_file')
				->where(array('status'=>array('eq',1)))
				->select();
			$list = array();
			foreach($people as $kp=>$vp){
				foreach($file as $kf=>$vf){
					if( $vp['file_id']==$vf['id'] ){
						$picUrl = $vf['savepath']."/".$vf['savename'];
						$vp['url']=$picUrl;
					}
					
				}
				$vp['econtent']=trim($vp['econtent'],"&lt;p&gt;&lt;/p&gt;");
				//dump($vp['econtent']);
				array_push($list,$vp);
			}
			
			$picture = M('frame_file')
				->where(array('category_id'=>array('eq',$categoryId),'status'=>array('eq',1)))
				->select();
		}
		// dump($list);
		//dump($list[0]['position']);
		$this->assign('navGroup',$leftNav)
			 ->assign('list',$list)
			 ->assign('page',$articlePage)
			 ->assign('flag',$flag);
		//var_dump($list);
		$this->display();
	}
	public function earticledetail(){
		$detailId = I('id');
		$categoryId = I('category_id');
		$detailModel = D('detail');
		$categoryModel = D('category');

		$data = $detailModel->getArticle($detailId,$categoryId);
		$articleTitle = M('detail')
			->where(array('status'=>array("eq",1),'category_id'=>$categoryId))
            ->order('create_time desc')
            ->limit(C('INDEX_ARTICLE_NUM'))
			->field('id,title,category_id,create_time,etitle,econtent')
			->select();
		$navTop = $categoryModel->getTopNav($categoryId);
		//dump($flag);
		$this->assign('data',$data)
			 ->assign('navTop',$navTop)
			 ->assign('articleTitle',$articleTitle);
		$this->display();
	}
}