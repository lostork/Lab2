<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<%@taglib prefix="s" uri="/struts-tags" %>

<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Add New Author</title>

<link rel="stylesheet" href="css/bootstrap.min.css">  
<link rel="stylesheet" type="text/css" href="main.css" />
	<!-- jQuery文件。务必在bootstrap.min.js 之前引入 -->
<script src="http://cdn.bootcss.com/jquery/1.11.1/jquery.min.js"></script>

<!-- 最新的 Bootstrap 核心 JavaScript 文件 -->
<script src="http://cdn.bootcss.com/bootstrap/3.3.0/js/bootstrap.min.js"></script>
</head>
<body>
<div class="center">
	<h3 align="center" >Add New Author</h3>
	<br/>
	<!--<s:form action = "Store" role="form">
	<div class="form-group">
		<s:textfield name="authorName" label="Author Name" class="form-control"/>
        <s:textfield name="age" label="Age" class="form-control"/>
        <s:textfield name="country" label="Country" class="form-control"/>
        
        <s:submit />
    </div>
	</s:form>-->
	
	<form action = "Store" class = "form-horizontal" role="form">
		<div class = "form-group">
		<label for = "AuthorName" class = "col-md-3 control-label"> Author Name</label>
			<div class = "col-md-7">
				<input type = "text" name = "authorName" class="form-control" id="AuthorName" >
			</div>
		</div>
		
		<div class = "form-group">
		<label for = "Age" class = "col-md-3 control-label"> Age</label>
			<div class = "col-md-7">
				<input type = "text" name="age" class="form-control" id="Age" >
			</div>
		</div>
		
		<div class = "form-group">
		<label for = "Country" class = "col-md-3 control-label"> Country</label>
			<div class = "col-md-7">
				<input type = "text" name="country" class="form-control" id="Country" >
			</div>
		</div>
		
		
		<br/>
		<div align="center">
		<div class = "form-group">
		
		<button type="submit"  class="btn btn-default">Submit</button>
		
		</div>
		</div>
	</form>
	
	
	
</div>

</body>
</html>