<%@ page contentType="text/html;charset=UTF-8" %>
<%@ include file="/WEB-INF/views/include/taglib.jsp"%>
<html>
<head>
	<title>修改密码</title>
	<meta name="decorator" content="default"/>
	<script type="text/javascript">var ctx = '${ctx}', ctxStatic='${ctxStatic}';</script>
	<%--  <script src="${ctxStatic}/myjs/qrcode.js"></script> --%>
	<script src="${ctxStatic}/myjs/qrcode.js" type="text/javascript"></script>
	    <style>
        #qrcode{
            /*text-align: center;*/
            /*display: table-cell;*/
            /*width: 96px;*/
            /*height: 96px;*/
            /*vertical-align:middle;*/
            /*position: relative;*/
     margin:0 auto; width:400px; height:100px;margin-top:100px;
        }
    </style>
</head>
<body>
<div id="qrcode" >
</div>
<div style="width:300px;height:30px;margin:0 auto;margin-top:10px;">
<!-- <input type="text" id="getval"/> <button id="send">生成二维码</button>
<input type="button" id="ajaxSend" value="ajax发送" onclick="ajaxSend()"> -->
</div>


<div>
</div>
<script>
 
$(function(){
	 qrcode.makeCode("${binaryURL}");
})

    var qrcode = new QRCode(document.getElementById("qrcode"), {
        width : 200,//设置宽高
        height : 200
    });
    document.getElementById("send").onclick =function(){
        qrcode.makeCode(document.getElementById("getval").value);
    };
    
    function ajaxSend(){
    	$.ajax({
    	    url:'ajaxReceive',
    	    type:'get', //GET
    	    async:false,    //或false,是否异步
    	    data:{
    	        name:'yang',age:25
    	    },
    	    dataType:'json',    //返回的数据格式：json/xml/html/script/jsonp/text
    	    beforeSend:function(xhr){
    	    	alert(ctxStatic);
    	    	alert("开始发送");
    	    },
    	    success:function(data,textStatus,jqXHR){
    	    	alert("发送成功");
    	    },
    	    error:function(xhr,textStatus){
    	    	alert("接收失败");
    	    }
    	})
    	alert("over");
    }
    
    $(function(){
    })

</script>
</body>
</html>