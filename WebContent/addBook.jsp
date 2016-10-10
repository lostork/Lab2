<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">

<%@taglib prefix="s" uri="/struts-tags" %>

<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Add New Book</title>
<link rel="stylesheet" type="text/css" href="main.css" />
    <link rel="stylesheet" href="css/bootstrap.min.css">  
    
    <!-- jQuery文件。务必在bootstrap.min.js 之前引入 -->
<script src="http://cdn.bootcss.com/jquery/1.11.1/jquery.min.js"></script>

<!-- 最新的 Bootstrap 核心 JavaScript 文件 -->
<script src="http://cdn.bootcss.com/bootstrap/3.3.0/js/bootstrap.min.js"></script>
</head>
<body>
<div class = "container">
	<div class="row">
<div class = center>
	<h2 align = "center">Add New Book</h2>
	<br/>
	
	<!--<s:form action = "Store" role="form">
	<div class="form-group">
		<s:textfield name="isbn" label="ISBN" class="form-control"/>
        <s:textfield name="title" label="Title" class="form-control"/>
        <s:textfield name="authorName" label="Author Name" class="form-control"/>
        <s:textfield name="publisher" label="Publisher" class="form-control"/>
        <s:textfield name="publishDate" label="Publish Date" class="form-control"/>
        <s:textfield name="price" label="Price" class="form-control"/>
        
        <s:submit />
    </div>
	</s:form>-->
	<form action = "Store" class = "form-horizontal" role="form">
		<div class = "form-group">
		<label for = "Isbn" class = "col-md-3 control-label"> ISBN</label>
			<div class = "col-md-7">
				<input type = "text" name = "isbn" class="form-control" id="Isbn" >
			</div>
		</div>
		
		<div class = "form-group">
		<label for = "Title" class = "col-md-3 control-label"> Title</label>
			<div class = "col-md-7">
				<input type = "text" name="title" class="form-control" id="Title" >
			</div>
		</div>
		
		<div class = "form-group">
		<label for = "AuthorName" class = "col-md-3 control-label"> Author Name</label>
			<div class = "col-md-7">
				<input type = "text" name="authorName" class="form-control" id="AuthorName" >
			</div>
		</div>
		
		
		<div class = "form-group">
		<label for = "Publisher" class = "col-md-3 control-label"> Publisher</label>
			<div class = "col-md-7">
				<input type = "text"  name = "publisher" class="form-control" id="Publisher" >
			</div>
		</div>
		
		<div class = "form-group">
		<label for = "PublishDate" class = "col-md-3 control-label"> Publish Date</label>
			<div class = "col-md-7">
				<input type = "text"  name = "publishDate" class="form-control" id="PublishDate" >
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
	
	
	
	
	
<br/>
<p>
	说明：输入Author Name时应确保作者已在数据库中，否则会提示输入错误<br/>
		出版日期请按"yyyy-MM-DD"的格式填写，如1992-2-3,否则会提示输入无效<br/>
		isbn为13位，例如 000-000-0001-01-2 ，需填写短横线"-"
</p>
</div>
</div>
</div>
</body>
</html>