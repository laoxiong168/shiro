<%@ page contentType="text/html;charset=UTF-8" %>
<%@ include file="/WEB-INF/views/include/taglib.jsp"%>
<!DOCTYPE html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<meta name="viewport"
    content="width=device-width, initial-scale=1, maximum-scale=1">
<title>注册</title>
<link rel="stylesheet" type="text/css" href="/numberone/static/mycss/uploadify.css">
<script type="text/javascript" src="/numberone/static/myjs/jquery-1.9.1.min.js"></script>
<script type="text/javascript" src="/numberone/static/myjs/jquery.uploadifive.min.js"></script>
<script type="text/javascript">
<script type="text/javascript">
  $(function() {
    $('#file_upload').uploadifive({
      'auto'             : false,
      'buttonClass': 'btn btn-primary',
      'buttonText': "选择文件",
      'queueID'          : 'uploadqueue',
      'uploadScript'     : 'springUpload',
      'onUploadComplete' : function(file, data) { console.log(data); },
        'onUploadStart': function(file) {
       alert("上传开始");
    }
    });
  });
</script>   
</script>
</head>

<body>
        <div id="uploadqueue">
<input id="file_upload" name="file_upload" type="file" multiple="true">
<a href="javascript:$('#file_upload').uploadifive('upload')">上传文件</a> |
 <a href="javascript:$('#file_upload').uploadifive('stop')">停止上传!</a>
</div>
</body>
</html>