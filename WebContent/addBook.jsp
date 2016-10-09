<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">

<%@taglib prefix="s" uri="/struts-tags" %>

<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Add New Book</title>
<style type="text/css">
body
  { 
    background-image:url('images/t.png');
    background-repeat:no-repeat;
    background-position:center;
  }
.center
{
margin-left:auto;
margin-right:auto;
width:70%;
filter:alpha(Opacity=80);-moz-opacity:0.5;opacity:0.8;
		background-color:#000000;
		padding:20px;
		margin-top:20px;
		margin-bottom:20px;
}

    </style>
    <link rel="stylesheet" href="css/bootstrap.min.css">  
    
    <!-- jQuery文件。务必在bootstrap.min.js 之前引入 -->
<script src="http://cdn.bootcss.com/jquery/1.11.1/jquery.min.js"></script>

<!-- 最新的 Bootstrap 核心 JavaScript 文件 -->
<script src="http://cdn.bootcss.com/bootstrap/3.3.0/js/bootstrap.min.js"></script>
</head>
<body>
<div class = center>
	<h3 style="color:white">Add New Book</h3>
	<s:form action = "Store" role="form">
	<div class="form-group">
		<s:textfield name="isbn" label="ISBN" class="form-control"/>
        <s:textfield name="title" label="Title" class="form-control"/>
        <s:textfield name="authorName" label="Author Name" class="form-control"/>
        <s:textfield name="publisher" label="Publisher" class="form-control"/>
        <s:textfield name="publishDate" label="Publish Date" class="form-control"/>
        <s:textfield name="price" label="Price" class="form-control"/>
        
        <s:submit />
    </div>
	</s:form>
<br/>
<p style="color:white">
	说明：输入Author Name时应确保作者已在数据库中，否则会提示输入错误<br/>
		出版日期请按"yyyy-MM-DD"的格式填写，如1992-2-3,否则会提示输入无效<br/>
		isbn为13位，例如 000-000-0001-01-2 ，需填写短横线"-"
</p>
</div>
</body>
</html>