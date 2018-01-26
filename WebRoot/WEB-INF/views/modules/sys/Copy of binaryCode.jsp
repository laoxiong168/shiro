<%@ page contentType="text/html;charset=UTF-8" %>
<%@ include file="/WEB-INF/views/include/taglib.jsp"%>
<html>
<head>
	<title>修改密码</title>
	<meta name="decorator" content="default"/>
	<%--  <script src="${ctxStatic}/myjs/qrcode.js"></script> --%>
	<script src="${ctxStatic}/myjs/qrcode.js" type="text/javascript"></script>
	<script type="text/javascript">var ctx = '${ctx}', ctxStatic='${ctxStatic}';</script>
	    <style>
        #qrcode{
            /*text-align: center;*/
            /*display: table-cell;*/
            /*width: 96px;*/
            /*height: 96px;*/
            /*vertical-align:middle;*/
            /*position: relative;*/
        }
    </style>
</head>
<body>
<div id="qrcode">
</div>
<div >
<input type="text" id="getval"/> <button id="send">点击更换验证码</button>
<input type="button" id="ajaxSend" value="ajax发送" onclick="ajaxSend()">
</div>

<script>

    var qrcode = new QRCode(document.getElementById("qrcode"), {
        width : 200,//设置宽高
        height : 200
    });
    document.getElementById("send").onclick =function(){
        qrcode.makeCode(document.getElementById("getval").value);
    };
    
    function ajaxSend(){
    	$.ajax({
    	    url:'/sys/log/list1',
    	    type:'post', //GET
    	    async:false,    //或false,是否异步
    	    data:{
    	        name:'yang',age:25
    	    },
    	    timeout:5000,    //超时时间
    	    dataType:'json',    //返回的数据格式：json/xml/html/script/jsonp/text
    	    beforeSend:function(xhr){
    	    	alert("进来了");
    	        console.log(xhr)
    	        console.log('发送前')
    	    },
    	    success:function(data,textStatus,jqXHR){
    	    	alert("成功");
    	        console.log(data)
    	        console.log(textStatus)
    	        console.log(jqXHR)
    	    },
    	    error:function(xhr,textStatus){
    	    	alert("失败");
    	        console.log('错误')
    	        console.log(xhr)
    	        console.log(textStatus)
    	    },
    	    complete:function(){
    	    	alert("结束");
    	        console.log('结束')
    	    }
    	})
    	alert("over");
    }
    
    $(function(){
    })

</script>
</body>
</html>