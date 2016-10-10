<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">

<%@taglib prefix="s" uri="/struts-tags" %>



<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Edit Book Info</title>

    
<link rel="stylesheet" href="css/bootstrap.min.css">  
<!-- jQuery文件。务必在bootstrap.min.js 之前引入 -->
<script src="http://cdn.bootcss.com/jquery/1.11.1/jquery.min.js"></script>

<!-- 最新的 Bootstrap 核心 JavaScript 文件 -->
<script src="http://cdn.bootcss.com/bootstrap/3.3.0/js/bootstrap.min.js"></script>

<link rel="stylesheet" href="main.css">  

</head>
<body>
<div class = "container">
	<div class="row">
	<div class="center">
	
	<!--<s:form action = "Update">
	
		<s:textfield name="authorName" label="Author Name" />
        <s:textfield name="publisher" label="Publisher" />
        <s:textfield name="publishDate" label="Publish Date" />
        <s:textfield name="price" label="Price" />
        
        <s:submit />
	</s:form>-->
	<h2 align = "center">Edit Book Info</h2>
	<br/>
	<form action = "Update" class = "form-horizontal" role="form">
		<div class = "form-group">
		<label for = "AuthorName" class = "col-md-3 control-label"> Author Name</label>
			<div class = "col-md-7">
				<input type = "text" name = "authorName" class="form-control" id="AuthorName" >
			</div>
		</div>
		
		<div class = "form-group">
		<label for = "Publisher" class = "col-md-3 control-label"> Publisher</label>
			<div class = "col-md-7">
				<input type = "text" name="publisher" class="form-control" id="Publisher" >
			</div>
		</div>
		
		<div class = "form-group">
		<label for = "PublishDate" class = "col-md-3 control-label"> Publish Date</label>
			<div class = "col-md-7">
				<input type = "text" name="publishDate" class="form-control" id="PublishDate" >
			</div>
		</div>
		
		
		<div class = "form-group">
		<label for = "Price" class = "col-md-3 control-label"> Price</label>
			<div class = "col-md-7">
				<input type = "text"  name = "price" class="form-control" id="Price" >
			</div>
		</div>
		<br/>
		<div align="center">
		<div class = "form-group">
		
		<button type="submit"  class="btn btn-default">Submit</button>
		
		</div>
		</div>
	</form>
	
	
	<p>
	<br/>
	说明：Author Name 和Publish Date 为必填项，其中Author Name 对应的作者应已在数据库中存在，Publish Date 格式应正确，否则会提示输入信息无效
	未填项表示该项内容不变。
	<br/>
	<br/>特别注明：
	本功能不知道为什么有时候会不好使，在tomcat上随时都好使,自己代码感觉也没问题，在sae上有时候就有问题，尤其是在某次更新数据输入错误之后.
	不好使的时候重新从首页进一下或等一会儿或换个书更新，估计就可以更新了，个人感觉是sae给的mysql跟自己的不太一样的缘故
	</p>
</div>
</div>
</div>
</body>
</html>