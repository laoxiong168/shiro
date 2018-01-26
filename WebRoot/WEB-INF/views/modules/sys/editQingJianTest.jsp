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
<div class="container11">
<section id="wizard">
<div id="rootwizard">
<div class="tab-content" style="width: 770px;float: left;">
<div class="tab-pane active" id="tab1">
<div class="panel-body">


	<div class="form-group">
<label class="col-sm-2 control-label text-right">新&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;郎</label>
<div class="col-sm-3">
<input class="form-control " placeholder="新郎" id="bridegroom" name="bridegroom" value="帅逼" type="text" required="">
</div>
<label class="col-sm-2 control-label text-right">新&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;娘</label>
<div class="col-sm-3">
<input class="form-control" placeholder="新娘" id="bride" name="bride" value="靓女" type="text" required="">
</div>
</div>



<form method="post" action="http://web.9xian.com/usern/wedding?sitecode=59f163eed158a" class="form-horizontal itemdd1" id="jbform" role="form" enctype="multipart/form-data">
<input type="hidden" id="mappoint" name="mappoint" value="30.663003,113.179016">
<input type="hidden" id="mapzoom" name="mapzoom" value="15">
<textarea style="display: none;" name="bus" id="bus" class="inp-text"></textarea>
<div class="form-group">
<label class="col-sm-2 control-label text-right">婚宴类型</label>
</div>
<div class="form-group">
<label class="col-sm-2 control-label text-right">新&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;郎</label>
<div class="col-sm-3">
<input class="form-control " placeholder="新郎" id="bridegroom" name="bridegroom" value="帅逼" type="text" required="">
</div>
<label class="col-sm-2 control-label text-right">新&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;娘</label>
<div class="col-sm-3">
<input class="form-control" placeholder="新娘" id="bride" name="bride" value="靓女" type="text" required="">
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

<br class="clear">
<br class="clear">
<br class="clear">
</form>
</div>
</div>
</div>
</div>
</section>
</div>
<script src="/numberone/static/myjs/mobiscroll_f.js" type="text/javascript"></script>
<link href="/numberone/static/mycss/mobiscroll.css" rel="stylesheet" type="text/css">
<script src="/numberone/static/myjs/mobiscroll.js" type="text/javascript"></script>
<script src="/numberone/static/myjs/jquery.serializejson.min.js" type="text/javascript"></script>
<script type="text/javascript" src="/numberone/static/myjs/jquery.qrcode.min.js"></script>
<script type="text/javascript" src="/numberone/static/mycss/api"></script><script src="/numberone/static/mycss/getscript"></script>


</body></html>