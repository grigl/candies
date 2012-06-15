<?php
@ini_set('zend.ze1_compatibility_mode',0);

if(file_exists("kernel/wbs.xml")){
	$xml= simplexml_load_file("kernel/wbs.xml");
	$type=(string)$xml->FRONTEND['type'];
	$type=isset($type)?$type:'$type';
	$__WBS_INSTALL_PATH = (string)@$xml->DIRECTORIES->WEB_DIRECTORY['PATH'];
}else{
	$type='$type';
	$__WBS_INSTALL_PATH = '';
}
switch ($type){
	case 'PD':{
		chdir('published/PD/');include "index.php";
		break;
		break;
	}
	case 'SC':{
		$_GET['frontend']=1;
		chdir('published/SC/html/scripts/');include "index.php";
		break;
	}
	case 'login':{
		header('Location: login/');
		break;
	}
	case 'none':{
		print '<html lang="ru"><head><meta charset="utf-8"><meta http-equiv="X-UA-Compatible"content="IE=edge,chrome=1"><title>Candies</title><meta name="description"content=""><meta name="author"content=""><meta name="viewport"content="width=device-width, initial-scale=1.0"><link rel="shortcut icon"href="favicon.ico"><style>html,body,div,span,h1,h2,h3,h4,h5,h6,p,blockquote,a,font,img,small,strong,em,b,u,i,center,dl,dt,dd,ol,ul,li,form,table,tbody,tfoot,thead,tr,th,td{margin:0;padding:0;border:0;outline:0;font-size:100%;}html,body{height:100%;width:100%;line-height:1;background-color:#fff;}html,body,td,input,select,textarea{font:14px/120%"Trebuchet MS",Arial,Helvetica,sans-serif;color:#000;}h1,h2{font-weight:normal;line-height:normal;margin-bottom:6px;}h1{font-size:24px;}h2{}div{width:740px;height:184px;padding:40px;position:absolute;top:50%;left:50%;margin:-132px 0 0-410px;}img{display:block;float:left;margin: 10px 42px 20px 0;}</style></head><body><div><img src="/published/common/img/candies.png"width="340"height="183"alt="Candies"><h1>Мы — молодой проект для любителей качественной обуви</h1><h2>Как хорошо известных, уже заработавших себе имя европейских брендов, так и малоизвестных марок, <br>по нашему мнению заслуживающих внимания покупателей, которые мы будем стараться продвигать, не ограничиваясь пределами одного города, предлагая вам максимально подходящие и удобные способы доставки по всему миру.<br>Скоро открытие!</h2></div></body></html>';
		break;
	}
	default:{
		print '<html><head><title></title></head><body><!-- Error read wbs.xml file --></body></html>';
		break;
	}
}
?>