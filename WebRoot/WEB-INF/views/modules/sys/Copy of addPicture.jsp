<%@ page contentType="text/html;charset=UTF-8" %>
<%@ include file="/WEB-INF/views/include/taglib.jsp"%>
<html>
<head>
    
    <title>卡美美</title>
    <meta name="decorator" content="default"/>
	<script type="text/javascript">var ctx = '${ctx}', ctxStatic='${ctxStatic}';</script>
    <!--<base href="http://app3.kameimei.cn/">--><base href=".">
    <!-- <base href="http://app.xitie.net.cn/"> -->
    <!-- <link rel="shortcut icon" href="img/favicon.ico" /> -->

    <link rel="stylesheet" type="text/css" href="${ctxStatic}/mycss/bootstrap_min.css" media="all">
    <link rel="stylesheet" type="text/css" href="${ctxStatic}/mycss/bootstrap_responsive_min.css" media="all">
    <link rel="stylesheet" type="text/css" href="${ctxStatic}/mycss/style.css" media="all">
    <link rel="stylesheet" type="text/css" href="${ctxStatic}/mycss/member_bootstrap_button.css" media="all">
    <link rel="stylesheet" type="text/css" href="${ctxStatic}/mycss/inside.css" media="all">
    <link rel="stylesheet" type="text/css" href=".${ctxStatic}/mycss/miniplayer.css">
    <link rel="stylesheet" type="text/css" href="${ctxStatic}/mycss/style(1).css">
    <link rel="stylesheet" href="${ctxStatic}/mycss/font-awesome.min.css">
    <link type="text/css" rel="stylesheet" href="${ctxStatic}/mycss/jbox.css">

    <script type="text/javascript" async="" src="${ctxStatic}/myjs/vds.js"></script><script type="text/javascript" src="./卡美美_files/jQuery.js.下载"></script>
    <script type="text/javascript" src="${ctxStatic}/myjs/bootstrap_min.js"></script><style type="text/css">.dropdown-submenu:hover>.dropdown-menu{display:none}</style>
    <script type="text/javascript" src="${ctxStatic}/myjs/jquery_validate_min.js"></script>
    <script type="text/javascript" src="${ctxStatic}/myjs/jquery_validate_methods.js"></script>
    <script type="text/javascript" src="${ctxStatic}/myjs/jquery_form_min.js"></script>
    <script type="text/javascript" src="${ctxStatic}/myjs/jquery_ui_custom.js"></script>
    <script type="text/javascript" src="${ctxStatic}/myjs/jquery_jplayer_min.js"></script>
    <script type="text/javascript" src="${ctxStatic}/myjs/jquery_mb_miniPlayer.js"></script><script type="text/vbscript">
Function IEBinary_getByteAt(strBinary, iOffset)
	IEBinary_getByteAt = AscB(MidB(strBinary,iOffset+1,1))
End Function
Function IEBinary_getLength(strBinary)
	IEBinary_getLength = LenB(strBinary)
End Function
</script>

    <script type="text/javascript" src="${ctxStatic}/myjs/inside.js"></script>
    <script type="text/javascript" src="${ctxStatic}/myjs/WdatePicker.js"></script><link href="./卡美美_files/WdatePicker.css" rel="stylesheet" type="text/css">
    <script type="text/javascript" src="${ctxStatic}/myjs/jquery.jBox-2.3.min.js"></script>
    <script type="text/javascript" src="${ctxStatic}/myjs/jquery.jBox-zh-CN.js"></script>

    <!--[if lte IE 9]>
    <script src="js/watermark.js"></script>
    <![endif]-->
    <!--[if IE 7]>
    <link href="css/font_awesome_ie7.css" rel="stylesheet" />
    <![endif]-->
    
    <script type="text/javascript">
          var _vds = _vds || [];
          window._vds = _vds;
          (function(){
            _vds.push(['setAccountId', 'bfc1b37ee61f2db9']);
            (function() {
              var vds = document.createElement('script');
              vds.type='text/javascript';
              vds.async = true;
              vds.src = ('https:' == document.location.protocol ? 'https://' : 'http://') + 'dn-growing.qbox.me/vds.js';
              var s = document.getElementsByTagName('script')[0];
              s.parentNode.insertBefore(vds, s);
            })();
          })();
      </script>
</head>
<body>
<div class="header">
</div>

<div class="root_div">

<div class="browser_tip noie clearfix" id="browser_tip">
        <div class="imgie">
            <img src="./卡美美_files/noie.png" alt="">
        </div>
        <h3 class="h3ie">尊敬的用户，您当前使用的浏览器不支持最新的HTML5技术。</h3>
        <p class="p1">为了保证您的使用体验，建议您从以下Webkit内核浏览器中选择一款。</p>
        <ul class="noie-list">
            <li>
                <a href="http://ie.sogou.com/" target="_blank">
                    <img src="./卡美美_files/browser-sogou.png" alt="">搜狗浏览器
                </a>
            </li>
            <li>
                <a href="http://www.google.cn/intl/zh-CN/chrome/" target="_blank">
                    <img src="./卡美美_files/browser-chrome.png" alt="">Chrome
                </a>
            </li>
            <li>
                <a href="http://chrome.360.cn/" target="_blank">
                    <img src="./卡美美_files/browser-360.png" alt="">360极速版
                </a>
            </li>
            <li>
                <a href="http://support.apple.com/zh_CN/downloads/#safari" target="_blank">
                    <img src="./卡美美_files/browser-safari.png" alt="">Safari
                </a>
            </li>
            <li>
                <a href="http://www.liebao.cn/" target="_blank">
                    <img src="./卡美美_files/browser-liebao.png" alt="">猎豹
                </a>
            </li>
            <li class="last">
                <a href="http://www.maxthon.cn/" target="_blank">
                    <img src="./卡美美_files/browser-maxthon.png" alt="">傲游
                </a>
            </li>
        </ul>
</div>
    <!--如果不是chrome浏览器-->
    <script type="text/javascript">
        if (!navigator.userAgent.match(/chrome|safari/i)) {
            // window.location = "/homepage/support";
            $("#browser_tip").css("display","block");
        }
    </script>

<!--     
    <div style="background:#AE2326;color:#FFF;width: 890px;margin: 20px auto 0px auto;padding:10px 20px;">
    通知：我公司于2月13日--3月2日放假，3日正式上班。期间有任何问题可以给我们客服QQ（3130812343）留言，值班人员会在48小时内给予处理！
    </div>
    -->

    
    <div class="mian_container">
  
        
        <div class="right_main1">
<style type="text/css">
.cover_bg{
position: relative;
display: block;
width: 100%;
height: 150px;
margin-bottom: 25px;
border-radius: 5px;
}
.cover_bg .input_cover_title{
    position: absolute;
    top: 10px;
    left: 10px;
    width: 300px;
}
.cover_bg .cover_change{
color: #666;
background: #FFF;
padding: 3px 10px;
border-radius: 3px;
font-size: 14px;
position: absolute;
bottom: 10px;
right: 10px;
cursor: pointer;
}
#cover_url{
position: absolute;
z-index: 1;
top: 0;
left: 0;
width: 100%;
height: 100%;
opacity: 0;
-webkit-tap-highlight-color: rgba(0, 0, 0, 0);
cursor: pointer;
}
.fixed_btn{
/*		position: fixed;
bottom: 50%;
bottom: 50%;
width: 730px;
height: 40px;
background: rgba(0,0,0,0.7);
border-radius: 5px;
padding: 10px;*/
        text-align: center;
        padding: 20px 0px 10px 0px;
}
.ul_list_album_li_num{
position: absolute;
left: 5px;
top: 5px;
color: #D6D4D4;
padding: 0px 6px;
background: rgba(0,0,0,0.3);
}
#sortable .span_up_li{
position: absolute;
    right: 5px;
    top: 5px;
display: inline-block;
background-color: #f3f3f3;
border: 1px solid #dcdcdc;
padding: 3px 15px;
font-style: normal;
cursor: pointer;
}
#sortable .span_down_li{
position: absolute;
    right: 5px;
    bottom: 5px;
display: inline-block;
background-color: #f3f3f3;
border: 1px solid #dcdcdc;
padding: 3px 15px;
font-style: normal;
cursor: pointer;
}
</style>


<form action="uploadPic" method="post" enctype="multipart/form-data">  
<input type="file" name="file" /> <input type="submit" value="Submit" /></form>  







<!-- <form action="springUpload?ac=info&amp;do=edit_three&amp;id=CD1508745399023694X6k" method="post" class="form-horizontal form-validate" novalidate="novalidate" enctype="multipart/form-data"> -->
  <form action="uploadPic" method="post"  enctype="multipart/form-data">  

    <div class="txt">

        <div class="control-group">

<ul class="pic ui-sortable" id="sortable">
</ul>

<div class="add_pic" id="add_pic_album">
<label><i class="fa fa-plus"></i> 点击选择照片</label>
<!-- <input name="file_url" id="file_url" class="fileprew" type="file" accept="image/*" multiple="multiple"> -->
<input name="file_url" id="file_url" class="fileprew" type="file" name="file">
<input id="token" name="token" type="hidden" value="yDWfmKBgXodTgwOjl5n2Gy7T3_PNGAXNX57JgXja:k75aFndq4GYMPIdFx1PEoiejCv0=:eyJzY29wZSI6InhpdGllLWFsYnVtIiwiZGVhZGxpbmUiOjE1MDg3NDkwMTF9">
<input type="hidden" id="current_img_path">
<input type="hidden" id="croped_img_path">
</div>

            <div class="tip_bottom_box">
                <p><i class="fa fa-lightbulb-o"></i> 温馨提示：</p>
                <ul>
                    <li>第 1 张照片做为指定邀请的封面，不在相册中显示</li>
                    <li>相册从第 2 张照片开始显示</li>
                </ul>
            </div>

            <div class="fixed_btn">
                <input type="hidden" name="form_submit" value="true">
                <input type="hidden" name="formhash" value="7d239e9f">
                <!-- <input type="hidden" name="id" value="CD1508745399023694X6k" /> -->
                <input type="submit" class="btn_submit" value=" 保 存 ">
            </div>

        </div>
    </div>
</form>

<script>
  $(function() {
      $( "#sortable" ).sortable({
          placeholder: "ui-state-highlight",
          cursor: "move",
          opacity: 0.5
      });
      $( "#sortable" ).disableSelection();
  });
</script>

<script>
$(".span_up_li").live('click',function(e){
var i = $(this).parents("li").index();//当前行的id
if(i>=1){//不是表头，也不是第一行，则可以上移
var tem0 = $(this).parents("li").html();
var tem1 = $(this).parents("li").prev().html();
$(this).parents("li").prev().html(tem0);
$(this).parents("li").html(tem1);
}
show_li_num();
});

$(".span_down_li").live('click',function(e){
var len = $("#sortable li").length;//总行数
var i = $(this).parents("li").index();//当前行的id
if(i<len-1){//不是最后一行，则可以下移
var tem0 = $(this).parents("li").html();
var tem1 = $(this).parents("li").next().html();
$(this).parents("li").next().html(tem0);
$(this).parents("li").html(tem1);
}
show_li_num();
});

function show_li_num(){
$("#sortable li").each(function(){
var active_li = $(this).index()+1;
$(this).find(".ul_list_album_li_num").text(active_li);
});
}
show_li_num();

function switch_upload(){
if ($("#sortable li").length==0) {
$("#add_pic_album").show();
}else{
$("#add_pic_album").hide();
}
}
switch_upload();

// 获取长度为len的随机字符串  
function _getRandomString(len) {  
    len = len || 10;  
    var chars = 'ABCDEFGHJKMNPQRSTWXYZabcdefhijkmnprstwxyz2345678'; // 默认去掉了容易混淆的字符oOLl,9gq,Vv,Uu,I1  
    var maxPos = chars.length;  
    var pwd = '';  
    for (i = 0; i < len; i++) {  
        pwd += chars.charAt(Math.floor(Math.random() * maxPos));  
    }  
    return pwd;  
}

///
var js_time_stamp = Math.round(new Date().getTime()/1000);
var Qiniu_UploadUrl = "http://up.qiniu.com";
var img_num = 0;

$("#file_url").change(function(obj) {
    //普通上传
    var Qiniu_upload = function(f, token, key, li_progress) {
        var xhr = new XMLHttpRequest();
        xhr.open('POST', Qiniu_UploadUrl, true);
        var formData, startDate;
        formData = new FormData();
        if (key !== null && key !== undefined) formData.append('key', key);
        formData.append('token', token);
        formData.append('file', f);
        var taking;
        xhr.upload.addEventListener("progress", function(evt) {
            if (evt.lengthComputable) {
                var nowDate = new Date().getTime();
                taking = nowDate - startDate;
                var x = (evt.loaded) / 1024;
                var y = taking / 1000;
                var uploadSpeed = (x / y);
                var formatSpeed;
                if (uploadSpeed > 1024) {
                    formatSpeed = (uploadSpeed / 1024).toFixed(2) + "Mb\/s";
                } else {
                    formatSpeed = uploadSpeed.toFixed(2) + "Kb\/s";
                }
                var percentComplete = Math.round(evt.loaded * 100 / evt.total);
                var percent_balance = 100 - percentComplete;
                $("#cover_"+li_progress).css("height",percent_balance+"%");
                $("#label_"+li_progress).html(percentComplete+"%");
            }
        }, false);

        xhr.onreadystatechange = function(response) {
            if (xhr.readyState == 4 && xhr.status == 200 && xhr.responseText != "") {
                var upload_result = JSON.parse(xhr.responseText);
                console && console.log(upload_result);
                //$("#ok_area").append("<img src='http://yiersan-code.qiniudn.com/"+upload_result.key+"-avatar'><br>");
                var upload_ok_url = "http://album.xitie.net.cn/"+upload_result.key+"-album";

                img_num++;
                var img_html = "";
                $("#photo_url_"+li_progress).val(upload_ok_url);
                $("#img_preview_"+li_progress).attr("src", upload_ok_url);

            } else if (xhr.status != 200 && xhr.responseText) {

            }
        };
        startDate = new Date().getTime();
        xhr.send(formData);
    };

    
    if ($("#file_url")[0].files.length > 0 && token != "") {

    	//$.jBox.tip("上传中，请稍等...", 'loading');

        var token = $("#token").val();
        var files = document.getElementById("file_url").files;
        var file_index = 0;
        for (var i = 0; i < files.length; i++) {
        	
        	file_index = i;
        var file_name = files[i].name;
        //var file_size = file_size_format(files[i].size);
        //var file_ext = file_name.substring(file_name.lastIndexOf('.')+1,file_name.length);
        //var uploaded_file_name = "CD1508745399023694X6k"+Math.round(new Date().getTime()/1000)+"_"+i+"."+file_ext;
        //var li_var = Math.round(new Date().getTime()/1000)+"_"+i;

        if ((file_name.match(/(jpg|jpeg|png|gif)/i))) {
            //最大允许上传20M以内
            var max_upload_size = 20 * 1024 * 1024;
            if (files[i].size>max_upload_size) {
                continue;
            }
        }else{
            continue;
        }

            (function(file,_i) {
            	var file_name = file.name;
                var file_size = file_size_format(file.size);
                var file_ext = file_name.substring(file_name.lastIndexOf('.')+1,file_name.length);
                // var uploaded_file_name = "CD1508745399023694X6k"+Math.round(new Date().getTime()/1000)+"_"+_i+"."+file_ext;
                var random_file_name = _getRandomString();
                var uploaded_file_name = "CD1508745399023694X6k" + "_" + random_file_name + "_" + _i + "." + file_ext;
                var li_var = random_file_name + "_"+_i;

                html_str  = "<li class='ui-state-default' id='li_"+li_var+"'>";
                    html_str += '<div class="imgAndControl">';
                        html_str += "<div class='img_progress'><img src='member/images/img.jpg' id='img_preview_"+li_var+"'><div class='img_cover' id='cover_"+li_var+"'></div><div class='img_percent' id='label_"+li_var+"'>0%</div></div>";
                        html_str += '<div class="controlMes">'
                            html_str += '<div>';
                                html_str += '<em class="span_up_li">上移</em>';
                                html_str += '<em class="span_down_li">下移</em>';
                                html_str += '<a data-id="'+li_var+'" class="btn btn-lg" href="javascript:;" onclick="del_img(\''+li_var+'\')"><i class="icon-remove"></i> 删除</a>';
                            html_str += '</div>';
                            html_str += "<div class='title_area'><input type='text' name='title_"+li_var+"' placeholder='点击填写照片配文'></div>";
                        html_str += '</div>';
                    html_str += '</div>';                         
                    html_str += "<div class='add_image'><i class='fa fa-plus'></i> 添加照片<input class='input_add_image' type='file' accept='image/*' multiple=''></div>";
                    html_str += "<input type='hidden' name='photo_list[]' value='"+li_var+"'/>";
                    html_str += "<input type='hidden' name='photo_url_"+li_var+"' id='photo_url_"+li_var+"'>";
                    html_str += "<input type='hidden' name='is_add_"+li_var+"' value='1'>";
                    html_str += "<span class='ul_list_album_li_num'></span>";
                html_str += "</li>";

                $("#sortable").append(html_str);
                show_li_num();

                /*
                var reader = new FileReader();
                reader.onload = function( e ){
                    html_str  = "<li class='ui-state-default' id='li_"+li_var+"'>";
                    html_str += "<div class='img_progress'><img src='" + e.target.result + "'><div class='img_cover' id='cover_"+li_var+"'></div><div class='img_percent' id='label_"+li_var+"'>0%</div></div>";
                    html_str += "图片名称："+file_name+"<br>图片大小："+file_size+"<br>图片后缀："+file_ext;
                    html_str += "<input data-id='"+li_var+"' class='del' type='button' value='删除' onclick=\"del_img('"+li_var+"')\">";
                    html_str += "<input type='hidden' name='photo_list[]' value='"+li_var+"'/>";
                    html_str += "<input type='hidden' name='photo_url_"+li_var+"' id='photo_url_"+li_var+"'>";
                    html_str += "<input type='hidden' name='is_add_"+li_var+"' value='1'>";
                    html_str += "</li>";
                    $("#sortable").append(html_str);
                };
                reader.readAsDataURL(file);
                */

                Qiniu_upload(files[i], token, uploaded_file_name, li_var);
            })(files[i],i);
        }

//$.jBox.tip('上传成功', 'success');
$('#file_url').val("");

    } else {
        console && console.log("form input error");
    }
});

//===================== image list upload =====================
$(".input_add_image").live('change',function(obj) {
    var _this=$(this);
    //普通上传
    var Qiniu_upload = function(f, token, key, li_progress) {
        var xhr = new XMLHttpRequest();
        xhr.open('POST', Qiniu_UploadUrl, true);
        var formData, startDate;
        formData = new FormData();
        if (key !== null && key !== undefined) formData.append('key', key);
        formData.append('token', token);
        formData.append('file', f);

        var taking;
        xhr.upload.addEventListener("progress", function(evt) {
            if (evt.lengthComputable) {
                var nowDate = new Date().getTime();
                taking = nowDate - startDate;
                var x = (evt.loaded) / 1024;
                var y = taking / 1000;
                var uploadSpeed = (x / y);
                var formatSpeed;
                if (uploadSpeed > 1024) {
                    formatSpeed = (uploadSpeed / 1024).toFixed(2) + "Mb\/s";
                } else {
                    formatSpeed = uploadSpeed.toFixed(2) + "Kb\/s";
                }
                var percentComplete = Math.round(evt.loaded * 100 / evt.total);
                var percent_balance = 100 - percentComplete;
                $("#cover_"+li_progress).css("height",percent_balance+"%");
                $("#label_"+li_progress).html(percentComplete+"%");
            }
        }, false);

        xhr.onreadystatechange = function(response) {
            if (xhr.readyState == 4 && xhr.status == 200 && xhr.responseText != "") {
                var upload_result = JSON.parse(xhr.responseText);
                console && console.log(upload_result);
                //$("#ok_area").append("<img src='http://yiersan-code.qiniudn.com/"+upload_result.key+"-avatar'><br>");
                var upload_ok_url = "http://album.xitie.net.cn/"+upload_result.key+"-album";

                img_num++;
                var img_html = "";
                $("#photo_url_"+li_progress).val(upload_ok_url);
                $("#img_preview_"+li_progress).attr("src", upload_ok_url);

            } else if (xhr.status != 200 && xhr.responseText) {

            }
        };
        startDate = new Date().getTime();
        xhr.send(formData);
    };

    // console.log(_this.prop('files').length);
    if (_this.prop('files').length > 0 && token != "") {

        var token = $("#token").val();
        var files = _this.prop('files');
        var file_index = 0;
        for (var i = 0; i < files.length; i++) {
        	
        	//显示或隐藏最下面上传按钮
        	switch_upload();

        	file_index = i;
        var file_name = files[i].name;
        if ((file_name.match(/(jpg|jpeg|png|gif)/i))) {
            //最大允许上传20M以内
            var max_upload_size = 20 * 1024 * 1024;
            if (files[i].size>max_upload_size) {
                continue;
            }
        }else{
            continue;
        }

            (function(file,_i) {
            	var file_name = file.name;
                var file_size = file_size_format(file.size);
                var file_ext = file_name.substring(file_name.lastIndexOf('.')+1,file_name.length);
                // var uploaded_file_name = "CD1508745399023694X6k"+Math.round(new Date().getTime()/1000)+"_"+_i+"."+file_ext;
                var random_file_name = _getRandomString();
                var uploaded_file_name = "CD1508745399023694X6k" + "_" + random_file_name + "_" + _i + "." + file_ext;
                var li_var = random_file_name + "_"+_i;

                html_str  = "<li class='ui-state-default' id='li_"+li_var+"'>";
                	html_str += '<div class="imgAndControl">';
                        html_str += "<div class='img_progress'><img src='member/images/img.jpg' id='img_preview_"+li_var+"'><div class='img_cover' id='cover_"+li_var+"'></div><div class='img_percent' id='label_"+li_var+"'>0%</div></div>";
                        html_str += '<div class="controlMes">'
                        html_str += '<div>';
                                html_str += '<em class="span_up_li">上移</em>';
                                html_str += '<em class="span_down_li">下移</em>';
                        html_str += '<a data-id="'+li_var+'" class="btn btn-lg" href="javascript:;" onclick="del_img(\''+li_var+'\')"><i class="icon-remove"></i> 删除</a>';
                        html_str += '</div>';
                        	html_str += "<div class='title_area'><input type='text' name='title_"+li_var+"' placeholder='点击填写照片配文'></div>";
                        html_str += '</div>';
                	html_str += '</div>';	                      
                	html_str += "<div class='add_image'><i class='fa fa-plus'></i> 添加照片<input class='input_add_image' type='file' accept='image/*' multiple=''></div>";
                	html_str += "<input type='hidden' name='photo_list[]' value='"+li_var+"'/>";
                    html_str += "<input type='hidden' name='photo_url_"+li_var+"' id='photo_url_"+li_var+"'>";
                    html_str += "<input type='hidden' name='is_add_"+li_var+"' value='1'>";
                    html_str += "<span class='ul_list_album_li_num'></span>";
            	html_str += "</li>";
                
                _this.parents('li').after(html_str);
                show_li_num();

                Qiniu_upload(files[i], token, uploaded_file_name, li_var);
            })(files[i],i);
        }

$('.input_add_image').val("");

    } else {
        console && console.log("form input error");
    }
});

//===================== avatar upload =====================
$("#avatar_url").change(function(obj) {
    
    var files = document.getElementById("avatar_url").files;
    var file_name = files[0].name;
    var file_size = file_size_format(files[0].size);
    var file_ext = file_name.substring(file_name.lastIndexOf('.')+1,file_name.length);

    if ((file_name.match(/(jpg|jpeg|png|gif)/i))) {

        //最大允许上传20M以内
        var max_upload_size = 20 * 1024 * 1024;
        
        if (files[0].size<max_upload_size) {
            //G.ui.tips.info("文件名："+file_name+"<br>文件大小："+file_size+"<br>文件后缀："+file_ext);
        }else{
            $.jBox.tip("该图片大小为"+file_size+"，最大不允许超过20 MB", 'error');
            return;
        }

    }else{
        $.jBox.tip("请选择jpg,jpeg,png,gif类型图片", 'error');
        return;
    }

    // $.jBox.tip("上传中，请稍等...", 'loading');

    //普通上传
    var Qiniu_upload = function(f, token, key) {
        var xhr = new XMLHttpRequest();
        xhr.open('POST', Qiniu_UploadUrl, true);
        var formData, startDate;
        formData = new FormData();
        if (key !== null && key !== undefined) formData.append('key', key);
        formData.append('token', token);
        formData.append('file', f);
        var taking;

        xhr.upload.addEventListener("progress", function(evt) {
            if (evt.lengthComputable) {
                var nowDate = new Date().getTime();
                taking = nowDate - startDate;
                var x = (evt.loaded) / 1024;
                var y = taking / 1000;
                var uploadSpeed = (x / y);
                var formatSpeed;
                if (uploadSpeed > 1024) {
                    formatSpeed = (uploadSpeed / 1024).toFixed(2) + "Mb\/s";
                } else {
                    formatSpeed = uploadSpeed.toFixed(2) + "Kb\/s";
                }
                var percentComplete = Math.round(evt.loaded * 100 / evt.total);
                var percent_balance = 100 - percentComplete;

                $("#cover_avatar").show();
                $("#label_avatar").show();
                $("#cover_avatar").css("height",percent_balance+"%");
                $("#label_avatar").html(percentComplete+"%");
            }
        }, false);

        xhr.onreadystatechange = function(response) {
            if (xhr.readyState == 4 && xhr.status == 200 && xhr.responseText != "") {
                var blkRet = JSON.parse(xhr.responseText);
                console && console.log(blkRet);
                var upload_result = JSON.parse(xhr.responseText);
                var upload_ok_url = "http://album.xitie.net.cn/"+upload_result.key+"-avatar2";
                $("#openpic").val(upload_ok_url);
$("#avatar_img").attr("src", upload_ok_url);
// $.jBox.tip('上传成功', 'success');
                
                $("#cover_avatar").css("height","0%");
                $("#label_avatar").html("0%");
                $("#cover_avatar").hide();
                $("#label_avatar").hide();

$('#avatar_url').val("");
            } else if (xhr.status != 200 && xhr.responseText) {

            }
        };
        startDate = new Date().getTime();
        xhr.send(formData);
    };

    var token = $("#avatar_token").val();
    if ($("#avatar_url")[0].files.length > 0 && token != "") {
        var uploaded_file_name = "CD1508745399023694X6k"+Math.round(new Date().getTime()/1000)+"."+file_ext;
        Qiniu_upload($("#avatar_url")[0].files[0], token, uploaded_file_name);
    } else {
        console && console.log("form input error");
    }
});

//
var confirm_show = function (v, h, f ,option) {
alert(option);
    if (v == 'ok')
        jBox.tip(v, 'info');
    else if (v == 'cancel')
        jBox.tip(v, 'info');
    return true; //close
};

function del_img(img_id){

if(!confirm("确认删除该图片吗?")){
return false;
}

//删除节点
$("#li_"+img_id).remove();

    if (img_id.length>15) {
        //编辑时才删除数据
        $.ajax({
            type: "GET",
            url: 'u.php?ac=info&do=delimg&id=CD1508745399023694X6k',
            data: "img_id="+img_id,
            success: function(return_info){
                $.jBox.tip(return_info);
            }
        });
    }else{
        $.jBox.tip("操作成功");
    }
    show_li_num();
}
</script>


</div>
<div class="clear"></div>
</div>
</div>
<div class="clear"></div>
<div class="footer">
<div class="container02">
    <ul class="ul_foot">
<li class="foot_01">
<div class="tit">联系我们</div>
<div class="txt">
公司地址：武汉光谷xxx<br>
邮政邮编：100086<br>
售后服务：400-666-8888<br>
</div>
</li>
<li class="foot_01">
<div class="tit">帮助指南</div>
<div class="txt">
<a href="http://net.cn/html/cnt_273.html" target="_blank" title="如何查看淘宝订单号">如何查看淘宝订单号</a><br>
<a href="http://net.cn/html/cnt_272.html" target="_blank" title="婚礼视频制作">婚礼视频制作</a><br>
<a href="http://net.cn/html/cnt_271.html" target="_blank" title="电子喜帖中的婚礼视频如何上传">电子喜帖中的婚礼视频如何上传</a><br>
<a href="http://net.cn/html/cnt_270.html" target="_blank" title="电子喜帖中的照片如何压缩">电子喜帖中的照片如何压缩</a><br>
<a href="http://net.cn/html/cnt_269.html" target="_blank" title="电子喜帖制作好后怎样分享给好友">电子喜帖制作好后怎样分享给好友</a><br>
<a href="http://net.cn/html/cnt_268.html" target="_blank" title="电子喜帖中的音乐文件如何压缩">电子喜帖中的音乐文件如何压缩</a><br>
</div>
</li>
<li class="foot_03">
<div class="tit">关注我们</div>
<div class="txt"><img src="./卡美美_files/code_kameimei.jpg"></div>
</li>
</ul>
    <div class="foot_con">
</div>
</div>
</div>

<div class="chat_box">
<a href="http://app3.kameimei.cn/u.php?ac=kf&amp;do=wechat"><img src="./卡美美_files/kf_box.png"></a>
<!-- <a href="http://wpa.qq.com/msgrd?v=3&uin=3130812343&site=qq&menu=yes" target="_blank"><img src="images/qq_box.png"></a> -->
<script type="text/javascript">
// (function(m, ei, q, i, a, j, s) {
//     m[a] = m[a] || function() {
//         (m[a].a = m[a].a || []).push(arguments)
//     };
//     j = ei.createElement(q),
//         s = ei.getElementsByTagName(q)[0];
//     j.async = true;
//     j.charset = 'UTF-8';
//     j.src = i;
//     s.parentNode.insertBefore(j, s)
// })(window, document, 'script', '//eco-api.meiqia.com/dist/meiqia.js', '_MEIQIA');
// _MEIQIA('entId', 4066);
</script>
</div>

<div style="display: none;" class="gotop" id="gotop"><a href="http://app3.kameimei.cn/#" title="返回顶部">返回顶部</a></div>
<script type="text/javascript">
//go to top
jQuery(function(){function a(){$(document).scrollTop()>0?$(".gotop").show():$(".gotop").hide()}$(".gotop a").click(function(){$(document).scrollTop(0);return false});$(window).scroll(function(){a()});a()});
</script>

<div style="display: none;"><script src="./卡美美_files/c.php" language="JavaScript" charset="gb2312"></script><script src="./卡美美_files/core.php" charset="utf-8" type="text/javascript"></script><a href="http://quanjing.cnzz.com/" target="_blank" title="全景统计"><img border="0" hspace="0" vspace="0" src="./卡美美_files/2.gif"></a></div>





<div id="fallr-overlay"></div><div id="_my97DP" style="position: absolute; top: -1970px; left: -1970px;"><iframe style="width: 192px; height: 234px;" src="./卡美美_files/My97DatePicker.html" frameborder="0" border="0" scrolling="no"></iframe></div></body></html>