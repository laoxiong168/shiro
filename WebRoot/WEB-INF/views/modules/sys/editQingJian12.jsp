<%@ page contentType="text/html;charset=UTF-8" %>
<%@ include file="/WEB-INF/views/include/taglib.jsp"%>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<style type="text/css" title="audiojs">        .audiojs audio { position: absolute; left: -1px; }         .audiojs { width: 460px; height: 36px; background: #404040; overflow: hidden; font-family: monospace; font-size: 12px;           background-image: -webkit-gradient(linear, left top, left bottom, color-stop(0, #444), color-stop(0.5, #555), color-stop(0.51, #444), color-stop(1, #444));           background-image: -moz-linear-gradient(center top, #444 0%, #555 50%, #444 51%, #444 100%);           -webkit-box-shadow: 1px 1px 8px rgba(0, 0, 0, 0.3); -moz-box-shadow: 1px 1px 8px rgba(0, 0, 0, 0.3);           -o-box-shadow: 1px 1px 8px rgba(0, 0, 0, 0.3); box-shadow: 1px 1px 8px rgba(0, 0, 0, 0.3); }         .audiojs .play-pause { width: 25px; height: 40px; padding: 4px 6px; margin: 0px; float: left; overflow: hidden; border-right: 1px solid #000; }         .audiojs p { display: none; width: 25px; height: 40px; margin: 0px; cursor: pointer; }         .audiojs .play { display: block; }         .audiojs .scrubber { position: relative; float: left; width: 280px; background: #5a5a5a; height: 14px; margin: 10px; border-top: 1px solid #3f3f3f; border-left: 0px; border-bottom: 0px; overflow: hidden; }         .audiojs .progress { position: absolute; top: 0px; left: 0px; height: 14px; width: 0px; background: #ccc; z-index: 1;           background-image: -webkit-gradient(linear, left top, left bottom, color-stop(0, #ccc), color-stop(0.5, #ddd), color-stop(0.51, #ccc), color-stop(1, #ccc));           background-image: -moz-linear-gradient(center top, #ccc 0%, #ddd 50%, #ccc 51%, #ccc 100%); }         .audiojs .loaded { position: absolute; top: 0px; left: 0px; height: 14px; width: 0px; background: #000;           background-image: -webkit-gradient(linear, left top, left bottom, color-stop(0, #222), color-stop(0.5, #333), color-stop(0.51, #222), color-stop(1, #222));           background-image: -moz-linear-gradient(center top, #222 0%, #333 50%, #222 51%, #222 100%); }         .audiojs .time { float: left; height: 36px; line-height: 36px; margin: 0px 0px 0px 6px; padding: 0px 6px 0px 12px; border-left: 1px solid #000; color: #ddd; text-shadow: 1px 1px 0px rgba(0, 0, 0, 0.5); }         .audiojs .time em { padding: 0px 2px 0px 0px; color: #f9f9f9; font-style: normal; }         .audiojs .time strong { padding: 0px 0px 0px 2px; font-weight: normal; }         .audiojs .error-message { float: left; display: none; margin: 0px 10px; height: 36px; width: 400px; overflow: hidden; line-height: 36px; white-space: nowrap; color: #fff;           text-overflow: ellipsis; -o-text-overflow: ellipsis; -icab-text-overflow: ellipsis; -khtml-text-overflow: ellipsis; -moz-text-overflow: ellipsis; -webkit-text-overflow: ellipsis; }         .audiojs .error-message a { color: #eee; text-decoration: none; padding-bottom: 1px; border-bottom: 1px solid #999; white-space: wrap; }                 .audiojs .play { background: url("http://web.9xian.com/js/player-graphics.gif") -2px -1px no-repeat; }         .audiojs .loading { background: url("http://web.9xian.com/js/player-graphics.gif") -2px -31px no-repeat; }         .audiojs .error { background: url("http://web.9xian.com/js/player-graphics.gif") -2px -61px no-repeat; }         .audiojs .pause { background: url("http://web.9xian.com/js/player-graphics.gif") -2px -91px no-repeat; }                 .playing .play, .playing .loading, .playing .error { display: none; }         .playing .pause { display: block; }                 .loading .play, .loading .pause, .loading .error { display: none; }         .loading .loading { display: block; }                 .error .time, .error .play, .error .pause, .error .scrubber, .error .loading { display: none; }         .error .error { display: block; }         .error .play-pause p { cursor: auto; }         .error .error-message { display: block; }</style>

<meta name="viewport" content="width=device-width,initial-scale=1.0,user-scalable=no">
<link rel="stylesheet" type="text/css" href="/numberone/static/mycss/index.css">
<link rel="shortcut icon" href="http://web.9xian.com/favicon.ico">
<link rel="bookmark" href="http://web.9xian.com/favicon.ico">
<meta name="renderer" content="webkit">
<meta http-equiv="X-UA-Compatible" content="IE=Edge">
  <title>熊</title>
    <meta name="decorator" content="default"/>
	<script type="text/javascript">var ctx = '${ctx}', ctxStatic='/numberone/static';</script>

<meta name="keywords" content="电子请柬,结婚礼电子请柬,微信请柬,电子请帖,电子喜帖,在线制作软件">
<meta name="description" content="专业电子请柬，结婚礼电子请柬，微信请柬，电子请帖，电子喜帖在线制作软件制作平台-采用云存储技术,安全便捷。兼容手机、电脑等智能设备,确保每位亲朋好友都能看到。">
<script src="/numberone/static/myjs/share.js"></script><link href="/numberone/static/mycss/default.css" rel="stylesheet"><link rel="stylesheet" href="/numberone/static/mycss/share_style0_32.css"></head>
<body class="" style="">
<link rel="stylesheet" type="text/css" href="/numberone/static/mycss/bootstrap.min.css">
<script type="text/javascript" src="/numberone/static/myjs/jquery-1.9.1.min.js"></script>
<script src="/numberone/static/myjs/kibo.min.js"></script>
<style type="text/css">
*{font-family: "微软雅黑";}
.drager-header{height: 60px;position:fixed;left:0px;top:0px;z-index:100;width:100%;background:#fff;box-shadow:0px 2px 2px #eee;}
.header-menu{width: 600px;height: 60px;float: right;margin-right: 100px;}
.navbar-left{margin-left:30px;}
.navbar-left li{float: left;padding: 5px;}
.navbar-right{float: right;    padding-top: 3px;}
.navbar-right li{float: left;padding: 14px 10px 10px 1px;}
.a-color{color:#5a8129;font-size: 20px;}
.a-color1{color: #FFFFFF;font-size: 10px;    padding: 5px 8px 5px 8px !important;display: block;border-radius: 5px;}
</style>
<div class="drager-header">
<img src="/numberone/static/mycss/logo.png" style="padding-left: 20px; height: 60px;">
<div class="header-menu">
<ul class="nav navbar-nav navbar-left" style="">
<li><a class="a-color" href="http://www.baidu.com/">首页</a></li>
<li><a class="a-color" href="http://www.baidu.coml">模板展示</a></li>
</ul>
<ul class="nav navbar-nav navbar-right">
<script type="text/javascript" src="/numberone/static/mycss/isLogin"></script><li><a class="a-color1" href="http://web.9xian.com/usermanager/index" style=" background-color: #8ac343;">我的请柬</a></li><li><a class="a-color1" href="javascript:void(0);" style=" background-color: #8ac343;">Just Do It</a></li><li><a class="a-color1" href="http://web.9xian.com/index.php/auth/logout" style="background-color: #8ac343;">退出</a></li>

</ul>
</div>
</div>
<script>
        if(window.top == window){
            $('.drager-header img').fadeIn(500);
        }
</script>
<div style="display:none"><img src="/numberone/static/mycss/cP7ZkP8ow3KRqNESg2e4FGeyMSRZEAkF.jpg" alt=""></div>
<script type="text/javascript">
	var templete_id=1;
</script>
<link rel="stylesheet" type="text/css" href="/numberone/static/mycss/edit.css">
<script type="text/javascript" src="/numberone/static/myjs/bootstrap.min.js"></script>
<script type="text/javascript" src="/numberone/static/myjs/jquery.bootstrap.wizard.js"></script>
<script type="text/javascript" src="/numberone/static/myjs/select2.full.js"></script>
<link rel="stylesheet" type="text/css" href="/numberone/static/mycss/select2.min.css">
<script type="text/javascript" src="/numberone/static/myjs/jquery-ui.min.js"></script>
<script type="text/javascript" src="/numberone/static/myjs/jquery.uploadifive.min.js"></script>
<link rel="stylesheet" type="text/css" href="/numberone/static/mycss/uploadify.css">
<link rel="stylesheet" type="text/css" href="/numberone/static/mycss/lc_switch.css">
<script type="text/javascript" src="/numberone/static/myjs/lc_switch.js"></script>
<style type="text/css">
	/*fonts*/
/*@font-face {font-family:'zxl';src:url(http://web.9xian.com/css/aaa.ttf);}
 */
  
</style>
<script charset="utf-8" src="/numberone/static/myjs/kindeditor-min.js"></script>
<script charset="utf-8" src="/numberone/static/myjs/zh_CN.js"></script>
<script>

  
	var kindeditor_items =  [
        'fontname', 'fontsize', '|', 'forecolor', 'hilitecolor', 'bold', 'italic', 'underline',
        'removeformat', '|', 'justifyleft', 'justifycenter', 'justifyright', 'insertorderedlist',
        'insertunorderedlist', '|','link'];

	var editor;
	KindEditor.ready(function(K) {
	editor = K.create('textarea[id="aidxuanyan"]', {
	  resizeType : 1,
	  allowPreviewEmoticons : false,
	  allowImageUpload : false,
	  afterChange: function() {
	    $('textarea[id="aidxuanyan"]').html(this.html());
	  },
	  items : kindeditor_items
	});
	});

	var editor1;
	KindEditor.ready(function(K) {
	editor1 = K.create('textarea[id="protext"]', {
	  resizeType : 1,
	  allowPreviewEmoticons : false,
	  allowImageUpload : false,
	  afterChange: function() {
	    $('textarea[id="protext"]').html(this.html());
	  },
	  items : kindeditor_items
	});
	window.KE=editor1;
	});

	function iframeupdatemode(){
		var url = phoneIframe+'&edittemplatemode='+$("#stylecode").val()+'&edittx='+$("#floatetc").val()+"&editmb="+$("#coveretc").val();
		$("#phoneIframe").attr("src",url);
	}

</script>
<style>
    .form-control{max-width: 300px;display:block;}
    .file_cancel{  width: 119px;height: 17px;background-color: #fff;position: absolute;
	  margin-top: 110px;	}	
	.file_cancel a{ background:url(http://web.9xian.com/images/glyphicons-halflings.png) no-repeat; width:16px; height:16px;display:block;float:right}
	
	.file_cancel .a-oen{  background-position: 0 -72px; }
	.file_cancel .a-edit{  background-position: -336px -120px;}
	.file_cancel .a-del{background-position: -456px 0;}
	.house_imglist_xgt li{ float:left;width:130px;height:115px; display:block; padding-right:10px;}
	.house_imglist_xgt li:first-child div.ppimg{border: 2px dashed #0397FF;}
	.house_imglist_xgt li div.ppimg{ padding:5px; border:2px dashed #FF03B2;width:120px; height:90px;margin:0 auto}
	#result{padding-top:15px;}
	 #preview{position:absolute;border:1px solid #f4f4f4;background:#f4f4f4;padding:5px;display:none;color:#fff;}
    #preview img{max-width: 500px;}
	
	.house_imglist_ptt li{ float:left;width:130px;height:115px; display:block; padding-right:10px;}
	.house_imglist_ptt li img{ padding:5px; border:1px #dedede solid;width:120px; height:90px;margin:0 auto}
	.house_imglist_sjt li{ float:left;width:130px;height:115px; display:block; padding-right:10px;  margin-bottom: 5px;}
	.house_imglist_sjt li img{ padding:5px; border:1px #dedede solid;width:120px; height:90px;margin:0 auto}
	
	.picselectt1{position: relative;left: 0px;height: 19px;font-size: 12px;top: 109px;border: 1px solid #DEDEDE;width:70px;}
	.selectpicker{width:220px;height:34px;}
	.card-nav{position: fixed;z-index: 1000000;bottom: 0;background: #fff;width: 100%;height: 70px;box-shadow: 0px 5px 20px #000;opacity: .95;}
	.nav-pills li span{background: url("../../../images/head.png") no-repeat;position: absolute;width: 20px;height: 20px;background-position: -310px -211px;display: inline-block;top: -10px;right: -4px;z-index: 1;cursor: pointer;}

	.modellistbtn{width: 40px;
    height: 40px;
    margin: 3px 10px;
    cursor: pointer;
    background: url(../../../images/head.png) no-repeat;
    background-position: -170px -250px;
    float: right;}


	 .bwizard-steps{display: flex;margin: 0;padding: 0;background: #fff}
	 .bwizard-steps .active{color: #fff;background: #E8453E}
	 .bwizard-steps .active:after{border-left-color: #E8453E}
	 .bwizard-steps .active a{color: #fff;cursor: default;background-color: rgba(51, 122, 183, 0) !important;padding: 0px 0px;}
	 .bwizard-steps .label{position: relative;top: -1px;margin: 0 5px 0 0;padding: 1px 5px 2px}
	 .bwizard-steps .active .label{background-color: #333;}
	 .bwizard-steps li{display: inline-block;position: relative;margin-right: 5px;padding: 12px 17px 10px 30px;*display: inline;*padding-left: 17px;background: #efefef;line-height: 18px;list-style: none;zoom: 1;cursor:pointer;}
	 .bwizard-steps li:first-child{padding-left: 12px;-moz-border-radius: 4px 0 0 4px;-webkit-border-radius: 4px 0 0 4px;border-radius: 4px 0 0 4px;}
	 .bwizard-steps li:first-child:before{border: none}
	 .bwizard-steps li:last-child{margin-right: 0;-moz-border-radius: 0 4px 4px 0;-webkit-border-radius: 0 4px 4px 0;border-radius: 0 4px 4px 0;}
	 .bwizard-steps li:last-child:after{border: none}
	 .bwizard-steps li:before{position: absolute;left: 0;top: 0;height: 0;width: 0;border-bottom: 20px inset transparent;border-left: 20px solid #fff;border-top: 20px inset transparent;content: ""}
	 .bwizard-steps li:after{position: absolute;right: -20px;top: 0;height: 0;width: 0;border-bottom: 20px inset transparent;border-left: 20px solid #efefef;border-top: 20px inset transparent;content: "";z-index: 2;}
	 .bwizard-steps a{color: #333;cursor: default;background-color: rgba(51, 122, 183, 0) !important;padding: 0px 0px !important;}
	 .bwizard-steps a:hover{text-decoration: none}
	 .bwizard-steps.clickable li:not(.active){cursor: pointer}
	 .bwizard-steps.clickable li:hover:not(.active){background: #ccc}
	 .bwizard-steps.clickable li:hover:not(.active):after{border-left-color: #ccc}
	 .bwizard-steps.clickable li:hover:not(.active) a{color: #08c}
	 @media (max-width: 480px){.bwizard-steps li:after,.bwizard-steps li:before{border: none}
	 .bwizard-steps li,.bwizard-steps li.active,.bwizard-steps li:first-child,.bwizard-steps li:last-child{margin-right: 0;padding: 0;background-color: transparent}} 
	 .nav-pills>li>a{cursor: pointer !important;}

	.audiojs{width: 260px;height: 25px;}
	.audiojs .play-pause{width: 25px;height: 25px;padding: 0px 6px;margin: 0px;float: left;overflow: hidden;border-right: 1px solid #000;}
	.audiojs .play{background: url("../../../images/player-graphics.gif") -2px -1px no-repeat;}
	.audiojs .pause{background: url("../../../images/player-graphics.gif") -2px -91px no-repeat;}
	.audiojs .loading{background: url("../../../images/player-graphics.gif") -2px -31px no-repeat;}
	.audiojs .error{background: url("../../../images/player-graphics.gif") -2px -61px no-repeat;}
	.audiojs .scrubber{width: 110px;position: relative;float: left;background: #5a5a5a;height: 14px;margin: 5px 10px;border-top: 1px solid #3f3f3f;border-left: 0px;border-bottom: 0px;overflow: hidden;}
	.audiojs .progress{position: absolute;top: 0px;left: 0px;height: 14px;width: 0px;background: #ccc;z-index: 1;background-image: -webkit-gradient(linear, left top, left bottom, color-stop(0, #ccc), color-stop(0.5, #ddd), color-stop(0.51, #ccc), color-stop(1, #ccc));background-image: -moz-linear-gradient(center top, #ccc 0%, #ddd 50%, #ccc 51%, #ccc 100%);}
	.audiojs .loaded{position: absolute;top: 0px;left: 0px;height: 14px;width: 0px;background: #000;background-image: -webkit-gradient(linear, left top, left bottom, color-stop(0, #222), color-stop(0.5, #333), color-stop(0.51, #222), color-stop(1, #222));background-image: -moz-linear-gradient(center top, #222 0%, #333 50%, #222 51%, #222 100%);}
	.audiojs .time{float: left;height: 25px;line-height: 25px;margin: 0;padding: 0px 2px 0px;border-left: 1px solid #000;color: #ddd;text-shadow: 1px 1px 0px rgba(0, 0, 0, 0.5);}
	.audiojs .time em{padding: 0px 2px 0px 0px;color: #f9f9f9;font-style: normal;}
	.audiojs .time strong{padding: 0px 0px 0px 2px;font-weight: normal;}
	.audiojs .error-message{float: left;margin: 0px;height: 25px;width: 200px;overflow: hidden;line-height: 25px;color: #fff;}

</style>
<link href="/numberone/static/mycss/docs.min.css" rel="stylesheet">
<div class="container">
<section id="wizard">
<div id="rootwizard">
<div class="navbar" style="margin-top:60px;">
<div class="navbar-inner" style=" display: block; margin-top: 15px;">
<div class="container">
<div class="modellistbtn" onclick="showmodel(0);"></div>
<ul class="bwizard-steps nav nav-pills" style="float: right;">
<li class="active"><a href="http://web.9xian.com/usern/wedding?sitecode=59f163eed158a#tab1" class="ztab1" data-toggle="tab" aria-expanded="true">基本信息</a></li>

<li><span class="del delspanxc " title="点击可删除"></span><a href="http://web.9xian.com/usern/wedding?sitecode=59f163eed158a#tab3" class="ztab3" data-toggle="tab">婚礼相册</a></li>
<li><span class="del delspanxy" title="点击可删除"></span><a href="http://web.9xian.com/usern/wedding?sitecode=59f163eed158a#tab4" class="ztab4" data-toggle="tab">爱情宣言</a></li>
<li style="display: none;"><span class="del delspanlc" title="点击可删除"></span><a href="http://web.9xian.com/usern/wedding?sitecode=59f163eed158a#tab5" class="ztab5" data-toggle="tab">婚礼流程</a></li>
<li style="display: none;"><span class="del delspanmv" title="点击可删除"></span><a href="http://web.9xian.com/usern/wedding?sitecode=59f163eed158a#tab6" class="ztab6" data-toggle="tab">MV视频</a></li>
<li><a href="http://web.9xian.com/usern/wedding?sitecode=59f163eed158a#tab7" class="ztab7" data-toggle="tab">发送请柬</a></li>
</ul>
</div>
</div>
</div>
<div style="width: 370px;height: 100%;float: left;">
<div class="phone">
<iframe id="phoneIframe" src="/numberone/static/mycss/pc.html"></iframe>
</div>
</div>
<div class="tab-content" style="width: 770px;float: left;">
<div class="tab-pane active" id="tab1">
<div class="panel-body">
<form method="post" action="http://web.9xian.com/usern/wedding?sitecode=59f163eed158a" class="form-horizontal itemdd1" id="jbform" role="form" enctype="multipart/form-data">
<input type="hidden" id="mappoint" name="mappoint" value="30.663003,113.179016">
<input type="hidden" id="mapzoom" name="mapzoom" value="15">
<textarea style="display: none;" name="bus" id="bus" class="inp-text"></textarea>
<div class="form-group">
<label class="col-sm-2 control-label text-right">模板风格</label>
<div class="col-sm-10">
<select id="stylecode" name="stylecode" onchange="iframeupdatemode();" class="selectpicker form-control select2-hidden-accessible" tabindex="-1" aria-hidden="true">
<option value="2">HelloKitty</option>
<option selected="" value="3">普罗旺斯</option>
<option value="4">遇见幸福</option>
<option value="5">蝶恋花</option>
<option value="6">中式婚礼</option>
<option value="7">紫色雍容</option>
<option value="8">紫语</option>
<option value="9">花开并蒂</option>
<option value="10">永恒之恋</option>
<option value="11">星空约定</option>
<option value="12">爱的旅程</option>
<option value="13">粉色爱恋</option>
<option value="14">浪漫婚礼</option>
<option value="15">金色浪漫</option>
<option value="16">心心相印</option>
<option value="17">英伦风情</option>
<option value="18">蒂芙尼</option>
<option value="20">以爱之名</option>
<option value="21">情定今生</option>
<option value="22">让爱蔓延</option>
<option value="30">将爱</option>
<option value="37">千年之恋</option>
<option value="39">长相厮守</option>
<option value="40">百年好合</option>
<option value="45">蓝胖子</option>
<option value="63">魔法爱情</option>
<option value="68">连枝相依</option>
<option value="87">爱之蔓</option>
<option value="88">水晶之恋</option>
<option value="89">相濡以沫</option>
<option value="90">爱的赞美诗</option>
<option value="99">欧式经典</option>
<option value="138">双人芭蕾</option>
<option value="139">时光的记忆</option>
<option value="145">嫣然花开</option>
<option value="146">紫色倾慕</option>
<option value="147">爱琴海</option>
<option value="148">爱情树</option>
<option value="149">天空之恋</option>
<option value="150">邂逅爱情</option>
<option value="151">放飞爱</option>
<option value="152">爱神花园</option>
<option value="153">柔情蜜意</option>
<option value="154">紫藤锦华</option>
<option value="155">玛丽玫瑰</option>
<option value="156">温婉相随</option>
<option value="160">优雅香槟</option>
</select>
</div>
</div>
<div class="form-group">
<label class="col-sm-2 control-label text-right">婚宴类型</label>
<div class="col-sm-4">
<select id="wedtype" name="wedtype" class="selectpicker form-control select2-hidden-accessible" tabindex="-1" aria-hidden="true">
<option value="举行结婚典礼 敬备喜宴">
举行结婚典礼 敬备喜宴 </option>
<option value="莅临结婚典礼 敬备喜宴" selected="">
莅临结婚典礼 敬备喜宴 </option>
<option value="举行答谢宴 敬备喜宴">
举行答谢宴 敬备喜宴 </option>
<option value="举行回门宴 敬备喜宴">
举行回门宴 敬备喜宴 </option>
<option value="招待宴">
招待宴 </option>
</select>
</div>
<div class="col-sm-4">
<a href="javascript:$(&#39;.momo-hy&#39;).modal({});" class="cm-edit tip" style="
				                      position: relative;    width: 20px;    height: 20px;    display: inline-block;
				                      margin: 7px 2px 7px 10px;    background: url(&quot;../images/head.png&quot;) no-repeat;    background-position: -299px -512px;
				                      float: left;"></a>
<div class="node" style="line-height: 33px;color: #b6bdb9;">点击可自定义编辑</div>
</div>
</div>
<div class="form-group">
<label class="col-sm-2 control-label text-right">新&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;郎</label>
<div class="col-sm-3">
<input class="form-control " placeholder="新郎" id="bridegroom" name="bridegroom" value="帅逼" type="text" required=""
style="display:block;"
>
</div>
<label class="col-sm-2 control-label text-right">新&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;娘</label>
<div class="col-sm-3">
<input class="form-control" placeholder="新娘" id="bride" name="bride" value="靓女" type="text" required="">
</div>
</div>
<div class="form-group">
<label class="col-sm-2 control-label text-right">新郎电话</label>
<div class="col-sm-3">
<input class="form-control" placeholder="新郎电话" name="bridegroomtel" value="13691688743" type="text"  required="">
</div>
<label class="col-sm-2 control-label text-right">新娘电话</label>
<div class="col-sm-3">
<input class="form-control" placeholder="新娘电话" name="bridetel" value="15989504689" type="text"  required="">
</div>
</div>
<div class="form-group">
<label class="col-sm-2 control-label text-right">背景音乐</label>
<div class="col-sm-4">
<select id="music" name="music" class="selectpicker form-control select2-hidden-accessible" tabindex="-1" aria-hidden="true">
<option value="http://ws.stream.qqmusic.qq.com/C100000FT04R4Voybn.m4a?fromtag=0" selected="">自定义音乐</option>
<option value="">无音乐</option>
<optgroup label="------------结婚------------">
<option value="http://ws.stream.qqmusic.qq.com/659638.m4a?fromtag=30">A Little Love</option>
<option value="http://ws.stream.qqmusic.qq.com/5959027.m4a?fromtag=30">ALL OF ME</option>
<option value="http://cc.stream.qqmusic.qq.com/C1000049gkkC07p9vl.m4a?fromtag=52">ALWAYS</option>
<option value="yinyue.9xian.com/WestlifeBeautifulInWhite.mp3">Beautiful In White</option>
<option value="http://cc.stream.qqmusic.qq.com/C100000SDg9K0xy93i.m4a?fromtag=52">Because of You</option>
<option value="http://ws.stream.qqmusic.qq.com/1683382.m4a?fromtag=30">Because You Loved Me</option>
<option value="http://cc.stream.qqmusic.qq.com/C100001uaM0h0UnWD7.m4a?fromtag=52">Britney Spears</option>
<option value="http://7xkv7i.com1.z0.glb.clouddn.com/Can’s%20stop%20love.mp3">Can’s stop love</option>
<option value="http://ws.stream.qqmusic.qq.com/616092.m4a?fromtag=30">Can’t take my eyes off you</option>
<option value="http://cc.stream.qqmusic.qq.com/C10000334ict2l1K0H.m4a?fromtag=52">Close To You</option>
<option value="http://cc.stream.qqmusic.qq.com/C1000045yVVK2ZDuvy.m4a?fromtag=52">Could This Be Love</option>
<option value="http://ws.stream.qqmusic.qq.com/2560391.m4a?fromtag=30">Endless love</option>
<option value="http://ws.stream.qqmusic.qq.com/415890.m4a?fromtag=30">everday i love</option>
<option value="http://ws.stream.qqmusic.qq.com/101834072.m4a?fromtag=30">Fall In Fall </option>
<option value="http://ws.stream.qqmusic.qq.com/2827556.m4a?fromtag=30">Fidelity</option>
<option value="http://cc.stream.qqmusic.qq.com/C100002esgaM4Bi0wp.m4a?fromtag=52">happy</option>
<option value="http://cc.stream.qqmusic.qq.com/C100003lqxH22ufyAb.m4a?fromtag=52">Heartbeats</option>
<option value="http://ws.stream.qqmusic.qq.com/5599608.m4a?fromtag=30">I Choose You</option>
<option value="http://ws.stream.qqmusic.qq.com/34269.m4a?fromtag=30">I could be the one</option>
<option value="http://ws.stream.qqmusic.qq.com/1321759.m4a?fromtag=30">I do</option>
<option value="http://cc.stream.qqmusic.qq.com/C100001SAaPQ3WId8V.m4a?fromtag=52">I Do</option>
<option value="http://ws.stream.qqmusic.qq.com/7209601.m4a?fromtag=30">i feel you</option>
<option value="http://cc.stream.qqmusic.qq.com/C100001zanGL01F5TT.m4a?fromtag=52">I Feel You</option>
<option value="http://ws.stream.qqmusic.qq.com/102385661.m4a?fromtag=30">i love you</option>
<option value="http://cc.stream.qqmusic.qq.com/C100002q3JvW01b9TU.m4a?fromtag=52">I Wanna Be With You</option>
<option value="http://ws.stream.qqmusic.qq.com/102295732.m4a?fromtag=30">I’m yours</option>
<option value="http://cc.stream.qqmusic.qq.com/C1000009uxu21Ieqjm.m4a?fromtag=52">L-O-V-E</option>
<option value="http://h59xianmp3.9xian.com/liekkas.mp3">liekkas</option>
<option value="http://ws.stream.qqmusic.qq.com/5115775.m4a?fromtag=30">LOVE</option>
<option value="http://ws.stream.qqmusic.qq.com/490141.m4a?fromtag=30">love paradise</option>
<option value="http://ws.stream.qqmusic.qq.com/524465.m4a?fromtag=30">Loving You</option>
<option value="http://ws.stream.qqmusic.qq.com/726298.m4a?fromtag=30">marry you</option>
<option value="http://ws.stream.qqmusic.qq.com/5517299.m4a?fromtag=30">marry me</option>
<option value="http://ws.stream.qqmusic.qq.com/C100004OPiqo2hmCbW.m4a?fromtag=0">Moon River</option>
<option value="http://cc.stream.qqmusic.qq.com/C100004OPiqo2hmCbW.m4a?fromtag=52">Moon River</option>
<option value="http://cc.stream.qqmusic.qq.com/C100002dJgxn2Lyw0P.m4a?fromtag=52">More Than Light</option>
<option value="http://cc.stream.qqmusic.qq.com/C10000254jAH3pTjCf.m4a?fromtag=52">My Love</option>
<option value="http://ws.stream.qqmusic.qq.com/624419.m4a?fromtag=30">Nothing's Gonna Change My Love For You</option>
<option value="http://ws.stream.qqmusic.qq.com/2310265.m4a?fromtag=30">Perfect moment</option>
<option value="http://cc.stream.qqmusic.qq.com/C100001WZlJs2yLcOO.m4a?fromtag=52">Quizas</option>
<option value="http://ws.stream.qqmusic.qq.com/911384.m4a?fromtag=30">Stay here foreve</option>
<option value="http://ws.stream.qqmusic.qq.com/9058628.m4a?fromtag=30">Sugar</option>
<option value="http://ws.stream.qqmusic.qq.com/101471801.m4a?fromtag=30">Suger</option>
<option value="http://ws.stream.qqmusic.qq.com/4714592.m4a?fromtag=30">Sweet Dream</option>
<option value="http://7xkv7i.com1.z0.glb.clouddn.com/SweetDream.mp3">SweetDream</option>
<option value="http://cc.stream.qqmusic.qq.com/C10000251pKt4bLVpz.m4a?fromtag=52">The Rose</option>
<option value="http://ws.stream.qqmusic.qq.com/1321949.m4a?fromtag=30">This love</option>
<option value="yinyue.9xian.com/TouchLove.mp3">TouchLove</option>
<option value="http://yy.9xian.com/58202985a995c.mp3">Valentine</option>
<option value="http://cc.stream.qqmusic.qq.com/C100000Ov56i1e6MrM.m4a?fromtag=52">Wedding March</option>
<option value="http://ws.stream.qqmusic.qq.com/4995520.m4a?fromtag=30">What Are Words</option>
<option value="http://ws.stream.qqmusic.qq.com/1250583.m4a?fromtag=30">一家一</option>
<option value="http://cc.stream.qqmusic.qq.com/C1000031MMo90FDbTl.m4a?fromtag=52">一次就好</option>
<option value="http://7xkv7i.com1.z0.glb.clouddn.com/qicai.mp3">七彩</option>
<option value="http://ws.stream.qqmusic.qq.com/145881.m4a?fromtag=30">今天你要嫁给我</option>
<option value="http://ws.stream.qqmusic.qq.com/4822857.m4a?fromtag=30">你最珍贵</option>
<option value="http://ws.stream.qqmusic.qq.com/398903.m4a?fromtag=30">依恋</option>
<option value="http://7xkv7i.com1.z0.glb.clouddn.com/kanongcunyinyue.mp3">卡农纯音乐</option>
<option value="http://7xkv7i.com1.z0.glb.clouddn.com/kanong.mp3">卡农钢琴曲</option>
<option value="http://7xkv7i.com1.z0.glb.clouddn.com/keaisong.mp3">可爱颂</option>
<option value="http://ws.stream.qqmusic.qq.com/5080232.m4a?fromtag=30">咱们结婚吧</option>
<option value="http://7xkv7i.com1.z0.glb.clouddn.com/duolaameng.mp3">哆啦A梦</option>
<option value="http://ws.stream.qqmusic.qq.com/804997.m4a?fromtag=30">因为爱情</option>
<option value="http://ws.stream.qqmusic.qq.com/165517.m4a?fromtag=30">大城小爱</option>
<option value="http://ws.stream.qqmusic.qq.com/9084192.m4a?fromtag=30">婚礼进行曲</option>
<option value="http://ws.stream.qqmusic.qq.com/7419941.m4a?fromtag=30">小手拉大手</option>
<option value="http://7xkv7i.com1.z0.glb.clouddn.com/dashouxiaoshouriyu.mp3">小手牵大手</option>
<option value="http://7xkv7i.com1.z0.glb.clouddn.com/daxiaoshou.mp3">小手牵大手原版</option>
<option value="http://cc.stream.qqmusic.qq.com/C100000vNzlL39BsNt.m4a?fromtag=52">少年锦时</option>
<option value="http://ws.stream.qqmusic.qq.com/95742.m4a?fromtag=30">屋顶</option>
<option value="http://ws.stream.qqmusic.qq.com/2855787.m4a?fromtag=30">幸福的两口子</option>
<option value="http://ws.stream.qqmusic.qq.com/4830128.m4a?fromtag=30">情人</option>
<option value="http://ws.stream.qqmusic.qq.com/4830911.m4a?fromtag=30">愿得一人心
</option>
<option value="http://cc.stream.qqmusic.qq.com/C100001EOqht4Gkd6P.m4a?fromtag=52">我们好像在哪见过</option>
<option value="http://ws.stream.qqmusic.qq.com/5075289.m4a?fromtag=30">我们结婚吧</option>
<option value="http://ws.stream.qqmusic.qq.com/134464.m4a?fromtag=30">我会永远爱你</option>
<option value="http://ws.stream.qqmusic.qq.com/4893816.m4a?fromtag=30">我愿意</option>
<option value="http://cc.stream.qqmusic.qq.com/C100002XPp4023M50E.m4a?fromtag=52">我要你</option>
<option value="http://7xkv7i.com1.z0.glb.clouddn.com/mingtianwoyaojiagenni.mp3">明天我要嫁给你了</option>
<option value="http://ws.stream.qqmusic.qq.com/169763.m4a?fromtag=30">暖暖</option>
<option value="http://ws.stream.qqmusic.qq.com/29942.m4a?fromtag=30">最浪漫的事</option>
<option value="http://ws.stream.qqmusic.qq.com/813241.m4a?fromtag=30">最重要的决定</option>
<option value="http://ws.stream.qqmusic.qq.com/1287804.m4a?fromtag=30">月亮代表我的心</option>
<option value="http://ws.stream.qqmusic.qq.com/102329011.m4a?fromtag=30">有你的快乐</option>
<option value="http://ws.stream.qqmusic.qq.com/101828609.m4a?fromtag=30">来自星星的你</option>
<option value="yinyue.9xian.com/laizhixingxingdeni.mp3">来自星星的你1</option>
<option value="http://ws.stream.qqmusic.qq.com/101824587.m4a?fromtag=30">来自星星的你2</option>
<option value="http://cc.stream.qqmusic.qq.com/C100003BiYM71E0j7X.m4a?fromtag=52">梦中的婚礼</option>
<option value="http://7xkv7i.com1.z0.glb.clouddn.com/ciqingkedai.mp3">此情可待</option>
<option value="http://7xkv7i.com1.z0.glb.clouddn.com/shuijing.mp3">水晶</option>
<option value="http://7xkv7i.com1.z0.glb.clouddn.com/faguoqingge.mp3">法国情歌</option>
<option value="http://7xkv7i.com1.z0.glb.clouddn.com/aibuyouji.mp3">爱不由己</option>
<option value="http://ws.stream.qqmusic.qq.com/5092531.m4a?fromtag=30">爱你</option>
<option value="http://ws.stream.qqmusic.qq.com/7090.m4a?fromtag=30">爱很简单</option>
<option value="http://ws.stream.qqmusic.qq.com/5104517.m4a?fromtag=30">爱很美</option>
<option value="http://ws.stream.qqmusic.qq.com/157558.m4a?fromtag=30">爱的就是你</option>
<option value="http://cc.stream.qqmusic.qq.com/C100000xdZuV2LcQ19.m4a?fromtag=52">甜甜的</option>
<option value="http://ws.stream.qqmusic.qq.com/101803862.m4a?fromtag=30">稳稳的幸福</option>
<option value="http://ws.stream.qqmusic.qq.com/478837.m4a?fromtag=30">约定</option>
<option value="http://ws.stream.qqmusic.qq.com/5026333.m4a?fromtag=30">终于等到你</option>
<option value="http://cc.stream.qqmusic.qq.com/C100003D41202UWCSe.m4a?fromtag=52">结了</option>
<option value="http://7xkv7i.com1.z0.glb.clouddn.com/jiehun.mp3">结婚</option>
<option value="http://ws.stream.qqmusic.qq.com/7392.m4a?fromtag=30">给你们</option>
<option value="http://ws.stream.qqmusic.qq.com/7451.m4a?fromtag=30">花好月圆</option>
<option value="http://cc.stream.qqmusic.qq.com/C100000Egh8e0y9LXl.m4a?fromtag=52">说干什么呢</option>
<option value="http://ws.stream.qqmusic.qq.com/751049.m4a?fromtag=30">这就是爱</option>
<option value="http://ws.stream.qqmusic.qq.com/8145.m4a?fromtag=30">遇见</option>
<option value="http://ws.stream.qqmusic.qq.com/102993024.m4a?fromtag=30">黑白配</option>
</optgroup>
<optgroup label="------------生日------------">
<option value="http://cc.stream.qqmusic.qq.com/C1000029xI7x2Ztn42.m4a?fromtag=52">Assassins of Kings</option>
<option value="http://cc.stream.qqmusic.qq.com/C100003GVCWO1rhhOL.m4a?fromtag=52">Boardwalk Walk</option>
<option value="http://cc.stream.qqmusic.qq.com/C100003B7e6E2LNliz.m4a?fromtag=52">Brazil</option>
<option value="http://cc.stream.qqmusic.qq.com/C100004c1n552tWx2P.m4a?fromtag=52">Breath And Life</option>
<option value="http://cc.stream.qqmusic.qq.com/C100003onnin3A8j6u.m4a?fromtag=52">Buffle</option>
<option value="http://cc.stream.qqmusic.qq.com/C100001c0l3s3SxbIR.m4a?fromtag=52">Dogs of War</option>
<option value="http://cc.stream.qqmusic.qq.com/C100004JX6SM0PqbSV.m4a?fromtag=52">Don’t Make Me Wait For Love</option>
<option value="http://cc.stream.qqmusic.qq.com/C100001y1ln32ob3U8.m4a?fromtag=52">Dragon Rider</option>
<option value="http://cc.stream.qqmusic.qq.com/C100002RFbtP2jrpIi.m4a?fromtag=52">elan</option>
<option value="http://cc.stream.qqmusic.qq.com/C1000028FVlt20D7CY.m4a?fromtag=52">End Credits</option>
<option value="http://cc.stream.qqmusic.qq.com/C100001m7RmU2JYZUC.m4a?fromtag=52">Forever In Love</option>
<option value="http://cc.stream.qqmusic.qq.com/C100003SUgI31ifs5k.m4a?fromtag=52">Going Home</option>
<option value="http://cc.stream.qqmusic.qq.com/C100000In57c12JAwQ.m4a?fromtag=52">Human Legacy</option>
<option value="http://cc.stream.qqmusic.qq.com/C100002fY2wv19LxpH.m4a?fromtag=52">If I Kissed You</option>
<option value="http://cc.stream.qqmusic.qq.com/C100000AMP7V3t6Rd1.m4a?fromtag=52">Jasmine Flower</option>
<option value="http://cc.stream.qqmusic.qq.com/C100002TqPAB4A26IB.m4a?fromtag=52">Judy\'s Song</option>
<option value="http://cc.stream.qqmusic.qq.com/C100000eO6sR3ebTJV.m4a?fromtag=52">Just Me And You</option>
<option value="http://cc.stream.qqmusic.qq.com/C100004T0vEV0YENtc.m4a?fromtag=52">let it go</option>
<option value="http://cc.stream.qqmusic.qq.com/C100001JK2iC120WKf.m4a?fromtag=52">Love Is an Open Door</option>
<option value="http://cc.stream.qqmusic.qq.com/C100001JK2iC120WKf.m4a?fromtag=52">Love Is an Open Door</option>
<option value="http://cc.stream.qqmusic.qq.com/C100002AyeSS1IS4CN.m4a?fromtag=52">Love\'s Not Here Anymore</option>
<option value="http://cc.stream.qqmusic.qq.com/C100000gkyFr1qOIZ0.m4a?fromtag=52">Loving You</option>
<option value="http://cc.stream.qqmusic.qq.com/C100004IHhtt36O1e4.m4a?fromtag=52">Midnight Motion </option>
<option value="http://cc.stream.qqmusic.qq.com/C100002vs2vR3JYZZf.m4a?fromtag=52">Mirame Bailar</option>
<option value="http://cc.stream.qqmusic.qq.com/C1000047J5LL25IxZw.m4a?fromtag=52">Moving</option>
<option value="http://cc.stream.qqmusic.qq.com/C1000030AJe93O6hDU.m4a?fromtag=52">Opening Titles</option>
<option value=" http://cc.stream.qqmusic.qq.com/C100004HWejC0WBzrO.m4a?fromtag=52">Por Una Cabeza </option>
<option value="http://cc.stream.qqmusic.qq.com/C100003Dsxxu0Ei861.m4a?fromtag=52">Sake For Two</option>
<option value="http://cc.stream.qqmusic.qq.com/C100000d8zgD2oN02l.m4a?fromtag=52">String Tek</option>
<option value="http://cc.stream.qqmusic.qq.com/C100000ZxKcD0SmrOy.m4a?fromtag=52">The Enemy of My Enemy is My Friend</option>
<option value="http://cc.stream.qqmusic.qq.com/C100002tSs280Wh2uC.m4a?fromtag=52">The Mass</option>
<option value="http://cc.stream.qqmusic.qq.com/C100002pmwtE1f5umx.m4a?fromtag=52">The Power Of Suggestion</option>
<option value="http://cc.stream.qqmusic.qq.com/C100001M4BVh3KuKUD.m4a?fromtag=52">Tree of Life</option>
<option value="http://cc.stream.qqmusic.qq.com/C100002vkUTq3QsCmZ.m4a?fromtag=52">Will And Elizabeth</option>
<option value="http://cc.stream.qqmusic.qq.com/C100001QgLGc3AaCej.m4a?fromtag=52">Without Words</option>
<option value="http://cc.stream.qqmusic.qq.com/C1000016Xoa84OBXv3.m4a?fromtag=52">You Raise Me Up</option>
<option value="http://cc.stream.qqmusic.qq.com/C100003oQxj525YrJj.m4a?fromtag=52">三只小熊</option>
<option value="http://cc.stream.qqmusic.qq.com/C100000BzbAI4Bg31p.m4a?fromtag=52">么么哒</option>
<option value="http://cc.stream.qqmusic.qq.com/C100001tUODo4ahTua.m4a?fromtag=52">你想堆雪人吗</option>
<option value="http://cc.stream.qqmusic.qq.com/C1000006cEiK4JGART.m4a?fromtag=52">别看我只是一只羊</option>
<option value="http://cc.stream.qqmusic.qq.com/C100003Ky1NC0Az872.m4a?fromtag=52">可爱颂 </option>
<option value="http://cc.stream.qqmusic.qq.com/C100002I24zg4dKRMs.m4a?fromtag=52">宝贝你听到了吗</option>
<option value="http://cc.stream.qqmusic.qq.com/C1000000swUs2L5HhC.m4a?fromtag=52">宝贝我的宝 </option>
<option value="http://cc.stream.qqmusic.qq.com/C100002AuaP80mxM9l.m4a?fromtag=52">宝贝（张悬）</option>
<option value=" http://cc.stream.qqmusic.qq.com/C100002Ws7QQ3CcAWN.m4a?fromtag=52">小叮当</option>
<option value="http://cc.stream.qqmusic.qq.com/C100000Q4k9r1GgToo.m4a?fromtag=52">彩虹糖的梦</option>
<option value="http://cc.stream.qqmusic.qq.com/C1000026TRD61ci6lF.m4a?fromtag=52">樱桃小丸子主题曲</option>
<option value="http://cc.stream.qqmusic.qq.com/C100000GjhPf13YSMF.m4a?fromtag=52">爱我你就抱抱我</option>
<option value="http://cc.stream.qqmusic.qq.com/C100001MXsNh4QzRsi.m4a?fromtag=52">爸爸去哪儿</option>
<option value="http://cc.stream.qqmusic.qq.com/C100003KnDaO4X5IKX.m4a?fromtag=52">牛奶歌</option>
<option value="http://cc.stream.qqmusic.qq.com/C100003qtMo71Ic9wX.m4a?fromtag=52">生日快乐</option>
</optgroup>
</select>
<span class="select2 select2-container select2-container--default" dir="ltr" style="width: 220px;">
<span class="dropdown-wrapper" aria-hidden="true"></span></span>
</div>
<div class="col-sm-1">
<a href="javascript:$(&#39;.momo-music&#39;).modal({});" class="cm-edit cm-music tip"></a>
</div>
<div class="col-sm-2" id="js_audio">
<script src="/numberone/static/myjs/audio.min.js"></script>
<div class="audiojs  playing" classname="audiojs" id="audiojs_wrapper0"><audio id="J_MusicPlayer" src="http://ws.stream.qqmusic.qq.com/C100000FT04R4Voybn.m4a?fromtag=0" preload="auto"></audio>          <div class="play-pause">             <p class="play"></p>             <p class="pause"></p>             <p class="loading"></p>             <p class="error"></p>           </div>           <div class="scrubber">             <div class="progress" style="width: 10.6209%;"></div>             <div class="loaded" style="width: 100%;"></div>           </div>           <div class="time">             <em class="played">00:28</em>/<strong class="duration">04:32</strong>           </div>           <div class="error-message"></div></div>
<script>var as; audiojs.events.ready(function() { as = audiojs.createAll(); });</script>
</div>
</div>
<div class="form-group">
<label class="col-sm-2 control-label text-right">封面照片</label>
<div class="col-sm-2">
<div class="preview-img">
<img id="imgbackphone" src="/numberone/static/mycss/IY2CIdEaVOq6FWhMD0mPs48a5erV010I.jpg">
</div>
</div>
<div class="col-sm-5">
<div class="preview-area">
<div class="clear">
<span style="float: left">裁剪尺寸：竖版640x1136像素</span>
</div>
<div class="btn-area clear">
<style type="text/css">
				          												
				                                  </style>
<div id="uploadifive-backphone_upload" class="uploadifive-button" style="height: 30px; line-height: 30px; overflow: hidden; position: relative; text-align: center; width: 100px;">+选择图片<input type="file" name="backphone_upload" id="backphone_upload" value="" style="display: none;"><input type="file" style="font-size: 30px; opacity: 0; position: absolute; right: -3px; top: -3px; z-index: 999;" accept="image/jpeg,image/png;"></div>
<input type="hidden" name="backphone_linkcode" value="2699498">
<input type="hidden" name="backphone" value="http://qjpic.9xian.com/IY2CIdEaVOq6FWhMD0mPs48a5erV010I.jpg?imageMogr2/auto-orient/crop/!532x798a0a0">
<a id="cimgbackphone" href="javascript:editpic(2699498,&#39;fengmian&#39;);" linkcode="2699498" class="crop btn btn-default btn-xs" style="    margin-top: 10px;">x裁剪图片</a>
</div>
</div>
</div>
<div id="queue_backphone"></div>
</div>
<div class="form-group">
<label class="col-sm-2 control-label text-right">婚宴日期</label>
<div class="col-sm-4">
<input class="form-control form_datetime" placeholder="婚宴日期" readonly="" name="weddate" value="2018年10月26日 星期五" type="text" required="" id="scoller1508996910056">
</div>
<label class="col-sm-2 control-label text-right">时间</label>
<div class="col-sm-2">
<input class="form-control form_datetime1" placeholder="时间" readonly="" name="wedtime" value="11:59" type="text" required="" id="scoller1508996910057">
</div>
</div>
<div class="form-group">
<label class="col-sm-2 control-label text-right">设席酒店</label>
<div class="col-sm-4">
<input class="form-control" placeholder="设席酒店" name="hotel" value="天门酒店" type="text" required="">
</div>
</div>
<div class="form-group">
<label class="col-sm-2 control-label text-right">酒店地址</label>
<div class="col-sm-5">
<input class="form-control" placeholder="酒店地址" name="address" value="" type="text" required="">
</div>
<div class="col-sm-4">
<a href="javascript:$(&#39;.momo-map&#39;).modal({});setTimeout(&#39;initmap();&#39;,1000)" class="mapseachbtn">
<i class="cm-location"></i>
<span style="display: inline-block;color: #000;">搜索定位</span>
</a>
</div>
</div>
<div class="form-group qj-coveret">
<label class="col-sm-2 control-label text-right">请柬蒙版</label>
<div class="col-sm-5">
<select id="coveretc" name="coveretc" onchange="iframeupdatemode()" class="selectpicker form-control select2-hidden-accessible" tabindex="-1" aria-hidden="true">
<option selected="selected" value="cmoren">默认</option>
<option value="guaguaka">刮刮卡</option>
<option value="kiss">亲吻打开</option>
<option value="sandian">三点打开</option>
<option value="fingerprint">指纹开启</option>
<option value="yaoyiyao">摇一摇</option>
</select>
</div>
</div>
<div class="form-group qj-floatet">
<label class="col-sm-2 control-label text-right">页面漂浮</label>
<div class="col-sm-5">
<select id="floatetc" name="floatetc" onchange="iframeupdatemode()" class="selectpicker form-control select2-hidden-accessible" tabindex="-1" aria-hidden="true">
<option value="fmoren">默认</option>
<option value="realLeaf">落叶</option>
<option value="paopao">汽泡</option>
<option value="caipao">彩泡</option>
<option value="meigui">花瓣</option>
<option value="meigui1">玫瑰</option>
<option value="snow">雪花</option>
<option value="meteor">飘雪</option>
<option value="cloudbg">云</option>
<option value="starts">星落</option>
<option value="liuxing">流星</option>
<option value="huaxu">花絮</option>
<option selected="selected" value="pugongy">蒲公英</option>
</select>
</div>
</div>

<div class="form-group" id="lcs_tt1">
<label class="col-sm-2 control-label text-right">宾客留言</label>
<div class="col-sm-5">
<div class="lcs_wrap"><input type="checkbox" name="hidemode228" id="hidemode228" value="0" class="lcs_check lcs_tt1" checked="" autocomplete="off"><div class="lcs_switch  lcs_on lcs_checkbox_switch"><div class="lcs_cursor"></div><div class="lcs_label lcs_label_on">ON</div><div class="lcs_label lcs_label_off">OFF</div></div></div>
</div>
</div>
<div class="form-group" id="lcs_tt2">
<label class="col-sm-2 control-label text-right">地图导航</label>
<div class="col-sm-5">
<div class="lcs_wrap"><input type="checkbox" name="hidemode222" id="hidemode222" value="0" class="lcs_check lcs_tt2" checked="" autocomplete="off"><div class="lcs_switch  lcs_on lcs_checkbox_switch"><div class="lcs_cursor"></div><div class="lcs_label lcs_label_on">ON</div><div class="lcs_label lcs_label_off">OFF</div></div></div>
</div>
</div>
<br class="clear">
<br class="clear">
<br class="clear">
</form>
</div>
</div>
<div class="tab-pane" id="tab2">
<div class="panel-body">
<form method="post" action="http://web.9xian.com/usern/wedding?sitecode=59f163eed158a" class="form-horizontal itemdd1" id="lhform" role="form" enctype="multipart/form-data">
<div class="form-group">
<div class="col-sm-12 ">
<label class="col-sm-2 control-label text-right" style="    width: 94px !important;">轮播相册：</label><br class="clear">
<div class="bs-callout bs-callout-danger" style="margin:0px;">
<div id="uploadifive-file_upload_ptt" class="uploadifive-button" style="height: 30px; line-height: 30px; overflow: hidden; position: relative; text-align: center; width: 100px;">+上传图片<input id="file_upload_ptt" name="file_upload" class="btn btn-default btn-xs" type="file" multiple="true" style="display: none;"><input type="file" style="font-size: 30px; opacity: 0; position: absolute; right: -3px; top: -3px; z-index: 999;" multiple="multiple" accept="image/jpeg,image/png"></div>
<div id="queue_ptt"></div>
<div id="result">
<div class="well" style="overflow:hidden;margin-bottom:0px;padding:10px;clear:both;">
<ul class="house_imglist_ptt ui-sortable">
</ul>
</div>
</div>
</div>
</div>
</div>
</form>
</div>
</div>
<div class="tab-pane" id="tab3">
<div class="panel-body">
<form method="post" action="http://web.9xian.com/usern/wedding?sitecode=59f163eed158a" class="form-horizontal itemdd1" id="xcform" role="form" enctype="multipart/form-data">
<div class="form-group">
<div class="col-sm-12">
<label class="col-sm-2 control-label text-right" style="    width: 94px !important;">婚礼相册：</label><br class="clear">
<div class="bs-callout bs-callout-danger" style="margin:0px;">
<div id="uploadifive-file_upload_sjt" class="uploadifive-button" style="height: 30px; line-height: 30px; overflow: hidden; position: relative; text-align: center; width: 100px;">+上传图片<input id="file_upload_sjt" name="file_upload_sjt" class="btn btn-default btn-xs" type="file" multiple="true" style="display: none;"><input type="file" style="font-size: 30px; opacity: 0; position: absolute; right: -3px; top: -3px; z-index: 999;" multiple="multiple" accept="image/jpeg,image/png"></div>
<div id="queue_sjt"></div>
<div id="result">
<div class="well" style="overflow:hidden;margin-bottom:0px;padding:10px;clear:both;">
<ul class="house_imglist_sjt ui-sortable"><li class="pic-2699511 ui-sortable-handle" desc="null"><div class="file_cancel"><a title="删除图片" class="a-del" onclick="delpic(2699511);" href="javascript:;"></a><a title="裁剪图片" class="a-edit" onclick="editpic(2699511);" href="javascript:;"></a><a title="编辑图片" class="a-oen" onclick="setpicdesc(2699511);" href="javascript:;"></a></div><select class="picselectt1" onchange="setpictx(this.value,2699511)"><option value="0">飞入</option><option value="1">左右</option><option value="2">右左</option><option value="3">放大</option><option selected="selected" value="4">缩小</option><option value="5">左右重影</option><option value="6">抖动</option><option value="7">特写</option><option value="8">翻转</option><option value="9">朦胧</option><option value="10">上下重影</option><option value="11">移动</option><option value="12">3D</option><option value="13">航拍</option><option value="14">无</option></select><div class="ppimg" style="    border: 1px dashed #BFBFBF;width: 120px;height: 90px;background: url(http://qjpic.9xian.com/1SD7Nyt9Tg40XMuhBMvKa0zMq6Nn7bsg.jpg?imageView2/2/w/300/h/300/interlace/0/q/90) no-repeat;background-size: auto 100%;background-position: center;"></div><input type="hidden" name="picssort[]" value="2699511"></li><li class="pic-2699512 ui-sortable-handle" desc="null"><div class="file_cancel"><a title="删除图片" class="a-del" onclick="delpic(2699512);" href="javascript:;"></a><a title="裁剪图片" class="a-edit" onclick="editpic(2699512);" href="javascript:;"></a><a title="编辑图片" class="a-oen" onclick="setpicdesc(2699512);" href="javascript:;"></a></div><select class="picselectt1" onchange="setpictx(this.value,2699512)"><option selected="selected" value="0">飞入</option><option value="1">左右</option><option value="2">右左</option><option value="3">放大</option><option value="4">缩小</option><option value="5">左右重影</option><option value="6">抖动</option><option value="7">特写</option><option value="8">翻转</option><option value="9">朦胧</option><option value="10">上下重影</option><option value="11">移动</option><option value="12">3D</option><option value="13">航拍</option><option value="14">无</option></select><div class="ppimg" style="    border: 1px dashed #BFBFBF;width: 120px;height: 90px;background: url(http://qjpic.9xian.com/9YNacyTeDDVtS8aWgSwWzsrRW9J6n61g.jpg?imageView2/2/w/300/h/300/interlace/0/q/90) no-repeat;background-size: auto 100%;background-position: center;"></div><input type="hidden" name="picssort[]" value="2699512"></li><li class="pic-2699514 ui-sortable-handle" desc="null"><div class="file_cancel"><a title="删除图片" class="a-del" onclick="delpic(2699514);" href="javascript:;"></a><a title="裁剪图片" class="a-edit" onclick="editpic(2699514);" href="javascript:;"></a><a title="编辑图片" class="a-oen" onclick="setpicdesc(2699514);" href="javascript:;"></a></div><select class="picselectt1" onchange="setpictx(this.value,2699514)"><option value="0">飞入</option><option value="1">左右</option><option value="2">右左</option><option value="3">放大</option><option value="4">缩小</option><option selected="selected" value="5">左右重影</option><option value="6">抖动</option><option value="7">特写</option><option value="8">翻转</option><option value="9">朦胧</option><option value="10">上下重影</option><option value="11">移动</option><option value="12">3D</option><option value="13">航拍</option><option value="14">无</option></select><div class="ppimg" style="    border: 1px dashed #BFBFBF;width: 120px;height: 90px;background: url(http://qjpic.9xian.com/WcIT6dqS0HmDgVJKh2GfsQQB2ILdYrCG.jpg?imageMogr2/auto-orient/crop/!307x460a246a71/thumbnail/300x300) no-repeat;background-size: auto 100%;background-position: center;"></div><input type="hidden" name="picssort[]" value="2699514"></li><li class="pic-2699513 ui-sortable-handle" desc="null"><div class="file_cancel"><a title="删除图片" class="a-del" onclick="delpic(2699513);" href="javascript:;"></a><a title="裁剪图片" class="a-edit" onclick="editpic(2699513);" href="javascript:;"></a><a title="编辑图片" class="a-oen" onclick="setpicdesc(2699513);" href="javascript:;"></a></div><select class="picselectt1" onchange="setpictx(this.value,2699513)"><option value="0">飞入</option><option value="1">左右</option><option value="2">右左</option><option value="3">放大</option><option value="4">缩小</option><option value="5">左右重影</option><option value="6">抖动</option><option selected="selected" value="7">特写</option><option value="8">翻转</option><option value="9">朦胧</option><option value="10">上下重影</option><option value="11">移动</option><option value="12">3D</option><option value="13">航拍</option><option value="14">无</option></select><div class="ppimg" style="    border: 1px dashed #BFBFBF;width: 120px;height: 90px;background: url(http://qjpic.9xian.com/hrtv3eBv3CFJReo9l4BnDu5pJKPygMVr.jpg?imageMogr2/auto-orient/crop/!577x384a140a51/thumbnail/300x300) no-repeat;background-size: auto 100%;background-position: center;"></div><input type="hidden" name="picssort[]" value="2699513"></li><li class="pic-2699515 ui-sortable-handle" desc="null"><div class="file_cancel"><a title="删除图片" class="a-del" onclick="delpic(2699515);" href="javascript:;"></a><a title="裁剪图片" class="a-edit" onclick="editpic(2699515);" href="javascript:;"></a><a title="编辑图片" class="a-oen" onclick="setpicdesc(2699515);" href="javascript:;"></a></div><select class="picselectt1" onchange="setpictx(this.value,2699515)"><option value="0">飞入</option><option value="1">左右</option><option value="2">右左</option><option value="3">放大</option><option value="4">缩小</option><option value="5">左右重影</option><option value="6">抖动</option><option value="7">特写</option><option value="8">翻转</option><option value="9">朦胧</option><option value="10">上下重影</option><option value="11">移动</option><option selected="selected" value="12">3D</option><option value="13">航拍</option><option value="14">无</option></select><div class="ppimg" style="    border: 1px dashed #BFBFBF;width: 120px;height: 90px;background: url(http://qjpic.9xian.com/wYUBRg4J0mAHDx57MKo2fvv5QOdYkziX.jpg?imageView2/2/w/300/h/300/interlace/0/q/90) no-repeat;background-size: auto 100%;background-position: center;"></div><input type="hidden" name="picssort[]" value="2699515"></li><li class="pic-2699516 ui-sortable-handle" desc="null"><div class="file_cancel"><a title="删除图片" class="a-del" onclick="delpic(2699516);" href="javascript:;"></a><a title="裁剪图片" class="a-edit" onclick="editpic(2699516);" href="javascript:;"></a><a title="编辑图片" class="a-oen" onclick="setpicdesc(2699516);" href="javascript:;"></a></div><select class="picselectt1" onchange="setpictx(this.value,2699516)"><option value="0">飞入</option><option value="1">左右</option><option value="2">右左</option><option value="3">放大</option><option value="4">缩小</option><option value="5">左右重影</option><option value="6">抖动</option><option value="7">特写</option><option selected="selected" value="8">翻转</option><option value="9">朦胧</option><option value="10">上下重影</option><option value="11">移动</option><option value="12">3D</option><option value="13">航拍</option><option value="14">无</option></select><div class="ppimg" style="    border: 1px dashed #BFBFBF;width: 120px;height: 90px;background: url(http://qjpic.9xian.com/uDpkc3aiVEQTmFv4VXHOYbfJ5jqZeqWp.jpg?imageView2/2/w/300/h/300/interlace/0/q/90) no-repeat;background-size: auto 100%;background-position: center;"></div><input type="hidden" name="picssort[]" value="2699516"></li><li class="pic-2699517 ui-sortable-handle" desc="null"><div class="file_cancel"><a title="删除图片" class="a-del" onclick="delpic(2699517);" href="javascript:;"></a><a title="裁剪图片" class="a-edit" onclick="editpic(2699517);" href="javascript:;"></a><a title="编辑图片" class="a-oen" onclick="setpicdesc(2699517);" href="javascript:;"></a></div><select class="picselectt1" onchange="setpictx(this.value,2699517)"><option value="0">飞入</option><option value="1">左右</option><option value="2">右左</option><option value="3">放大</option><option value="4">缩小</option><option value="5">左右重影</option><option value="6">抖动</option><option value="7">特写</option><option value="8">翻转</option><option value="9">朦胧</option><option value="10">上下重影</option><option value="11">移动</option><option value="12">3D</option><option selected="selected" value="13">航拍</option><option selected="selected" value="14">无</option></select><div class="ppimg" style="    border: 1px dashed #BFBFBF;width: 120px;height: 90px;background: url(http://qjpic.9xian.com/EJxnlHMBekI4ffg42DwrvYBJhs402ECn.jpg?imageMogr2/auto-orient/crop/!478x718a10a66/thumbnail/300x300) no-repeat;background-size: auto 100%;background-position: center;"></div><input type="hidden" name="picssort[]" value="2699517"></li><li class="pic-2699518 ui-sortable-handle" desc="null"><div class="file_cancel"><a title="删除图片" class="a-del" onclick="delpic(2699518);" href="javascript:;"></a><a title="裁剪图片" class="a-edit" onclick="editpic(2699518);" href="javascript:;"></a><a title="编辑图片" class="a-oen" onclick="setpicdesc(2699518);" href="javascript:;"></a></div><select class="picselectt1" onchange="setpictx(this.value,2699518)"><option value="0">飞入</option><option value="1">左右</option><option value="2">右左</option><option value="3">放大</option><option value="4">缩小</option><option value="5">左右重影</option><option value="6">抖动</option><option value="7">特写</option><option selected="selected" value="8">翻转</option><option value="9">朦胧</option><option value="10">上下重影</option><option value="11">移动</option><option value="12">3D</option><option value="13">航拍</option><option value="14">无</option></select><div class="ppimg" style="    border: 1px dashed #BFBFBF;width: 120px;height: 90px;background: url(http://qjpic.9xian.com/lzTVR8WVi1mF2Rpdu9bCt7r1begzmLLB.jpg?imageView2/2/w/300/h/300/interlace/0/q/90) no-repeat;background-size: auto 100%;background-position: center;"></div><input type="hidden" name="picssort[]" value="2699518"></li><li class="pic-2699519 ui-sortable-handle" desc="null"><div class="file_cancel"><a title="删除图片" class="a-del" onclick="delpic(2699519);" href="javascript:;"></a><a title="裁剪图片" class="a-edit" onclick="editpic(2699519);" href="javascript:;"></a><a title="编辑图片" class="a-oen" onclick="setpicdesc(2699519);" href="javascript:;"></a></div><select class="picselectt1" onchange="setpictx(this.value,2699519)"><option value="0">飞入</option><option value="1">左右</option><option value="2">右左</option><option value="3">放大</option><option selected="selected" value="4">缩小</option><option value="5">左右重影</option><option value="6">抖动</option><option value="7">特写</option><option value="8">翻转</option><option value="9">朦胧</option><option value="10">上下重影</option><option value="11">移动</option><option value="12">3D</option><option value="13">航拍</option><option value="14">无</option></select><div class="ppimg" style="    border: 1px dashed #BFBFBF;width: 120px;height: 90px;background: url(http://qjpic.9xian.com/ghppBiNrdmYHCFjQ9a9X92mrUbLWAh0K.jpg?imageMogr2/auto-orient/crop/!339x509a231a23/thumbnail/300x300) no-repeat;background-size: auto 100%;background-position: center;"></div><input type="hidden" name="picssort[]" value="2699519"></li><li class="pic-2699520 ui-sortable-handle" desc="null"><div class="file_cancel"><a title="删除图片" class="a-del" onclick="delpic(2699520);" href="javascript:;"></a><a title="裁剪图片" class="a-edit" onclick="editpic(2699520);" href="javascript:;"></a><a title="编辑图片" class="a-oen" onclick="setpicdesc(2699520);" href="javascript:;"></a></div><select class="picselectt1" onchange="setpictx(this.value,2699520)"><option value="0">飞入</option><option value="1">左右</option><option value="2">右左</option><option selected="selected" value="3">放大</option><option value="4">缩小</option><option value="5">左右重影</option><option value="6">抖动</option><option value="7">特写</option><option value="8">翻转</option><option value="9">朦胧</option><option value="10">上下重影</option><option value="11">移动</option><option value="12">3D</option><option value="13">航拍</option><option value="14">无</option></select><div class="ppimg" style="    border: 1px dashed #BFBFBF;width: 120px;height: 90px;background: url(http://qjpic.9xian.com/j4q8YiFTuwQYyIeoZ8R7kgIc62L7JOyB.jpg?imageView2/2/w/300/h/300/interlace/0/q/90) no-repeat;background-size: auto 100%;background-position: center;"></div><input type="hidden" name="picssort[]" value="2699520"></li><li class="pic-2699521 ui-sortable-handle" desc="null"><div class="file_cancel"><a title="删除图片" class="a-del" onclick="delpic(2699521);" href="javascript:;"></a><a title="裁剪图片" class="a-edit" onclick="editpic(2699521);" href="javascript:;"></a><a title="编辑图片" class="a-oen" onclick="setpicdesc(2699521);" href="javascript:;"></a></div><select class="picselectt1" onchange="setpictx(this.value,2699521)"><option value="0">飞入</option><option value="1">左右</option><option value="2">右左</option><option value="3">放大</option><option value="4">缩小</option><option value="5">左右重影</option><option value="6">抖动</option><option value="7">特写</option><option value="8">翻转</option><option value="9">朦胧</option><option value="10">上下重影</option><option selected="selected" value="11">移动</option><option value="12">3D</option><option value="13">航拍</option><option value="14">无</option></select><div class="ppimg" style="    border: 1px dashed #BFBFBF;width: 120px;height: 90px;background: url(http://qjpic.9xian.com/9Mox6HpeG57FnJcDGyExIzzJKkn5EGgQ.jpg?imageView2/2/w/300/h/300/interlace/0/q/90) no-repeat;background-size: auto 100%;background-position: center;"></div><input type="hidden" name="picssort[]" value="2699521"></li><li class="pic-2699522 ui-sortable-handle" desc="null"><div class="file_cancel"><a title="删除图片" class="a-del" onclick="delpic(2699522);" href="javascript:;"></a><a title="裁剪图片" class="a-edit" onclick="editpic(2699522);" href="javascript:;"></a><a title="编辑图片" class="a-oen" onclick="setpicdesc(2699522);" href="javascript:;"></a></div><select class="picselectt1" onchange="setpictx(this.value,2699522)"><option value="0">飞入</option><option value="1">左右</option><option value="2">右左</option><option value="3">放大</option><option value="4">缩小</option><option value="5">左右重影</option><option value="6">抖动</option><option value="7">特写</option><option value="8">翻转</option><option value="9">朦胧</option><option value="10">上下重影</option><option value="11">移动</option><option selected="selected" value="12">3D</option><option value="13">航拍</option><option value="14">无</option></select><div class="ppimg" style="    border: 1px dashed #BFBFBF;width: 120px;height: 90px;background: url(http://qjpic.9xian.com/kePFmR96FK0MRMQEh407irLfD0av0HUQ.jpg?imageView2/2/w/300/h/300/interlace/0/q/90) no-repeat;background-size: auto 100%;background-position: center;"></div><input type="hidden" name="picssort[]" value="2699522"></li><li class="pic-2699523 ui-sortable-handle" desc="null"><div class="file_cancel"><a title="删除图片" class="a-del" onclick="delpic(2699523);" href="javascript:;"></a><a title="裁剪图片" class="a-edit" onclick="editpic(2699523);" href="javascript:;"></a><a title="编辑图片" class="a-oen" onclick="setpicdesc(2699523);" href="javascript:;"></a></div><select class="picselectt1" onchange="setpictx(this.value,2699523)"><option value="0">飞入</option><option value="1">左右</option><option value="2">右左</option><option value="3">放大</option><option value="4">缩小</option><option value="5">左右重影</option><option value="6">抖动</option><option value="7">特写</option><option value="8">翻转</option><option value="9">朦胧</option><option value="10">上下重影</option><option value="11">移动</option><option selected="selected" value="12">3D</option><option value="13">航拍</option><option value="14">无</option></select><div class="ppimg" style="    border: 1px dashed #BFBFBF;width: 120px;height: 90px;background: url(http://qjpic.9xian.com/ZzIeej9Zgfye6Lkwyyj6LtIQ0LcJZ7HS.jpg?imageView2/2/w/300/h/300/interlace/0/q/90) no-repeat;background-size: auto 100%;background-position: center;"></div><input type="hidden" name="picssort[]" value="2699523"></li><li class="pic-2699524 ui-sortable-handle" desc="null"><div class="file_cancel"><a title="删除图片" class="a-del" onclick="delpic(2699524);" href="javascript:;"></a><a title="裁剪图片" class="a-edit" onclick="editpic(2699524);" href="javascript:;"></a><a title="编辑图片" class="a-oen" onclick="setpicdesc(2699524);" href="javascript:;"></a></div><select class="picselectt1" onchange="setpictx(this.value,2699524)"><option value="0">飞入</option><option value="1">左右</option><option value="2">右左</option><option value="3">放大</option><option value="4">缩小</option><option value="5">左右重影</option><option value="6">抖动</option><option value="7">特写</option><option selected="selected" value="8">翻转</option><option value="9">朦胧</option><option value="10">上下重影</option><option value="11">移动</option><option value="12">3D</option><option value="13">航拍</option><option value="14">无</option></select><div class="ppimg" style="    border: 1px dashed #BFBFBF;width: 120px;height: 90px;background: url(http://qjpic.9xian.com/8Q46SLUF6dHaN5IN6RZkLEzqJlNsuZ5Z.jpg?imageView2/2/w/300/h/300/interlace/0/q/90) no-repeat;background-size: auto 100%;background-position: center;"></div><input type="hidden" name="picssort[]" value="2699524"></li><li class="pic-2699633 ui-sortable-handle" desc="null"><div class="file_cancel"><a title="删除图片" class="a-del" onclick="delpic(2699633);" href="javascript:;"></a><a title="裁剪图片" class="a-edit" onclick="editpic(2699633);" href="javascript:;"></a><a title="编辑图片" class="a-oen" onclick="setpicdesc(2699633);" href="javascript:;"></a></div><select class="picselectt1" onchange="setpictx(this.value,2699633)"><option value="0">飞入</option><option value="1">左右</option><option value="2">右左</option><option value="3">放大</option><option value="4">缩小</option><option value="5">左右重影</option><option value="6">抖动</option><option value="7">特写</option><option value="8">翻转</option><option value="9">朦胧</option><option value="10">上下重影</option><option value="11">移动</option><option selected="selected" value="12">3D</option><option value="13">航拍</option><option value="14">无</option></select><div class="ppimg" style="    border: 1px dashed #BFBFBF;width: 120px;height: 90px;background: url(http://qjpic.9xian.com/7t90DinGsjd8wPfq3MIulwX5kfdlXvBC.jpg?imageView2/2/w/300/h/300/interlace/0/q/90) no-repeat;background-size: auto 100%;background-position: center;"></div><input type="hidden" name="picssort[]" value="2699633"></li><li class="pic-2699634 ui-sortable-handle" desc="null"><div class="file_cancel"><a title="删除图片" class="a-del" onclick="delpic(2699634);" href="javascript:;"></a><a title="裁剪图片" class="a-edit" onclick="editpic(2699634);" href="javascript:;"></a><a title="编辑图片" class="a-oen" onclick="setpicdesc(2699634);" href="javascript:;"></a></div><select class="picselectt1" onchange="setpictx(this.value,2699634)"><option selected="selected" value="0">飞入</option><option value="1">左右</option><option value="2">右左</option><option value="3">放大</option><option value="4">缩小</option><option value="5">左右重影</option><option value="6">抖动</option><option value="7">特写</option><option value="8">翻转</option><option value="9">朦胧</option><option value="10">上下重影</option><option value="11">移动</option><option value="12">3D</option><option value="13">航拍</option><option value="14">无</option></select><div class="ppimg" style="    border: 1px dashed #BFBFBF;width: 120px;height: 90px;background: url(http://qjpic.9xian.com/hdMGz0sxDrbZkYpH1ZdjYBqSpwNHmowC.jpg?imageView2/2/w/300/h/300/interlace/0/q/90) no-repeat;background-size: auto 100%;background-position: center;"></div><input type="hidden" name="picssort[]" value="2699634"></li><li class="pic-2699635 ui-sortable-handle" desc="null"><div class="file_cancel"><a title="删除图片" class="a-del" onclick="delpic(2699635);" href="javascript:;"></a><a title="裁剪图片" class="a-edit" onclick="editpic(2699635);" href="javascript:;"></a><a title="编辑图片" class="a-oen" onclick="setpicdesc(2699635);" href="javascript:;"></a></div><select class="picselectt1" onchange="setpictx(this.value,2699635)"><option selected="selected" value="0">飞入</option><option value="1">左右</option><option value="2">右左</option><option value="3">放大</option><option value="4">缩小</option><option value="5">左右重影</option><option value="6">抖动</option><option value="7">特写</option><option value="8">翻转</option><option value="9">朦胧</option><option value="10">上下重影</option><option value="11">移动</option><option value="12">3D</option><option value="13">航拍</option><option value="14">无</option></select><div class="ppimg" style="    border: 1px dashed #BFBFBF;width: 120px;height: 90px;background: url(http://qjpic.9xian.com/JiLc8JvGldcVyZP0Uu5WlnqFKcK3acN6.jpg?imageView2/2/w/300/h/300/interlace/0/q/90) no-repeat;background-size: auto 100%;background-position: center;"></div><input type="hidden" name="picssort[]" value="2699635"></li><li class="pic-2699637 ui-sortable-handle" desc="null"><div class="file_cancel"><a title="删除图片" class="a-del" onclick="delpic(2699637);" href="javascript:;"></a><a title="裁剪图片" class="a-edit" onclick="editpic(2699637);" href="javascript:;"></a><a title="编辑图片" class="a-oen" onclick="setpicdesc(2699637);" href="javascript:;"></a></div><select class="picselectt1" onchange="setpictx(this.value,2699637)"><option selected="selected" value="0">飞入</option><option value="1">左右</option><option value="2">右左</option><option value="3">放大</option><option value="4">缩小</option><option value="5">左右重影</option><option value="6">抖动</option><option value="7">特写</option><option value="8">翻转</option><option value="9">朦胧</option><option value="10">上下重影</option><option value="11">移动</option><option value="12">3D</option><option value="13">航拍</option><option value="14">无</option></select><div class="ppimg" style="    border: 1px dashed #BFBFBF;width: 120px;height: 90px;background: url(http://qjpic.9xian.com/4dk5xeWX26aGPByfU5Ncw3sH1tHUiO55.jpg?imageView2/2/w/300/h/300/interlace/0/q/90) no-repeat;background-size: auto 100%;background-position: center;"></div><input type="hidden" name="picssort[]" value="2699637"></li><li class="pic-2699638 ui-sortable-handle" desc="null"><div class="file_cancel"><a title="删除图片" class="a-del" onclick="delpic(2699638);" href="javascript:;"></a><a title="裁剪图片" class="a-edit" onclick="editpic(2699638);" href="javascript:;"></a><a title="编辑图片" class="a-oen" onclick="setpicdesc(2699638);" href="javascript:;"></a></div><select class="picselectt1" onchange="setpictx(this.value,2699638)"><option selected="selected" value="0">飞入</option><option value="1">左右</option><option value="2">右左</option><option value="3">放大</option><option value="4">缩小</option><option value="5">左右重影</option><option value="6">抖动</option><option value="7">特写</option><option value="8">翻转</option><option value="9">朦胧</option><option value="10">上下重影</option><option value="11">移动</option><option value="12">3D</option><option value="13">航拍</option><option value="14">无</option></select><div class="ppimg" style="    border: 1px dashed #BFBFBF;width: 120px;height: 90px;background: url(http://qjpic.9xian.com/77lfRpj0agt2O50EMgujDHifsWfU5MsJ.jpg?imageView2/2/w/300/h/300/interlace/0/q/90) no-repeat;background-size: auto 100%;background-position: center;"></div><input type="hidden" name="picssort[]" value="2699638"></li><li class="pic-2699639 ui-sortable-handle" desc="null"><div class="file_cancel"><a title="删除图片" class="a-del" onclick="delpic(2699639);" href="javascript:;"></a><a title="裁剪图片" class="a-edit" onclick="editpic(2699639);" href="javascript:;"></a><a title="编辑图片" class="a-oen" onclick="setpicdesc(2699639);" href="javascript:;"></a></div><select class="picselectt1" onchange="setpictx(this.value,2699639)"><option selected="selected" value="0">飞入</option><option value="1">左右</option><option value="2">右左</option><option value="3">放大</option><option value="4">缩小</option><option value="5">左右重影</option><option value="6">抖动</option><option value="7">特写</option><option value="8">翻转</option><option value="9">朦胧</option><option value="10">上下重影</option><option value="11">移动</option><option value="12">3D</option><option value="13">航拍</option><option value="14">无</option></select><div class="ppimg" style="    border: 1px dashed #BFBFBF;width: 120px;height: 90px;background: url(http://qjpic.9xian.com/tlFdZI4XEgEc8muw6tolYaSddEWwzLGH.jpg?imageView2/2/w/300/h/300/interlace/0/q/90) no-repeat;background-size: auto 100%;background-position: center;"></div><input type="hidden" name="picssort[]" value="2699639"></li><li class="pic-2699640 ui-sortable-handle" desc="null"><div class="file_cancel"><a title="删除图片" class="a-del" onclick="delpic(2699640);" href="javascript:;"></a><a title="裁剪图片" class="a-edit" onclick="editpic(2699640);" href="javascript:;"></a><a title="编辑图片" class="a-oen" onclick="setpicdesc(2699640);" href="javascript:;"></a></div><select class="picselectt1" onchange="setpictx(this.value,2699640)"><option selected="selected" value="0">飞入</option><option value="1">左右</option><option value="2">右左</option><option value="3">放大</option><option value="4">缩小</option><option value="5">左右重影</option><option value="6">抖动</option><option value="7">特写</option><option value="8">翻转</option><option value="9">朦胧</option><option value="10">上下重影</option><option value="11">移动</option><option value="12">3D</option><option value="13">航拍</option><option value="14">无</option></select><div class="ppimg" style="    border: 1px dashed #BFBFBF;width: 120px;height: 90px;background: url(http://qjpic.9xian.com/dhXPLFMBB47dz8hvHQ7r9wz7Y54MOJXh.jpg?imageView2/2/w/300/h/300/interlace/0/q/90) no-repeat;background-size: auto 100%;background-position: center;"></div><input type="hidden" name="picssort[]" value="2699640"></li><li class="pic-2699641 ui-sortable-handle" desc="null"><div class="file_cancel"><a title="删除图片" class="a-del" onclick="delpic(2699641);" href="javascript:;"></a><a title="裁剪图片" class="a-edit" onclick="editpic(2699641);" href="javascript:;"></a><a title="编辑图片" class="a-oen" onclick="setpicdesc(2699641);" href="javascript:;"></a></div><select class="picselectt1" onchange="setpictx(this.value,2699641)"><option selected="selected" value="0">飞入</option><option value="1">左右</option><option value="2">右左</option><option value="3">放大</option><option value="4">缩小</option><option value="5">左右重影</option><option value="6">抖动</option><option value="7">特写</option><option value="8">翻转</option><option value="9">朦胧</option><option value="10">上下重影</option><option value="11">移动</option><option value="12">3D</option><option value="13">航拍</option><option value="14">无</option></select><div class="ppimg" style="    border: 1px dashed #BFBFBF;width: 120px;height: 90px;background: url(http://qjpic.9xian.com/bISSLEn9wwQQP5DO3GsGY0VgEn5YboCm.jpg?imageView2/2/w/300/h/300/interlace/0/q/90) no-repeat;background-size: auto 100%;background-position: center;"></div><input type="hidden" name="picssort[]" value="2699641"></li><li class="pic-2699642 ui-sortable-handle" desc="null"><div class="file_cancel"><a title="删除图片" class="a-del" onclick="delpic(2699642);" href="javascript:;"></a><a title="裁剪图片" class="a-edit" onclick="editpic(2699642);" href="javascript:;"></a><a title="编辑图片" class="a-oen" onclick="setpicdesc(2699642);" href="javascript:;"></a></div><select class="picselectt1" onchange="setpictx(this.value,2699642)"><option selected="selected" value="0">飞入</option><option value="1">左右</option><option value="2">右左</option><option value="3">放大</option><option value="4">缩小</option><option value="5">左右重影</option><option value="6">抖动</option><option value="7">特写</option><option value="8">翻转</option><option value="9">朦胧</option><option value="10">上下重影</option><option value="11">移动</option><option value="12">3D</option><option value="13">航拍</option><option value="14">无</option></select><div class="ppimg" style="    border: 1px dashed #BFBFBF;width: 120px;height: 90px;background: url(http://qjpic.9xian.com/o9Jy2gaPPj0nTwcgP3g3XtCgwPKiccdW.jpg?imageView2/2/w/300/h/300/interlace/0/q/90) no-repeat;background-size: auto 100%;background-position: center;"></div><input type="hidden" name="picssort[]" value="2699642"></li><li class="pic-2699643 ui-sortable-handle" desc="null"><div class="file_cancel"><a title="删除图片" class="a-del" onclick="delpic(2699643);" href="javascript:;"></a><a title="裁剪图片" class="a-edit" onclick="editpic(2699643);" href="javascript:;"></a><a title="编辑图片" class="a-oen" onclick="setpicdesc(2699643);" href="javascript:;"></a></div><select class="picselectt1" onchange="setpictx(this.value,2699643)"><option selected="selected" value="0">飞入</option><option value="1">左右</option><option value="2">右左</option><option value="3">放大</option><option value="4">缩小</option><option value="5">左右重影</option><option value="6">抖动</option><option value="7">特写</option><option value="8">翻转</option><option value="9">朦胧</option><option value="10">上下重影</option><option value="11">移动</option><option value="12">3D</option><option value="13">航拍</option><option value="14">无</option></select><div class="ppimg" style="    border: 1px dashed #BFBFBF;width: 120px;height: 90px;background: url(http://qjpic.9xian.com/TUuxLmalmD33izmiS5oPCIJQBtzGBGZH.jpg?imageView2/2/w/300/h/300/interlace/0/q/90) no-repeat;background-size: auto 100%;background-position: center;"></div><input type="hidden" name="picssort[]" value="2699643"></li><li class="pic-2699646 ui-sortable-handle" desc="null"><div class="file_cancel"><a title="删除图片" class="a-del" onclick="delpic(2699646);" href="javascript:;"></a><a title="裁剪图片" class="a-edit" onclick="editpic(2699646);" href="javascript:;"></a><a title="编辑图片" class="a-oen" onclick="setpicdesc(2699646);" href="javascript:;"></a></div><select class="picselectt1" onchange="setpictx(this.value,2699646)"><option selected="selected" value="0">飞入</option><option value="1">左右</option><option value="2">右左</option><option value="3">放大</option><option value="4">缩小</option><option value="5">左右重影</option><option value="6">抖动</option><option value="7">特写</option><option value="8">翻转</option><option value="9">朦胧</option><option value="10">上下重影</option><option value="11">移动</option><option value="12">3D</option><option value="13">航拍</option><option value="14">无</option></select><div class="ppimg" style="    border: 1px dashed #BFBFBF;width: 120px;height: 90px;background: url(http://qjpic.9xian.com/YMF4MzeOR4vR9R4Ok30nUWvoYqQf7swM.jpg?imageView2/2/w/300/h/300/interlace/0/q/90) no-repeat;background-size: auto 100%;background-position: center;"></div><input type="hidden" name="picssort[]" value="2699646"></li><li class="pic-2699647 ui-sortable-handle" desc="null"><div class="file_cancel"><a title="删除图片" class="a-del" onclick="delpic(2699647);" href="javascript:;"></a><a title="裁剪图片" class="a-edit" onclick="editpic(2699647);" href="javascript:;"></a><a title="编辑图片" class="a-oen" onclick="setpicdesc(2699647);" href="javascript:;"></a></div><select class="picselectt1" onchange="setpictx(this.value,2699647)"><option selected="selected" value="0">飞入</option><option value="1">左右</option><option value="2">右左</option><option value="3">放大</option><option value="4">缩小</option><option value="5">左右重影</option><option value="6">抖动</option><option value="7">特写</option><option value="8">翻转</option><option value="9">朦胧</option><option value="10">上下重影</option><option value="11">移动</option><option value="12">3D</option><option value="13">航拍</option><option value="14">无</option></select><div class="ppimg" style="    border: 1px dashed #BFBFBF;width: 120px;height: 90px;background: url(http://qjpic.9xian.com/i7ZKcOnLrPXIDcX6YlsdaIzAPYylcan0.jpg?imageView2/2/w/300/h/300/interlace/0/q/90) no-repeat;background-size: auto 100%;background-position: center;"></div><input type="hidden" name="picssort[]" value="2699647"></li><li class="pic-2699648 ui-sortable-handle" desc="null"><div class="file_cancel"><a title="删除图片" class="a-del" onclick="delpic(2699648);" href="javascript:;"></a><a title="裁剪图片" class="a-edit" onclick="editpic(2699648);" href="javascript:;"></a><a title="编辑图片" class="a-oen" onclick="setpicdesc(2699648);" href="javascript:;"></a></div><select class="picselectt1" onchange="setpictx(this.value,2699648)"><option selected="selected" value="0">飞入</option><option value="1">左右</option><option value="2">右左</option><option value="3">放大</option><option value="4">缩小</option><option value="5">左右重影</option><option value="6">抖动</option><option value="7">特写</option><option value="8">翻转</option><option value="9">朦胧</option><option value="10">上下重影</option><option value="11">移动</option><option value="12">3D</option><option value="13">航拍</option><option value="14">无</option></select><div class="ppimg" style="    border: 1px dashed #BFBFBF;width: 120px;height: 90px;background: url(http://qjpic.9xian.com/ZSpPpFU4jGZKfkIwYHVzBbEVVpMenJYL.jpg?imageView2/2/w/300/h/300/interlace/0/q/90) no-repeat;background-size: auto 100%;background-position: center;"></div><input type="hidden" name="picssort[]" value="2699648"></li><li class="pic-2699650 ui-sortable-handle" desc="null"><div class="file_cancel"><a title="删除图片" class="a-del" onclick="delpic(2699650);" href="javascript:;"></a><a title="裁剪图片" class="a-edit" onclick="editpic(2699650);" href="javascript:;"></a><a title="编辑图片" class="a-oen" onclick="setpicdesc(2699650);" href="javascript:;"></a></div><select class="picselectt1" onchange="setpictx(this.value,2699650)"><option selected="selected" value="0">飞入</option><option value="1">左右</option><option value="2">右左</option><option value="3">放大</option><option value="4">缩小</option><option value="5">左右重影</option><option value="6">抖动</option><option value="7">特写</option><option value="8">翻转</option><option value="9">朦胧</option><option value="10">上下重影</option><option value="11">移动</option><option value="12">3D</option><option value="13">航拍</option><option value="14">无</option></select><div class="ppimg" style="    border: 1px dashed #BFBFBF;width: 120px;height: 90px;background: url(http://qjpic.9xian.com/fGhfAJfqQ8EHqSNjOmATPCfosNB76ZAS.jpg?imageView2/2/w/300/h/300/interlace/0/q/90) no-repeat;background-size: auto 100%;background-position: center;"></div><input type="hidden" name="picssort[]" value="2699650"></li><li class="pic-2699651 ui-sortable-handle" desc="null"><div class="file_cancel"><a title="删除图片" class="a-del" onclick="delpic(2699651);" href="javascript:;"></a><a title="裁剪图片" class="a-edit" onclick="editpic(2699651);" href="javascript:;"></a><a title="编辑图片" class="a-oen" onclick="setpicdesc(2699651);" href="javascript:;"></a></div><select class="picselectt1" onchange="setpictx(this.value,2699651)"><option selected="selected" value="0">飞入</option><option value="1">左右</option><option value="2">右左</option><option value="3">放大</option><option value="4">缩小</option><option value="5">左右重影</option><option value="6">抖动</option><option value="7">特写</option><option value="8">翻转</option><option value="9">朦胧</option><option value="10">上下重影</option><option value="11">移动</option><option value="12">3D</option><option value="13">航拍</option><option value="14">无</option></select><div class="ppimg" style="    border: 1px dashed #BFBFBF;width: 120px;height: 90px;background: url(http://qjpic.9xian.com/inNuPl3Va1iMFmttUrXOQCleTyidAOFl.jpg?imageView2/2/w/300/h/300/interlace/0/q/90) no-repeat;background-size: auto 100%;background-position: center;"></div><input type="hidden" name="picssort[]" value="2699651"></li></ul>
<br class="clear">
<br class="clear">
</div>
</div>
</div>
</div>
</div>
<br class="clear">
<br class="clear">
<br class="clear">
<br class="clear">
</form>
</div>
</div>
<div class="tab-pane" id="tab4">
<div class="panel-body">
<form method="post" action="http://web.9xian.com/usern/wedding?sitecode=59f163eed158a" class="form-horizontal itemdd1" id="xyform" role="form" enctype="multipart/form-data">
<div class="ke-container ke-container-default" style="width: 600px;"><div style="display:block;" class="ke-toolbar" unselectable="on"><span class="ke-outline" data-name="fontname" title="字体" unselectable="on"><span class="ke-toolbar-icon ke-toolbar-icon-url ke-icon-fontname" unselectable="on"></span></span><span class="ke-outline" data-name="fontsize" title="文字大小" unselectable="on"><span class="ke-toolbar-icon ke-toolbar-icon-url ke-icon-fontsize" unselectable="on"></span></span><span class="ke-inline-block ke-separator"></span><span class="ke-outline" data-name="forecolor" title="文字颜色" unselectable="on"><span class="ke-toolbar-icon ke-toolbar-icon-url ke-icon-forecolor" unselectable="on"></span></span><span class="ke-outline" data-name="hilitecolor" title="文字背景" unselectable="on"><span class="ke-toolbar-icon ke-toolbar-icon-url ke-icon-hilitecolor" unselectable="on"></span></span><span class="ke-outline" data-name="bold" title="粗体(Ctrl+B)" unselectable="on"><span class="ke-toolbar-icon ke-toolbar-icon-url ke-icon-bold" unselectable="on"></span></span><span class="ke-outline" data-name="italic" title="斜体(Ctrl+I)" unselectable="on"><span class="ke-toolbar-icon ke-toolbar-icon-url ke-icon-italic" unselectable="on"></span></span><span class="ke-outline" data-name="underline" title="下划线(Ctrl+U)" unselectable="on"><span class="ke-toolbar-icon ke-toolbar-icon-url ke-icon-underline" unselectable="on"></span></span><span class="ke-outline" data-name="removeformat" title="删除格式" unselectable="on"><span class="ke-toolbar-icon ke-toolbar-icon-url ke-icon-removeformat" unselectable="on"></span></span><span class="ke-inline-block ke-separator"></span><span class="ke-outline" data-name="justifyleft" title="左对齐" unselectable="on"><span class="ke-toolbar-icon ke-toolbar-icon-url ke-icon-justifyleft" unselectable="on"></span></span><span class="ke-outline" data-name="justifycenter" title="居中" unselectable="on"><span class="ke-toolbar-icon ke-toolbar-icon-url ke-icon-justifycenter" unselectable="on"></span></span><span class="ke-outline" data-name="justifyright" title="右对齐" unselectable="on"><span class="ke-toolbar-icon ke-toolbar-icon-url ke-icon-justifyright" unselectable="on"></span></span><span class="ke-outline" data-name="insertorderedlist" title="编号" unselectable="on"><span class="ke-toolbar-icon ke-toolbar-icon-url ke-icon-insertorderedlist" unselectable="on"></span></span><span class="ke-outline" data-name="insertunorderedlist" title="项目符号" unselectable="on"><span class="ke-toolbar-icon ke-toolbar-icon-url ke-icon-insertunorderedlist" unselectable="on"></span></span><span class="ke-inline-block ke-separator"></span><span class="ke-outline" data-name="link" title="超级链接" unselectable="on"><span class="ke-toolbar-icon ke-toolbar-icon-url ke-icon-link" unselectable="on"></span></span></div><div style="display: block; height: 202px;" class="ke-edit"><iframe class="ke-edit-iframe" hidefocus="true" frameborder="0" tabindex="" style="width: 100%; height: 202px;" src="/numberone/static/mycss/saved_resource.html"></iframe><textarea class="ke-edit-textarea" hidefocus="true" tabindex="" style="width: 100%; height: 200px; display: none;"></textarea></div><div class="ke-statusbar"><span class="ke-inline-block ke-statusbar-center-icon"></span><span class="ke-inline-block ke-statusbar-right-icon" style="visibility: hidden;"></span></div></div><textarea class="kindeditor" id="aidxuanyan" name="aidxuanyan" style="width: 600px; height: 200px; visibility: hidden; display: none;">&lt;div style="text-align:center;"&gt;
	&lt;span style="font-family:sans-serif;font-size:14px;line-height:normal;"&gt;爱从眼角出发，抵达鬓角&lt;/span&gt;
&lt;/div&gt;
&lt;span style="font-family:sans-serif;font-size:14px;line-height:normal;"&gt;
&lt;div style="text-align:center;"&gt;
	这微不足道的间距
&lt;/div&gt;
&lt;/span&gt;&lt;span style="font-family:sans-serif;font-size:14px;line-height:normal;"&gt;
&lt;div style="text-align:center;"&gt;
	却需要付出跋涉一生的努力
&lt;/div&gt;
&lt;/span&gt;&lt;span style="font-family:sans-serif;font-size:14px;line-height:normal;"&gt;
&lt;div style="text-align:center;"&gt;
	我们是同一颗心上的一对翅膀
&lt;/div&gt;
&lt;/span&gt;&lt;span style="font-family:sans-serif;font-size:14px;line-height:normal;"&gt;
&lt;div style="text-align:center;"&gt;
	不管身在何方，风起时
&lt;/div&gt;
&lt;/span&gt;&lt;span style="font-family:sans-serif;font-size:14px;line-height:normal;"&gt;
&lt;div style="text-align:center;"&gt;
	我们都会一起飞翔
&lt;/div&gt;
&lt;/span&gt;&lt;span style="font-family:sans-serif;font-size:14px;line-height:normal;"&gt;
&lt;div style="text-align:center;"&gt;
	期待您带着祝福
&lt;/div&gt;
&lt;/span&gt;&lt;span style="font-family:sans-serif;font-size:14px;line-height:normal;"&gt;
&lt;div style="text-align:center;"&gt;
	和我们一起见证这幸福的时刻
&lt;/div&gt;
&lt;/span&gt;</textarea>
<p style="color:red;text-align: center;">最多输入8行！</p>
</form>
</div>
</div>
<div class="tab-pane" id="tab5">
<div class="panel-body">
<form method="post" action="http://web.9xian.com/usern/wedding?sitecode=59f163eed158a" class="form-horizontal itemdd1" id="lcform" role="form" enctype="multipart/form-data">
<label class="col-sm-2 control-label text-right">婚礼流程</label>
<div class="col-sm-6">
<div style="margin-bottom: 10px;">
<input type="text" maxlength="20" id="liuchenginfo" value=""><a class="liuchengadd" href="javascript:addliucheng();">添加</a>
</div>
<div style="" id="liuchengbody">
<table>
<tbody id="liuchenglist">
<tr id="tr15089969090"><td style="padding-bottom: 5px;"><input class="liuchenga" maxlength="20" oninput="changethisliucheng()" type="text" value="09:30 迎亲车队"><a class="delliucheng" href="javascript:delliucheng(&#39;15089969090&#39;)"></a></td></tr>
<tr id="tr15089969091"><td style="padding-bottom: 5px;"><input class="liuchenga" maxlength="20" oninput="changethisliucheng()" type="text" value="10:00 抵达酒店"><a class="delliucheng" href="javascript:delliucheng(&#39;15089969091&#39;)"></a></td></tr>
</tbody>
</table>
</div>
</div>
<div style="display: none;"><div class="ke-container ke-container-default" style="width: 600px;"><div style="display:block;" class="ke-toolbar" unselectable="on"><span class="ke-outline" data-name="fontname" title="字体" unselectable="on"><span class="ke-toolbar-icon ke-toolbar-icon-url ke-icon-fontname" unselectable="on"></span></span><span class="ke-outline" data-name="fontsize" title="文字大小" unselectable="on"><span class="ke-toolbar-icon ke-toolbar-icon-url ke-icon-fontsize" unselectable="on"></span></span><span class="ke-inline-block ke-separator"></span><span class="ke-outline" data-name="forecolor" title="文字颜色" unselectable="on"><span class="ke-toolbar-icon ke-toolbar-icon-url ke-icon-forecolor" unselectable="on"></span></span><span class="ke-outline" data-name="hilitecolor" title="文字背景" unselectable="on"><span class="ke-toolbar-icon ke-toolbar-icon-url ke-icon-hilitecolor" unselectable="on"></span></span><span class="ke-outline" data-name="bold" title="粗体(Ctrl+B)" unselectable="on"><span class="ke-toolbar-icon ke-toolbar-icon-url ke-icon-bold" unselectable="on"></span></span><span class="ke-outline" data-name="italic" title="斜体(Ctrl+I)" unselectable="on"><span class="ke-toolbar-icon ke-toolbar-icon-url ke-icon-italic" unselectable="on"></span></span><span class="ke-outline" data-name="underline" title="下划线(Ctrl+U)" unselectable="on"><span class="ke-toolbar-icon ke-toolbar-icon-url ke-icon-underline" unselectable="on"></span></span><span class="ke-outline" data-name="removeformat" title="删除格式" unselectable="on"><span class="ke-toolbar-icon ke-toolbar-icon-url ke-icon-removeformat" unselectable="on"></span></span><span class="ke-inline-block ke-separator"></span><span class="ke-outline" data-name="justifyleft" title="左对齐" unselectable="on"><span class="ke-toolbar-icon ke-toolbar-icon-url ke-icon-justifyleft" unselectable="on"></span></span><span class="ke-outline" data-name="justifycenter" title="居中" unselectable="on"><span class="ke-toolbar-icon ke-toolbar-icon-url ke-icon-justifycenter" unselectable="on"></span></span><span class="ke-outline" data-name="justifyright" title="右对齐" unselectable="on"><span class="ke-toolbar-icon ke-toolbar-icon-url ke-icon-justifyright" unselectable="on"></span></span><span class="ke-outline" data-name="insertorderedlist" title="编号" unselectable="on"><span class="ke-toolbar-icon ke-toolbar-icon-url ke-icon-insertorderedlist" unselectable="on"></span></span><span class="ke-outline" data-name="insertunorderedlist" title="项目符号" unselectable="on"><span class="ke-toolbar-icon ke-toolbar-icon-url ke-icon-insertunorderedlist" unselectable="on"></span></span><span class="ke-inline-block ke-separator"></span><span class="ke-outline" data-name="link" title="超级链接" unselectable="on"><span class="ke-toolbar-icon ke-toolbar-icon-url ke-icon-link" unselectable="on"></span></span></div><div style="display: block; height: 202px;" class="ke-edit"><iframe class="ke-edit-iframe" hidefocus="true" frameborder="0" tabindex="" style="width: 100%; height: 202px;" src="/numberone/static/mycss/saved_resource(1).html"></iframe><textarea class="ke-edit-textarea" hidefocus="true" tabindex="" style="width: 100%; height: 200px; display: none;"></textarea></div><div class="ke-statusbar"><span class="ke-inline-block ke-statusbar-center-icon"></span><span class="ke-inline-block ke-statusbar-right-icon" style="visibility: hidden;"></span></div></div><textarea class="kindeditor" id="protext" name="protext" style="width: 600px; height: 200px; visibility: hidden; display: none;">&lt;p style="text-align:center;"&gt;
	09:30 迎亲车队
&lt;/p&gt;
&lt;p style="text-align:center;"&gt;
	10:00 抵达酒店
&lt;/p&gt;</textarea></div>
</form>
</div>
</div>
<div class="tab-pane" id="tab6">
<form method="post" action="http://web.9xian.com/usern/wedding?sitecode=59f163eed158a" class="form-horizontal itemdd1" id="mvform" role="form" enctype="multipart/form-data">
<div class="panel-body">
<label class="col-sm-2 control-label text-right">选择视频</label>
<div class="col-sm-4">
<select id="playurl" onchange="changemv(&#39;&#39;);" name="playurl" class="selectpicker form-control select2-hidden-accessible" tabindex="-1" aria-hidden="true">
<option value="" selected="">自定义</option>
<option value="http://v.youku.com/v_show/id_XNzQxNzUzMTE2.html">小破孩</option>
<option value="http://v.youku.com/v_show/id_XNzM0NTg2OTIw.html">婚礼感恩片</option>
<option value="http://v.youku.com/v_show/id_XNzg2NTE2OTAw.html">小苹果</option>
<option value="http://v.youku.com/v_show/id_XODE1OTA4MTAw.html">众多明星祝福</option>
<option value="http://v.youku.com/v_show/id_XODE2MTQ4MDUy.html">新闻联播</option>
<option value="http://v.youku.com/v_show/id_XODE1OTY0NzA4.html">让幸福飞一会儿</option>
<option value="http://v.youku.com/v_show/id_XODE1OTU3MTYw.html">明星搞笑开场</option>
<option value="http://v.youku.com/v_show/id_XODE1OTUzNDg0.html">明星大串烧</option>
<option value="http://v.youku.com/v_show/id_XNzkwOTYzMzk2.html">活色生香</option>
<option value="http://v.youku.com/v_show/id_XNzkwOTI5MzQ0.html">尘埃落定</option>
<option value="http://v.youku.com/v_show/id_XODI1MjI4OTY0.html">当我偶遇你</option>
</select><span class="select2 select2-container select2-container--default" dir="ltr" style="width: 220px;"><span class="selection"><span class="select2-selection select2-selection--single" role="combobox" aria-haspopup="true" aria-expanded="false" tabindex="0" aria-labelledby="select2-playurl-container"><span class="select2-selection__rendered" id="select2-playurl-container" title="自定义">自定义</span><span class="select2-selection__arrow" role="presentation"><b role="presentation"></b></span></span></span><span class="dropdown-wrapper" aria-hidden="true"></span></span>
</div>
<div class="col-sm-4">
<a href="javascript:$(&#39;.momo-mv&#39;).modal({});" class="cm-edit tip" style="
		                      position: relative;    width: 20px;    height: 20px;    display: inline-block;
		                      margin: 7px 2px 7px 10px;    background: url(&#39;../images/head.png&#39;) no-repeat;background-position: -299px -512px;
		                      float: left;"></a>
<div class="node" style="line-height: 33px;color: #b6bdb9;">点击可自定义编辑</div>
</div>
</div>
<div class="form-group">
<div class="col-sm-10" style="height: 380px;" id="mviframe">
<object data="/numberone/static/mycss/html5embed.action" type="application/x-shockwave-flash" wmode="opaque" width="600" height="400"></object>
</div>
</div>
</form>
</div>
<div class="tab-pane" id="tab7">
<div class="panel-body">
<form method="post" action="http://web.9xian.com/usern/wedding?sitecode=59f163eed158a" class="form-horizontal itemdd1" id="fsform" role="form" enctype="multipart/form-data">
<div class="form-group">
<label class="col-sm-2 control-label text-right">请柬标题</label>
<div class="col-sm-4">
<input class="form-control" id="sitename" placeholder="请柬标题" name="sitename" value="帅逼 ❤️ 靓女 婚礼邀约" type="text" required="">
</div>
</div>
<div class="form-group">
<label class="col-sm-2 control-label text-right">邀请内容</label>
<div class="col-sm-6">
<textarea id="welcontent-site" name="welcontent" class="inp-site form-control" style="float: left;height: 60px;width: 310px;" cols="40" rows="4" maxlength="80">诚邀您以及您的家人来参加我们的婚礼，共同见证我们的幸福时刻！点击查看详情...</textarea>
<a href="javascript:;" onmouseout="$(&#39;.cm-confirm-wx1&#39;).hide();" onmouseover="$(&#39;.cm-confirm-wx1&#39;).show();" class="cm-help tip">
<div class="poptip cm-confirm-wx1 wx-help" style="width: 300px;top: -5px;">
<span class="poptip-arrow poptip-arrow-left"><em>◆</em><i>◆</i></span>
使用说明：<br>邀请内容不超过80个字符!邀请内容在微信分享显示的位置如下图红框
<div class="content"></div>
</div>
</a>
</div>
</div>
<div class="form-group">
<label class="col-sm-2 control-label text-right">微信照片</label>
<div class="col-sm-2">
<div class="preview-img">
<img id="imgwx_mainpic" src="/numberone/static/mycss/cP7ZkP8ow3KRqNESg2e4FGeyMSRZEAkF.jpg">
</div>
</div>
<div class="col-sm-5">
<input type="hidden" name="wx_mainpic_linkcode" value="2699562">
<input type="hidden" name="wx_mainpic" value="http://qjpic.9xian.com/cP7ZkP8ow3KRqNESg2e4FGeyMSRZEAkF.jpg">
<div class="preview-area">
<div class="clear">
<span style="float: left">裁剪尺寸：正方形</span>
<a href="javascript:;" onmouseout="$(&#39;.cm-confirm-wx2&#39;).hide();" onmouseover="$(&#39;.cm-confirm-wx2&#39;).show();" class="cm-help tip">
<div class="poptip cm-confirm-wx2 wx-help" style="width: 300px;top: -5px;">
<span class="poptip-arrow poptip-arrow-left"><em>◆</em><i>◆</i></span>
使用说明：<br>微信图片在微信分享显示的位置如下图红框
<div class="wx-help"><div style="background-position: -20px -130px;" class="pic"></div></div>
</div>
</a>
</div>
<div class="btn-area clear">
<div id="uploadifive-wx_mainpic_upload" class="uploadifive-button" style="height: 30px; line-height: 30px; overflow: hidden; position: relative; text-align: center; width: 100px;">+选择图片<input type="file" name="wx_mainpic_upload" id="wx_mainpic_upload" value="" style="display: none;"><input type="file" style="font-size: 30px; opacity: 0; position: absolute; right: -3px; top: -3px; z-index: 999;" accept="image/jpeg,image/png"></div>
<a id="cimgwx_mainpic" href="javascript:editpic(2699562,&#39;fenxiang&#39;);" linkcode="2699562" class="crop btn btn-default btn-xs" style="margin-top: 10px;">x裁剪图片</a>
</div>
</div>
<div id="queue_mainpic"></div>
</div>
</div>
<div class="form-group">
<label class="col-sm-2 control-label text-right"></label>
<div class="col-sm-5">
<a href="javascript:saveConfig(&#39;ok&#39;);" class="inp-btn-pk cn-save" style="float: left;width: 300px;text-align: center;">立即生成请柬</a>
</div>
</div>
<div class="ui-share">
<a href="javascript:$(&#39;.momo-share&#39;).modal({});" class="inp-btn-pk cn-save" style="float: left;width: 200px;margin-left: 25px;margin-bottom: 10px;text-align: center;">贵宾发送</a>
<div class="clear"></div>
<div style="margin-left: 10px;">请柬链接</div>
<div style="margin-left: 10px;margin-bottom: 8px;">
<a style="color: blue;" href="http://web.9xian.cc/app/a/VBV7Jr" target="_blank">http://web.9xian.cc/app/a/VBV7Jr</a>
</div>
<div class="ewm">
<div style="  width: 100%;" id="J_qrcode"><canvas width="230" height="230"></canvas></div>
</div>
<div class="bdsharebuttonbox bdshare-button-style0-32" id="J_bdsharebuttonbox" shorturl="http://web.9xian.cc/app/a/VBV7Jr" mainpic="http://web.9xian.cc/app/a/VBV7Jr" qrlogo="{{share.mainpic.value}}" data-bd-bind="1508996910571">
<a href="http://web.9xian.com/usern/wedding?sitecode=59f163eed158a#" class="bds_weixin" data-cmd="weixin" title="分享到微信"></a>
<a href="http://web.9xian.com/usern/wedding?sitecode=59f163eed158a#" class="bds_qzone" data-cmd="qzone" title="分享到QQ空间"></a>
<a href="http://web.9xian.com/usern/wedding?sitecode=59f163eed158a#" class="bds_tsina" data-cmd="tsina" title="分享到新浪微博"></a>
<a href="http://web.9xian.com/usern/wedding?sitecode=59f163eed158a#" class="bds_tqq" data-cmd="tqq" title="分享到腾讯微博"></a>
<a href="http://web.9xian.com/usern/wedding?sitecode=59f163eed158a#" class="bds_sqq" data-cmd="sqq" title="分享到QQ好友"></a>
<a href="http://web.9xian.com/usern/wedding?sitecode=59f163eed158a#" class="bds_renren" data-cmd="renren" title="分享到人人网"></a>
<a href="http://web.9xian.com/usern/wedding?sitecode=59f163eed158a#" class="bds_more" data-cmd="more"></a>
</div>
<script>window._bd_share_config={"common":{"bdSnsKey":{},'bdUrl':'http://web.9xian.cc/app/a/VBV7Jr',"bdText":"","bdMini":"2","bdMiniList":false,"bdPic":"","bdStyle":"0","bdSize":"32"},"share":{}};with(document)0[(getElementsByTagName('head')[0]||body).appendChild(createElement('script')).src='http://bdimg.share.baidu.com/static/api/js/share.js?v=89860593.js?cdnversion='+~(-new Date()/36e5)];</script>
</div>
</form>
</div>
</div>
<ul class="pager wizard" style="display:none;">
<li class="previous first disabled" style="display:none;"><a href="http://web.9xian.com/usern/wedding?sitecode=59f163eed158a#">First</a></li>
<li class="previous disabled" id="itemprevious"><a href="http://web.9xian.com/usern/wedding?sitecode=59f163eed158a#">Previous</a></li>
<li class="next last" style="display:none;"><a href="http://web.9xian.com/usern/wedding?sitecode=59f163eed158a#">Last</a></li>
<li class="next" id="itemnext"><a href="http://web.9xian.com/usern/wedding?sitecode=59f163eed158a#">Next</a></li>
</ul>
</div>
</div>
</section>
</div>
<div class="card-nav" id="card-nav" data-widget-cid="widget-2">
<div class="layout">
<div id="J_cn-actions" class="cn-btn">
<a href="javascript:saveConfig(&#39;&#39;);" class="inp-btn-pk cn-save" style="">保存</a>
<a href="javascript:$(&#39;#itemprevious&#39;).click();" syy="" class="inp-btn-pk cn-save syy" style="">上一步</a>
<a href="javascript:saveConfig(&#39;no&#39;);$(&#39;#itemnext&#39;).click();" xyy="" class="inp-btn-pk cn-save xyy" style="">下一步</a>
</div>
</div>
</div>
<div id="modellist">
<div class="modal fade momo-hy" style="top: 0px;right: 0px;" tabindex="-1" role="dialog" aria-labelledby="mySmallModalLabel" aria-hidden="true">
<div class="modal_wrapper">
<div class="modal-dialog modal-sm" style="width: 550px;z-index: 1045;">
<div class="modal-content login-all-type">
<div class="modal-header">
<button type="button" class="close" data-dismiss="modal" aria-label="Close"> <span aria-hidden="true">×</span> </button>
<h4 class="modal-title text-primary" id="exampleModalLabel" style="color:#000!important;font-weight:bolder;font-size:16px;">编辑信息</h4>
</div>
<div class="modal-body" style="padding: 0px 88px 28px 88px;">
<div style="  width: 100%;height: 26px; line-height: 34px;">
<div class="form-group">
<label class="col-sm-2 control-label text-right">婚宴类型</label>
<div class="col-sm-8">
<input class="form-control zdy_wedtype" placeholder="婚宴类型" value="莅临结婚典礼 敬备喜宴" type="text" required="">
</div>
</div>
</div>
</div>
<div class="modal-footer">
<a href="javascript:addselectoption(&#39;wedtype&#39;,$(&#39;.zdy_wedtype&#39;).val());$(&#39;.momo-hy&#39;).modal(&#39;hide&#39;);" class="btn btn-danger">确定</a>
<a href="http://web.9xian.com/usern/wedding?sitecode=59f163eed158a#" class="btn btn-default" data-dismiss="modal">关闭</a>
</div>
</div>
</div>
</div>
</div>
<div class="modal fade momo-music" style="top: 0px;right: 0px;" tabindex="-1" role="dialog" aria-labelledby="mySmallModalLabel" aria-hidden="true">
<div class="modal_wrapper">
<div class="modal-dialog modal-sm" style="width: 550px;    z-index: 1045;">
<div class="modal-content login-all-type">
<div class="modal-header">
<button type="button" class="close" data-dismiss="modal" aria-label="Close"> <span aria-hidden="true">×</span> </button>
<h4 class="modal-title text-primary" id="exampleModalLabel" style="color:#000!important;font-weight:bolder;font-size:16px;">编辑信息</h4>
</div>
<div class="modal-body" style="padding: 0px 88px 28px 88px;">
<div style="  width: 100%;height: 50px; line-height: 34px;">
<div class="form-group">
<label class="col-sm-2 control-label text-right">播放地址</label>
<div class="col-sm-8">
<input class="form-control zdy_music" placeholder="播放地址" value="" type="text" required="">
</div>
</div>
<div class="form-group">
<div class="col-sm-8">
<a href="http://web.9xian.com/help/music.html" target="_blank" style="color:red;text-decoration:underline;">如何添加自定义音乐</a>
</div>
</div>
</div>
</div>
<div class="modal-footer">
<a href="javascript:addselectoption(&#39;music&#39;,$(&#39;.zdy_music&#39;).val());$(&#39;.momo-music&#39;).modal(&#39;hide&#39;);as[0].load($(&#39;#music&#39;).find(&#39;option:selected&#39;).val());" class="btn btn-danger">确定</a>
<a href="http://web.9xian.com/usern/wedding?sitecode=59f163eed158a#" class="btn btn-default" data-dismiss="modal">关闭</a>
</div>
</div>
</div>
</div>
</div>
<div class="modal fade momo-mv" style="top: 0px;right: 0px;" tabindex="-1" role="dialog" aria-labelledby="mySmallModalLabel" aria-hidden="true">
<div class="modal_wrapper">
<div class="modal-dialog modal-sm" style="width: 550px;    z-index: 1045;">
<div class="modal-content login-all-type">
<div class="modal-header">
<button type="button" class="close" data-dismiss="modal" aria-label="Close"> <span aria-hid)den="true">×</span> </button>
<h4 class="modal-title text-primary" id="exampleModalLabel" style="color:#000!important;font-weight:bolder;font-size:16px;">编辑信息</h4>
</div>
<div class="modal-body" style="padding: 0px 88px 28px 88px;">
<div style="  width: 100%;height: 45px; line-height: 34px;">
<div class="clear"></div>
<div class="form-group">
<label class="col-sm-2 control-label text-right">视频地址</label>
<div class="col-sm-8">
<input class="form-control zdy_mv" placeholder="视频地址" value="" type="text" required="">
</div>
</div>
</div>
</div>
<div class="modal-footer">
<a href="javascript:mvpost();" class="btn btn-danger">确定</a>
<a href="http://web.9xian.com/usern/wedding?sitecode=59f163eed158a#" class="btn btn-default" data-dismiss="modal">关闭</a>
</div>
</div>
</div>
</div>
</div>
<div class="modal fade momo-alert" style="top: 0px; right: 0px; z-index: 1051; display: none;" tabindex="-1" role="dialog" aria-labelledby="mySmallModalLabel" aria-hidden="true">
<div class="modal_wrapper">
<div class="modal-dialog modal-sm" style="width: 420px;  margin: 20% auto;    z-index: 1052;">
<div class="modal-content login-all-type">
<div class="modal-header">
<button type="button" class="close" data-dismiss="modal" aria-label="Close"> <span aria-hidden="true">×</span> </button>
<h4 class="modal-title text-primary" id="exampleModalLabel" style="color:#000!important;font-weight:bolder;font-size:16px;">提示信息</h4>
</div>
<div class="modal-body" style="padding: 0px 48px 28px 48px;">
<div style="   width: 100%;height: 30px; line-height: 25px;">
<div class="form-group">
<label class="col-sm-2 control-label text-right" style="width: 100% !important;text-align: center;font-size: 16px;" id="alert-info">信息保存成功！</label>
</div>
</div>
</div>
<div class="modal-footer" style="text-align:center;">
<a href="javascript:$(&#39;.momo-alert&#39;).modal(&#39;hide&#39;);" style="width: 100px;" class="btn btn-danger">确定</a>
</div>
</div>
</div>
</div>
</div>
<div class="modal fade momo-pic-zaiyao" style="top: 0px;right: 0px;" tabindex="-1" role="dialog" aria-labelledby="mySmallModalLabel" aria-hidden="true">
<div class="modal_wrapper">
<div class="modal-dialog modal-sm" style="width: 550px;    z-index: 1045;">
<div class="modal-content login-all-type">
<div class="modal-header">
<button type="button" class="close" data-dismiss="modal" aria-label="Close"> <span aria-hidden="true">×</span> </button>
<h4 class="modal-title text-primary" id="exampleModalLabel" style="color:#000!important;font-weight:bolder;font-size:16px;">编辑图片信息</h4>
</div>
<div class="modal-body" style="padding: 0px 88px 95px 88px;">
<div style="  width: 100%;height: 26px; line-height: 34px;">
<div class="form-group" style="height: 30px; margin-top: 13px;">
<label class="col-sm-2 control-label text-right">图片描述</label>
<div class="col-sm-8">
<input type="hidden" id="picdecp-id" value="">
<textarea name="picdecp" id="picdecp" class="form-control" style="width: 218px;float: left;height: 60px;margin-bottom: 15px;" cols="50" rows="4" maxlength="80"></textarea>
</div>
</div>
<div class="form-group">
<label class="col-sm-2 control-label text-right">实例</label>
<div class="col-sm-8">
<select class="form-control simple-tip inp-site inp-site-fixed" onchange="tipSelected()">
<option>Brief is life, but love is long.</option>
<option>Give you all to me.</option>
<option>I‘ll give my all to you.</option>
<option>You‘re my end and my beginning.</option>
<option>I can‘t be without you.</option>
<option>love love love.</option>
<option>这一刻 我们相爱吧.</option>
<option>遇见了，让我相信这是宿命.</option>
<option>恋你，是一种浪漫的情怀.</option>
<option>一个人的笑印在俩人的眼眸.</option>
<option>喜欢是淡淡的爱，爱是深深的喜欢.</option>
<option>最浪漫的故事没有结局.</option>
<option>相知是天意，相识是人意.</option>
<option>我们能聚在一起，因为心有灵犀.</option>
<option>用心去默默地想你、爱你.</option>
<option>爱着你，你的一切都牵动着我.</option>
<option>醉过才知酒好，爱过才知情浓.</option>
<option>愿得一人心 白首不分离.</option>
</select>
</div>
</div>
</div>
</div>
<div class="modal-footer">
<a href="javascript:setpicdescpost();" class="btn btn-danger">确定</a>
<a href="http://web.9xian.com/usern/wedding?sitecode=59f163eed158a#" class="btn btn-default" data-dismiss="modal">关闭</a>
</div>
</div>
</div>
</div>
</div>
<div class="modal fade momo-pic-jiancai" style="top: 0px;right: 0px;" tabindex="-1" role="dialog" aria-labelledby="mySmallModalLabel" aria-hidden="true">
<div class="modal_wrapper">
<div class="modal-dialog modal-sm" style="width: 550px;    z-index: 1045;">
<div class="modal-content login-all-type">
<div class="modal-header">
<button type="button" class="close" data-dismiss="modal" aria-label="Close"> <span aria-hidden="true">×</span> </button>
<h4 class="modal-title text-primary" id="exampleModalLabel" style="color:#000!important;font-weight:bolder;font-size:16px;">图片剪裁</h4>
</div>
<div class="modal-body" style="padding: 0px 10px 425px 10px;">
<div style="  width: 100%;height: 86px; line-height: 34px;">
<div class="form-group" style="height: 30px;">
<iframe id="jiancaiiframe" src="/numberone/static/mycss/saved_resource(2).html" style="width: 100%; height: 495px; border: 0px;"></iframe>
</div>
</div>
</div>
</div>
</div>
</div>
</div>
<div class="modal fade momo-model" style="top: 0px;right: 0px;" tabindex="-1" role="dialog" aria-labelledby="mySmallModalLabel" aria-hidden="true">
<div class="modal_wrapper">
<div class="modal-dialog modal-sm" style="width: 550px;    z-index: 1045;">
<div class="modal-content login-all-type">
<div class="modal-header">
<button type="button" class="close" data-dismiss="modal" aria-label="Close"> <span aria-hidden="true">×</span> </button>
<h4 class="modal-title text-primary" id="exampleModalLabel" style="color:#000!important;font-weight:bolder;font-size:16px;">模块列表</h4>
</div>
<div class="modal-body" style="padding: 0px 35px 28px 88px;">
<div style="  width: 100%;height: 26px; line-height: 34px;">
<div class="form-group">
<ul class="choose-types" id="modallist">
</ul>
</div>
</div>
</div>
<div class="modal-footer">
<a href="javascript:showmodel(1);" class="btn btn-danger">确定</a>
<a href="http://web.9xian.com/usern/wedding?sitecode=59f163eed158a#" class="btn btn-default" data-dismiss="modal">关闭</a>
</div>
</div>
</div>
</div>
</div>
<div class="modal fade momo-share" style="top: 0px;right: 0px;" tabindex="-1" role="dialog" aria-labelledby="mySmallModalLabel" aria-hidden="true">
<div class="modal_wrapper">
<div class="modal-dialog modal-sm" style="width: 550px;  z-index: 1045;">
<div class="modal-content login-all-type">
<div class="modal-header">
<button type="button" class="close" data-dismiss="modal" aria-label="Close"> <span aria-hidden="true">×</span> </button>
<h4 class="modal-title text-primary" id="exampleModalLabel" style="color:#000!important;font-weight:bolder;font-size:16px;">贵宾制作</h4>
</div>
<div class="modal-body" style="padding: 0px 88px 28px 88px;">
<div style="  width: 100%;line-height: 34px;">
<div id="guibinqr" style="    margin-top: 15px;" class="form-group">
<canvas width="230" height="230"></canvas></div>
<p><b>使用说明：</b>微信扫一扫二维码，输入名字点击确定，再点击进入请柬右上角发送给朋友！</p>
</div>
</div>
</div>
</div>
</div>
</div>
<div class="modal fade momo-map" style="top: 0px;right: 0px;" tabindex="-1" role="dialog" aria-labelledby="mySmallModalLabel" aria-hidden="true">
<div class="modal_wrapper">
<div class="modal-dialog modal-sm" style="width: 650px;margin-top:0px!important; z-index: 1045;">
<div class="modal-content login-all-type">
<div class="modal-header">
<button type="button" class="close" data-dismiss="modal" aria-label="Close"> <span aria-hidden="true">×</span> </button>
<h4 class="modal-title text-primary" id="exampleModalLabel" style="color:#000!important;font-weight:bolder;font-size:16px;">地图定位</h4>
</div>
<div class="modal-body" style="padding: 0px 44px 58px 44px;">
<div class="form-group " style=" line-height: 36px;height: 35px;width: 530px;margin-top: 15px;">
<label class="col-sm-1 control-label text-right">地图地址</label>
<div class="col-sm-9" style="padding-left: 0px;">
<input class="form-control" id="suggestId" placeholder="地市+区（乡镇）+酒店名称" value="" type="text" name="keyword" autocomplete="off" required="" style="float: left;width: 200px;">
<a class="mapseachbtn" id="J_seachMap">
<i class="cm-location"></i>
<span style="display: inline-block;color: #000;">搜索定位</span>
</a>
</div>
</div>
<div class="form-group " id="mapview" style="width: 560px;height: 318px;">
<div id="l-map" class="maparea clear" style="width: 560px;height:320px;"></div>
</div>
<div class="form-group " style="height: 25px;">
<div class="maphelp">
<ul>
<li><b>电子地图编辑帮助：</b></li>
<li><b>地图定位：</b>上方填入完整地址后点击搜索定位；</li>
<li><b>拖动红心：</b>定位到地区后，拖动红心准确定位；</li>
</ul>
</div>
<div class="note">
<div class="text"><b>交通指引说明</b></div>
<textarea name="mbus" id="mbus" class="inp-text"></textarea>
</div>
</div>
</div>
<div class="modal-footer">
<a href="javascript:savemap();" class="btn btn-danger">确定</a>
<a href="javascript:" class="btn btn-default" data-dismiss="modal">关闭</a>
</div>
<script type="text/javascript">
		            function savemap(){
		              $("#bus").val($("#mbus").val());
		              $('.momo-map').modal('hide');
		            }
		          </script>
</div>
</div>
</div>
</div>
</div>
<script src="/numberone/static/myjs/mobiscroll_f.js" type="text/javascript"></script>
<link href="/numberone/static/mycss/mobiscroll.css" rel="stylesheet" type="text/css">
<script src="/numberone/static/myjs/mobiscroll.js" type="text/javascript"></script>
<script src="/numberone/static/myjs/jquery.serializejson.min.js" type="text/javascript"></script>
<script type="text/javascript" src="/numberone/static/myjs/jquery.qrcode.min.js"></script>
<script>


var base_url = 'http://web.9xian.com/';
var thismodel = Array();
thismodel['hidemode56']=-1;	
thismodel['hidemode222']=-1;	
thismodel['hidemode229']=-1;
thismodel['hidemode213']=-1;
thismodel['hidemode38']=-1;
thismodel['hidemode228']=-1;

var postdata = Array();
var phoneIframe;
$(document).ready(function() {
  	phoneIframe = $("#phoneIframe").attr("src");
  	base_load();

  	$('#rootwizard').bootstrapWizard({onNext: function(tab, navigation, index) {

	}, onTabShow: function(tab, navigation, index) {
		
		if(index != 1){
			if( $("#sitename").val() == "我们结婚啦!" && $("#bridegroom").val() != "新郎" && $("#bride").val() != "新娘" ){
				$("#sitename").val($("#bridegroom").val()+" ❤️ "+$("#bride").val()+" 婚礼邀约");
			}
		}
		saveAllConfig();

	}});
	window.prettyPrint && prettyPrint();

	template_lock();
	

});

function closepic(){
  $('.momo-pic-jiancai').modal('hide');
}

function template_lock(){
	if(templete_id==1){
		$(".ztab2").parent().remove();
		$(".qj-xrpic").remove();
		$(".zzhanshilunhuan").remove();
	}else if(templete_id==2){
		$(".delspanxc").hide();
		$(".qj-coveret").hide();
		$(".qj-floatet").hide();
		$(".delspanlc").parent().remove();
		$(".ztab2").parent().remove();
		$(".zzhanshilunhuan").remove();
	}else if(templete_id==3){
		//$(".delspanxc").hide();
		$(".delspanxy").hide();
		$(".qj-xrpic").remove();
		$(".ztab2").parent().remove();
		//$(".cm-location").parent().parent().remove();
		$("#lcs_tt1").remove();
		//$("#lcs_tt2").remove();
		$(".qj-coveret").hide();
		$(".qj-floatet").hide();
		$(".ztab5").parent().remove();
		$(".ztab6").parent().remove();
		$(".zzhanshilunhuan").remove();
	}else if(templete_id==4){
		$(".qj-xrpic").hide();
		$(".qj-coveret").hide();
		$(".qj-floatet").hide();
	}
}

/** switch bind  */
$('body').delegate('.lcs_tt1', 'lcs-statuschange', function() {
	if($(this).is(':checked')){
		thismodel['hidemode228']=0;
	}else{
		thismodel['hidemode228']=1;
	}
});
$('body').delegate('.lcs_tt2', 'lcs-statuschange', function() {
	if($(this).is(':checked')){
		thismodel['hidemode222']=0;
	}else{
		thismodel['hidemode222']=1;
	}
});

function showmodel(flag){
	if(flag==0){
		var hidemodellist = $('li:has([data-toggle="tab"]):hidden');
		var s='';
		for(var i=0;i<hidemodellist.length;i++){
			var inclass = $(hidemodellist[i]).find("a").attr('class');
			var inhtml = $(hidemodellist[i]).find("a").html();
			s += '<li class=""><label class="checkbox"><input name="modalinput[]" value="'+inclass+'" type="checkbox">'+inhtml+'</label></li>';
		}
		$("#modallist").html(s);
		$('.momo-model').modal('show');
	}else{
		$("input[name='modalinput[]']").each(function(){
			if($(this).is(':checked')){
				var _modelclass = $(this).val();
				$("."+_modelclass).parent().show();
				if(_modelclass=="ztab3"){
			    	thismodel['hidemode56']=0;	
			    }else if(_modelclass=="ztab4"){
			    	thismodel['hidemode229']=0;
			    }else if(_modelclass=="ztab5"){
			    	thismodel['hidemode213']=0;
			    }else if(_modelclass=="ztab6"){
			    	thismodel['hidemode38']=0;
			    }
			}
		});

		$('.momo-model').modal('hide');
		zalert("添加成功!");
	}
}


function eventbind(){

	$('li:has([data-toggle="tab"]):visible span').click(function () {
		var index = $('li:has([data-toggle="tab"]):visible').index($(this).parent());
	    $('#rootwizard').bootstrapWizard('hide', index);
	    var _modelclass = $(this).parent().find('a').attr('class');
	    
	    if(_modelclass=="ztab3"){
	    	thismodel['hidemode56']=1;	
	    }else if(_modelclass=="ztab4"){
	    	thismodel['hidemode229']=1;
	    }else if(_modelclass=="ztab5"){
	    	thismodel['hidemode213']=1;
	    }else if(_modelclass=="ztab6"){
	    	thismodel['hidemode38']=1;
	    }
	    
	});

    $("#music").on("change", function (e) { 
        if($(this).val()){
            if(!($("#J_MusicPlayer").length > 0)){
                $("#js_audio").append('<audio src="'+$(this).find('option:selected').val()+'" preload="auto" id="J_MusicPlayer" ></audio>');         
                as =  audiojs.createAll(), as[0].play();
            } else {
                as[0].pause(), as[0].load($(this).find('option:selected').val()), as[0].play(); 
            }
        }
    });

}


/** Tools */
function base_load(){
	/*$('#rootwizard').bootstrapWizard();
	window.prettyPrint && prettyPrint();*/

	$('.lcs_check').lc_switch();
	getallimages(1);
	getallimages(2);
	var selects=new Array("stylecode","wedtype","music","playurl","coveretc","floatetc","zhanshilunhuan");
	for(var o in selects){
		if(selects[o]=='music'){
			$("#"+selects[o]).select2();
		}else{
			$("#"+selects[o]).select2({minimumResultsForSearch: -1});
		}
	}

	eventbind();

	postdata["jbform"] = $("#jbform").serializeJSON();
	postdata["xcform"] = $("#xcform").serializeJSON();
	postdata["lhform"] = $("#lhform").serializeJSON();
	postdata["dtform"] = $("#dtform").serializeJSON();
	postdata["xyform"] = $("#xyform").serializeJSON();
	postdata["lcform"] = $("#lcform").serializeJSON();
	postdata["mvform"] = $("#mvform").serializeJSON();
	postdata["fsform"] = $("#fsform").serializeJSON();

}

function addselectoption(id,text){
	if(id=='wedtype'){
	    $("#"+id).prepend('<option selected >'+text+'</option>');  
	}else{
        if(text.indexOf('y.qq.com')!='-1'){
            $.ajax({
                url:'/usern/get_music',
                data:{url:text,id:id},
                dataType:'json',
                type:'post',
                success:function(r){
	                $("#"+r.id).prepend('<option selected value ="'+r.music+'" >自定义</option>');
                    if(!($("#J_MusicPlayer").length > 0)){
                        $("#js_audio").append('<audio src="'+r.music+'" preload="auto" id="J_MusicPlayer" ></audio>');         
                        as =  audiojs.createAll();
                    } else {
                        as[0].pause(), as[0].load(r.music); 
                    }
                }
            });
        }else{
	        $("#"+id).prepend('<option selected value ="'+text+'" >自定义</option>');
            if(!($("#J_MusicPlayer").length > 0)){
                $("#js_audio").append('<audio src="'+text+'" preload="auto" id="J_MusicPlayer" ></audio>');         
                as =  audiojs.createAll();
            } else {
                as[0].pause(), as[0].load(text); 
            }
        }
	}
	if(id=='music'){
		$("#"+id).select2();
	}else{
		$("#"+id).select2({minimumResultsForSearch: -1});
	}
}

function piccallback(type, json){
	if(type=="fengmian"){
		if(json.status==200){
			$("#imgbackphone").attr("src",json.entity.filepath);
			$("input[name='backphone_linkcode']").val(json.entity.piccode);
			$("input[name='backphone']").val(json.entity.filepath);
			$("#cimgbackphone").attr("href","javascript:editpic("+json.entity.piccode+",'fengmian');");
		}
	}else if(type=="fenxiang"){
		if(json.status==200){
			$("#imgwx_mainpic").attr("src",json.entity.filepath);
			$("input[name='wx_mainpic_linkcode']").val(json.entity.piccode);
			$("input[name='wx_mainpic']").val(json.entity.filepath);
			$("#cimgwx_mainpic").attr("href","javascript:editpic("+json.entity.piccode+",'fenxiang');");
		}
	}else if(type=="pics"){
		getallimages(1);
	}else if(type=="picsl"){
		getallimages(2);
	}
	$('.momo-pic-jiancai').modal('hide');
}

function tipSelected(){
	var value = $('select.simple-tip option:selected').text();
	var textarea = $('textarea#picdecp');
	textarea.val(value);
}

function changeformitem(item){
	var this_postdata = {};
	this_postdata.id='59f163eed158a';
	/**************/
	var thispostdata = $("#"+item).serializeJSON();
	for(var o in postdata[item]){  
	  if(thispostdata[o]==postdata[item][o]){
	    delete thispostdata[o];
	  }
	}
	//模块显示隐藏
	for(var a in thismodel){
		if(thismodel[a]>-1){
			thispostdata[a]=thismodel[a];
		}
	}
	//删除地图搜索的key
	delete thispostdata['keyword'];
	this_postdata.list = thispostdata;
	/**************/
	return this_postdata;
}

function saveAllConfig(){
	$("form").each(function () {
		var this_id = $(this).attr("id");
			if(this_id == 'xcform' || this_id == 'lhform'){
				if(JSON.stringify($("#"+this_id).serializeJSON()) != '{}'){
			  	$.ajax({
					url:"http://web.9xian.com/usern/sortlist",
					type:"post",
					contentType: 'application/json; charset=utf-8', 
					data:JSON.stringify($("#"+this_id).serializeJSON()),
					dataType: "json",
					success : function(data){postdata[""+this_id] = $("#"+this_id).serializeJSON(); iframeupdatemode();}
				});
				}
			}else{	
				if(JSON.stringify(JSON.parse(JSON.stringify(changeformitem(this_id))).list) != '{}'){
				$.ajax({
					url:"http://web.9xian.com/usern/saveConfig",
					type:"post",
					contentType: 'application/json; charset=utf-8', 
					data:JSON.stringify(changeformitem(this_id)),
					dataType: "json",
					success : function(data){postdata[""+this_id] = $("#"+this_id).serializeJSON(); iframeupdatemode();}
				}); 
				}
			}
	}); 
}
function saveConfig(zok){
	$("form").each(function () {
		var this_id = $(this).attr("id");
		if($(this).is(':visible')){
			if(this_id=="xcform" || this_id=="lhform"){
			  	$.ajax({
					url:"http://web.9xian.com/usern/sortlist",
					async:false,
					type:"post",
					contentType: 'application/json; charset=utf-8', 
					data:JSON.stringify($("#"+this_id).serializeJSON()),
					dataType: "json",
					success : function(data){postdata[""+this_id] = $("#"+this_id).serializeJSON(); iframeupdatemode();}
			  	});
			}else{
				$.ajax({
					url:"http://web.9xian.com/usern/saveConfig",
					async:false,
					type:"post",
					contentType: 'application/json; charset=utf-8', 
					data:JSON.stringify(changeformitem(this_id)),
					dataType: "json",
					success : function(data){postdata[""+this_id] = $("#"+this_id).serializeJSON(); iframeupdatemode();}
				}); 
			}
		}
	}); 
	if(zok=="ok"){
		zalert("请柬已制作完成，用微信扫一扫右边的二维码即可发送！");
    }else if(zok=='no'){
        //无提示
	}else if(zok==""){
		zalert("信息保存成功！");
	}
}


/**alert */
function zalert(text){
	$("#alert-info").html(text);
	$('.momo-alert').modal('show');
}

/**liucheng */
function addliucheng(){
	var liuchenginfo = $("#liuchenginfo").val();
	var num = $(".liuchenga").size();
	if(num>=6){
		zalert("婚礼流程最多只能有6个");
	}else{
		if(!liuchenginfo){
			zalert("请输入流程信息");
		}else{
			var timestamp = Date.parse(new Date());  
			$("#liuchenglist").append("<tr id='tr"+timestamp+"'><td style='padding-bottom: 5px;'><input class='liuchenga' maxlength='20' oninput='changethisliucheng()' type='text' value='"+liuchenginfo+"' ><a class='delliucheng' href='javascript:delliucheng("+timestamp+")' ></a></td></tr>");
			addliuchengtextare();
		}
	}
}
function delliucheng(obj){
	$("#tr"+obj).remove();
	addliuchengtextare();
}
function addliuchengtextare(){
	var info='';
	$(".liuchenga").each(function(){
		if($(this).val()){
			info+="<p style='text-align:center;'>"+$(this).val()+"</p>";
		}   
	});
	window.KE.html(info);
}
function changethisliucheng(){
	addliuchengtextare();
}

/**mv */
function mvpost(){
  var a = $('.zdy_mv').val();
  if(a){
    $('.momo-mv').modal('hide');
    changemv(a);
  }
}
</script>
<script>
function changemv(_url){
  if(_url!=""){
  var url = $('#playurl').find('option:selected').val();
  if(_url){
    url=_url;
  }
  url=url.replace(/\"/g,'');
  url=url.replace(/\</g,'');
  url=url.replace(/\>/g,'');
  var a = url.match(/https?:\/\/(.*?)?\.(.*?)?\.com\/(.*)/);
  i=a[2];
  var swf;
  if (i == "youku") {
      if(url.indexOf('.html') > 0){
        var reg =/http:\/\/v\.youku\.com\/v_show\/id_(.*)\.html/;
        var m = url.match(reg);
      }else{
        url = url.substring(0,url.indexOf('==')+2);
        a = url.substring(0,url.indexOf('=='))+'.html';
        var reg =/http:\/\/v\.youku\.com\/v_show\/id_(.*)/;
        var m = url.match(reg);
      }
    swf ='<object data="http://player.youku.com/player.php/sid/'+m[1]+'/v.swf" type="application/x-shockwave-flash" wmode="opaque" width="600" height="400"></object>';
  }
  if (i == "tudou") {
    a = a[0];
    var reg = /http:\/\/www.tudou\.com\/(.*)?\/(.*)?/;
    var m = url.match(reg);
    var strs= new Array(); //定义一数组
    strs=m[1].split("/");
    var strs1= new Array(); //定义一数组
    if(strs[0]=="albumplay"){
        strs1=m[1].split("/")[1];
        swf ='<object data="http://www.tudou.com/a/'+strs1+'/&iid=132670460&resourceId=0_04_0_99/v.swf" type="application/x-shockwave-flash" wmode="opaque" width="600" height="400"></object>';
    }else if(strs[0]=="programs"){
        var m1 = m[0].split('?');
        if(m1[0].charAt(m1[0].length -1) == '/'){
            m1 = m1[0].substr(0,m1[0].length - 1) + '?' + m1[1];
            a = m1;
        }else{
            m1 = m[0];
        }
        strs1 = m1.split('?')[0].split('/')[5];
        swf ='<object data="http://www.tudou.com/v/'+strs1+'/&resourceId=0_04_05_99/v.swf" type="application/x-shockwave-flash" wmode="opaque" width="600" height="400"></object>';
    }
  }
  if (i == "qq") {
    var pattern = /(\w+)=(\w+)/ig;//定义正则表达式
    var parames = {};//定义数组
    url.replace(pattern, function(a, b, c){
      parames[b] = c;
    });
    u=parames['vid'];
    if(!u){
        sarr = url.split("/");
        us = sarr.pop();
        if(us.indexOf(".html") > 0 ){
            //alert('Cts中包含Text字符串');
            uss=us.split(".");
            u = uss[0];
        }
    }
    swf ='<object data="http://static.video.qq.com/TPout.swf?vid='+u+'&auto=0" type="application/x-shockwave-flash" wmode="opaque" width="600" height="400"></object>';
    a = a[0];
  }
  $("#mviframe").html(swf);
  $("#playurl").append("<option value='"+a+"' selected >自定义</option>");
  $("#playurl").select2({minimumResultsForSearch: -1});
  }
}
changemv('');
</script>
<script>
/* 时间选择插件 */
var currYear = (new Date()).getFullYear();  
var opt={};
opt.date = {preset : 'date'};
opt.datetime = {preset : 'datetime'};
opt.time = {preset : 'time'};
opt.default = {
theme: 'android-ics light', //皮肤样式
    display: 'modal', //显示方式 
    mode: 'scroller', //日期选择模式
dateFormat: 'yyyy年mm月dd日 DD',
lang: 'zh',
showNow: true,
nowText: "今天",
    startYear: currYear - 15, //开始年份
    endYear: currYear + 10 //结束年份
};
$(function () {
      $(".form_datetime").mobiscroll($.extend(opt['date'], opt['default']));
      //var optDateTime = $.extend(opt['datetime'], opt['default']);
      var optTime = $.extend(opt['time'], opt['default']);
      //$("#appDateTime").mobiscroll(optDateTime).datetime(optDateTime);
      $(".form_datetime1").mobiscroll(optTime).time(optTime);
});

/**map */
function initmap(){
	var h = ((1+Math.random())*65536 | 0).toString(16).substring(1);
	$(".maparea").attr("id",h);
	var this_point = $("#mappoint").val();
	var w = this_point.split(",");
	if(w[0]){
		var iii={ maparea: h,latmarker: w[0],lngmarker: w[1]};
	}else{
		var iii={ maparea: h};
	}
	baidumap.init(iii);
}
      
var baidumap = {
  init: function(t) {
      
      t = $.extend({
          maparea: "l-map",
          latmarker: "36.122518",
          lngmarker: "120.409423",
          mapaddr: ""
      },
      t);
      var n = window.BMap,
      r = new n.Map(t.maparea),
      i = new n.Point(t.lngmarker, t.latmarker);
      r.centerAndZoom(i, 15),
      r.addControl(new n.NavigationControl),
      r.addControl(new n.MapTypeControl({ anchor: BMAP_ANCHOR_TOP_RIGHT })),
      r.enableScrollWheelZoom();
      var s = new n.Icon(base_url+"images/map_marker.png", new n.Size(34, 34), {
          offset: new n.Size(17, 34),
          imageOffset: new n.Size(0, 0)
      }),
      o = new n.Marker(i, {
          icon: s,
          enableDragging: !0,
          raiseOnDrag: !0,
          title: "拖拽以标注地址"
      }),
      u = function(e) {
          var n = e.point.lat + "," + e.point.lng;
          $("#mappoint").val(n)
      };
      o.addEventListener("dragging", u),
      r.addEventListener("zoomend", function(){
         $('#mapzoom').val(this.getZoom());
      }),
      r.addOverlay(o),
      o.enableDragging();
      var a = function(i, a) {
          
          var l = new n.LocalSearch(r, {
              onSearchComplete: f
          });
          function f() {
              var f = l.getResults().getPoi(0);
              if (f) {
                  r.clearOverlays();
                  var c = f.point;
                  o = new n.Marker(c, {
                      icon: s,
                      enableDragging: !0,
                      raiseOnDrag: !0,
                      title: "拖拽以标注地址"
                  }),
                  o.addEventListener("dragging", u),
                  r.centerAndZoom(c, 15),
                  r.addOverlay(o);
                  var h = c.lat + "," + c.lng;
                  $("#mappoint").val(h),
                  $("#suggestId").val(i)
              } else a == "auto" ? $("#suggestId").val("") : alert("您的地址不能自动识别，请调整搜索地名重试！")
          };
          l.search(i);
      };
      $("#J_seachMap").click(function() {
          var t = $("#suggestId").val();
          a(t)
      }),
      t.mapaddr && a(t.mapaddr, "auto");
      var f = function(e) {
          return document.getElementById(e)
      },
      l = new n.Autocomplete({
          input: "suggestId",
          location: r
      });
      //r.panBy(305,165);//偏移像素
      l.addEventListener("onhighlight",function(e) {});
      var c;
      l.addEventListener("onconfirm",function(e) {
          var t = e.item.value;
          c = t.province + t.city + t.district + t.street + t.business,
          a(c)
      })
  }
}

/**qr */
$('#J_qrcode').qrcode({render:"canvas",text:"http://web.9xian.cc/app/a/VBV7Jr",width:230,height:230});
$('#guibinqr').qrcode({render:"canvas",text:"http://web.9xian.cc/app/send?surl=VBV7Jr",width:230,height:230});

/**getimage  */
function getallimages( type ){
	var id = '59f163eed158a';
	var s,s1,ss,ss1 = '';
	if(type==1){
		$.getJSON(base_url+"invite/piclistn?sitecode="+id+"&typecode=0&page=1&_=1454770434075",function(json){
	      var data = json.entity.list;
	      for(var o in data){ 
	      	if(data[o].picname=="xn" || data[o].picname=="xl" || data[o].picname=="xr"){
		      	s1 = '<li class="pic-'+data[o].piccode+'" desc="'+data[o].decp+'" >'+
						'<div class="file_cancel">'+
						'<a title="删除图片" class="a-del" onclick="delpic('+data[o].piccode+');" href="javascript:;"></a>'+
						'<a title="裁剪图片" class="a-edit" onclick="editpic('+data[o].piccode+');" href="javascript:;"></a>'+
						'</div>'+
						'<div class="ppimg" style="width: 120px;height: 90px;background: url('+data[o].minpath+') no-repeat;background-size: auto 100%;background-position: center;"></div>'+
						'<input type="hidden" name="picssort[]" value="'+data[o].piccode+'" />'+
					'</li>';
				ss1=s1+ss1;
			}else{
				s = '<li class="pic-'+data[o].piccode+'" desc="'+data[o].decp+'" >'+
					'<div class="file_cancel">'+
					'<a title="删除图片" class="a-del" onclick="delpic('+data[o].piccode+');" href="javascript:;"></a>'+
					'<a title="裁剪图片" class="a-edit" onclick="editpic('+data[o].piccode+');" href="javascript:;"></a>'+
					'<a title="编辑图片" class="a-oen" onclick="setpicdesc('+data[o].piccode+');" href="javascript:;"></a>'+
					'</div>'+
					 '<select class="picselectt1" onchange="setpictx(this.value,'+data[o].piccode+')">'+
	                        '<option '+(data[o].tx==0?'selected="selected"':'')+' value="0">飞入</option>'+
                            '<option '+(data[o].tx==1?'selected="selected"':'')+' value="1">左右</option>'+
                            '<option '+(data[o].tx==2?'selected="selected"':'')+' value="2">右左</option>'+
                            '<option '+(data[o].tx==3?'selected="selected"':'')+' value="3">放大</option>'+
                            '<option '+(data[o].tx==4?'selected="selected"':'')+' value="4">缩小</option>'+
                            '<option '+(data[o].tx==5?'selected="selected"':'')+' value="5">左右重影</option>'+
                            '<option '+(data[o].tx==6?'selected="selected"':'')+' value="6">抖动</option>'+
                            '<option '+(data[o].tx==7?'selected="selected"':'')+' value="7">特写</option>'+
                            '<option '+(data[o].tx==8?'selected="selected"':'')+' value="8">翻转</option>'+
                            '<option '+(data[o].tx==9?'selected="selected"':'')+' value="9">朦胧</option>'+
                            '<option '+(data[o].tx==10?'selected="selected"':'')+' value="10">上下重影</option>'+
                            '<option '+(data[o].tx==11?'selected="selected"':'')+' value="11">移动</option>'+
                            '<option '+(data[o].tx==12?'selected="selected"':'')+' value="12">3D</option>'+
                            '<option '+(data[o].tx==13?'selected="selected"':'')+' value="13">航拍</option>'+
                            '<option '+(data[o].tx==13?'selected="selected"':'')+' value="14">无</option>'+
	                      '</select>'+
					'<div class="ppimg" style="    border: 1px dashed #BFBFBF;width: 120px;height: 90px;background: url('+data[o].minpath+') no-repeat;background-size: auto 100%;background-position: center;"></div>'+
					'<input type="hidden" name="picssort[]" value="'+data[o].piccode+'" />'+
				'</li>';
				if(s){
					ss=s+ss;	
				}
			}
	      }  
          ss = ss.replace("undefined","");
	      ss1 = ss1.replace("undefined","");
	      console.log(ss1);
	      //$(".house_imglist_xgt").html(ss1);
	      $(".house_imglist_sjt").html(ss);

	    });
	}else{
		$.getJSON(base_url+"invite/piclist?sitecode="+id+"&typecode=0&uptype=zs&page=1&_=1454770434075",function(json){
	        var data = json.entity.list;
	        for(var o in data){
	         var s = '<li class="pic-'+data[o].piccode+'" desc="'+data[o].decp+'" >'+
				'<div class="file_cancel">'+
				'<a title="删除图片" class="a-del" onclick="delpic('+data[o].piccode+');" href="javascript:;"></a>'+
				'<a title="裁剪图片" class="a-edit" onclick="editpic('+data[o].piccode+');" href="javascript:;"></a>'+
				'</div>'+
				'<div class="ppimg" style="    border: 1px dashed #BFBFBF;width: 120px;height: 90px;background: url('+data[o].minpath+') no-repeat;background-size: auto 100%;background-position: center;"></div>'+
				'<input type="hidden" name="picssort[]" value="'+data[o].piccode+'" />'+
			'</li>';
	          ss=s+ss;
	        }
	        try{ss = ss.replace("undefined","");}catch(e){}
	        $(".house_imglist_ptt").html(ss);
	    });
	}
	setTimeout(function(){
		//$(".house_imglist_xgt").sortable();
		$(".house_imglist_sjt").sortable();
		$(".house_imglist_ptt").sortable();
	},1000);
}
function delpic(id){
	if(confirm('是否删除此照片?')){
	   $.getJSON(base_url+"invite/deletePic?piccode="+id+"&_=12345678911",function(json){
	    if(json.status==200){
	      $(".pic-"+id).empty();
	      $(".pic-"+id).remove();
	    }
	   });
	}
}
function setpictx(a,b){
  	$.getJSON(base_url+'index.php/usern/setpictx', {piccode:b,tx:a}, function(json) {
	  	zalert("设置成功");
	});
}
function editpic(id,type){
	if(type=="fengmian"){
        if(templete_id == 3){
	        var src=base_url+"usern/cropimg?piccode="+id+"&width=640&height=1136&maxwidth=640&maxheight=1136&itemcode=38&sitecode=59f163eed158a";
        }else{
	        var src=base_url+"usern/cropimg?piccode="+id+"&width=640&height=1136&maxwidth=640&maxheight=1136&itemcode=37&sitecode=59f163eed158a";
        }
	}else if (type=="fenxiang"){
	  var src=base_url+"usern/cropimg?piccode="+id+"&width=%E6%AD%A3%E6%96%B9%E5%BD%A2&height=undefined&maxwidth=%E6%AD%A3%E6%96%B9%E5%BD%A2&maxheight=undefined&itemcode=47&sitecode=59f163eed158a";
	}else{
	  var hhh='';
	  if(templete_id==4){
	  	type='hhh';
	  }
	  if(type=="hhh"){hhh=1;}
	  var src=base_url+"usern/cropimg?piccode="+id+"&hhh="+hhh;
	}

	$("#jiancaiiframe").attr("src",src);
	$('.momo-pic-jiancai').modal('show');
}
function setpicdesc(id){
	$("#picdecp-id").val(id);
	var desc = $(".pic-"+id).attr("desc");
	if(desc!="null"){
	 	$("#picdecp").val(desc);
	}else{
	  	$("#picdecp").val("");        
	}
	$('.momo-pic-zaiyao').modal('show');
}
function setpicdescpost(){
    var piccode = $("#picdecp-id").val()+"";
    var decp = $("#picdecp").val()+"";
    $('.momo-pic-zaiyao').modal('hide');
    $.ajax({
        url:base_url+"pictrue/update",
        async:false,
        type:"post",
        contentType: 'application/json; charset=utf-8', 
        data:JSON.stringify({piccode:piccode,decp:decp}),
        dataType: "json",
        success : function(data){
            if(data.status==200){
                zalert("修改成功！");
                $(".pic-"+piccode).attr("desc",decp);
            }else{
              zalert("修改失败！");
            }
        }
    });
 }



</script>
<script>
$('#file_upload_sjt').uploadifive({
	'formData'     : {
	    'timestamp' : '1508996909',
	    'token'     : '9e87bb1f32c8a258fdd81521b0a25c7c',
	    'sitecode'  : '59f163eed158a'
	  },
    'queueID' : 'queue_sjt',
	'buttonText' : '+上传图片',
  	'uploadScript' : base_url+'invite/upload_photo',
	'auto'	: true,
    'simUploadLimit':1,
	'queueSizeLimit' : 15,
	'fileType':'image/jpeg,image/png',
	'fileSizeLimit'	:	'20MB',
    'removeCompleted':true,
	'onUploadComplete' :	function( fileObj, response, data)	{
		response = eval('(' + response + ')');
	    if(response.status=="200"){
			var s = '<li class="pic-'+response.entity.piccode+'" desc="" >'+
					'<div class="file_cancel">'+
					'<a title="删除图片" class="a-del" onclick="delpic('+response.entity.piccode+');" href="javascript:;"></a>'+
					'<a title="裁剪图片" class="a-edit" onclick="editpic('+response.entity.piccode+');" href="javascript:;"></a>'+
					'<a title="编辑图片" class="a-oen" onclick="setpicdesc('+response.entity.piccode+');" href="javascript:;"></a>'+
					'</div>'+
					 '<select class="picselectt1" onchange="setpictx(this.value,'+response.entity.piccode+')">'+
	                        '<option selected value="0">飞入</option>'+
                            '<option value="1">左右</option>'+
                            '<option value="2">右左</option>'+
                            '<option value="3">放大</option>'+
                            '<option value="4">缩小</option>'+
                            '<option value="5">左右重影</option>'+
                            '<option value="6">抖动</option>'+
                            '<option value="7">特写</option>'+
                            '<option value="8">翻转</option>'+
                            '<option value="9">朦胧</option>'+
                            '<option value="10">上下重影</option>'+
                            '<option value="11">移动</option>'+
                            '<option value="12">3D</option>'+
                            '<option value="13">航拍</option>'+
                            '<option value="14">无</option>'+
	                      '</select>'+
					'<div class="ppimg" style="border: 1px dashed #BFBFBF;width: 120px;height: 90px;background: url('+response.entity.minpath+') no-repeat;background-size: auto 100%;background-position: center;"></div>'+
					'<input type="hidden" name="picssort[]" value="'+response.entity.piccode+'" />'+
				'</li>';
	        $(".house_imglist_sjt").append(s);
	        
	    }
	}
});
$('#file_upload_ptt').uploadifive({
	'formData'     : {
	    'timestamp' : '1508996909',
	    'token'     : '9e87bb1f32c8a258fdd81521b0a25c7c',
	    'sitecode'  : '59f163eed158a'
	  },
    'queueID' : 'queue_ptt',
	'buttonText' : '+上传图片',
  	'uploadScript' : base_url+'invite/upload_photo_zs',
	'auto': true,
    'simUploadLimit':1,
	'queueSizeLimit' : 10,
	'fileType':'image/jpeg,image/png',
	'fileSizeLimit'	:	'20MB',
    'removeCompleted':true,
	'onUploadComplete' :	function( fileObj, response, data)	{
		response = eval('(' + response + ')');
	    if(response.status=="200"){ 
	        var s = '<li class="pic-'+response.entity.piccode+'" desc="" >'+
					'<div class="file_cancel">'+
					'<a title="删除图片" class="a-del" onclick="delpic('+response.entity.piccode+');" href="javascript:;"></a>'+
					'<a title="裁剪图片" class="a-edit" onclick="editpic('+response.entity.piccode+',\'hhh\');" href="javascript:;"></a>'+
					'</div>'+
					'<div class="ppimg" style="border: 1px dashed #BFBFBF;width: 120px;height: 90px;background: url('+response.entity.minpath+') no-repeat;background-size: auto 100%;background-position: center;"></div>'+
					'<input type="hidden" name="picssort[]" value="'+response.entity.piccode+'" />'+
				'</li>';
	       $(".house_imglist_ptt").append(s);
	       
	     }
	}
});


$('#wx_mainpic_upload').uploadifive({
  'formData'     : {
    'timestamp' : '1508996909',
    'token'     : '9e87bb1f32c8a258fdd81521b0a25c7c',
    'sitecode'  : '59f163eed158a',
    'uptype'    : 'crop',
    'wx'		: 'wok',
  },
  'queueID' : 'queue_mainpic',
  'uploadScript' : base_url+'usern/upload',
  'buttonText' : '+选择图片',
  'fileSizeLimit' :'20MB',
  'auto': true, //非自动上传模式。
  'multi': false,
'removeCompleted':true,
  'fileType': 'image/jpeg,image/png',//允许的格式
  'onUploadComplete': function ( fileObj, response, data) {  
  	response = eval('(' + response + ')');
    if(response.status=="200"){
      $("#imgwx_mainpic").attr("src",response.entity.filepath);
      $("input[name='wx_mainpic_linkcode']").val(response.entity.piccode);
      $("input[name='wx_mainpic']").val(response.entity.filepath);
      $("#cimgwx_mainpic").attr("href","javascript:editpic("+response.entity.piccode+",'fenxiang');");
    }
  },
   'onUploadStart' : function(file) {
         $("imgwx_mainpic").attr("src","http://web.9xian.com/images/file_loading.gif?t=2");
    }
});
$('#backphone_upload').uploadifive({
  'formData'     : {
    'timestamp' : '1508996909',
    'token'     : '9e87bb1f32c8a258fdd81521b0a25c7c',
    'sitecode'  : '59f163eed158a',
    'uptype'    : 'crop'
  },
  'queueID' : 'queue_backphone',
  'uploadScript' : base_url+'usern/upload',
  'buttonText' : '+选择图片',
  'fileSizeLimit' :'20MB',
  'removeCompleted':true,
  'auto': true, //非自动上传模式。
  'multi': false,
  'fileType': 'image/jpeg,image/png;',//允许的格式
  'onUploadComplete': function ( fileObj, response, data) {  
	  response = eval('(' + response + ')');
    if(response.status=="200"){
      $("#imgbackphone").attr("src",response.entity.filepath);
      $("input[name='backphone_linkcode']").val(response.entity.piccode);
      $("input[name='backphone']").val(response.entity.filepath);
      $("#cimgbackphone").attr("href","javascript:editpic("+response.entity.piccode+",'fengmian');");
    }
  }/*,
  'onUploadStart' : function(file) {
         $("imgbackphone").attr("src","http://web.9xian.com/images/file_loading.gif?t=2");
    }*/
});

</script>
<script type="text/javascript" src="/numberone/static/mycss/api"></script><script src="/numberone/static/mycss/getscript"></script>


</body></html>