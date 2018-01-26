<%@ page pageEncoding="utf-8"%>  
<!DOCTYPE html>  
<html>  
<head>  
<meta charset="utf-8">  
<title>上传图片</title>  
</head>  
<body>  
<form action="springUpload" method="post" enctype="multipart/form-data">  
<input type="file" name="file1" accept="image/*" multiple="multiple"/> 
<input type="file" name="file2" accept="image/*" multiple="multiple"/> 
<input type="submit" value="Submit" /></form>  
</body>  
</html>  