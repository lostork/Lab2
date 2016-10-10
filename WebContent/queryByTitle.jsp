<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<%@taglib prefix="s" uri="/struts-tags" %>


<html>
<head>
<link rel="stylesheet" href="css/bootstrap.min.css">  
<!-- jQuery文件。务必在bootstrap.min.js 之前引入 -->
<script src="http://cdn.bootcss.com/jquery/1.11.1/jquery.min.js"></script>

<!-- 最新的 Bootstrap 核心 JavaScript 文件 -->
<script src="http://cdn.bootcss.com/bootstrap/3.3.0/js/bootstrap.min.js"></script>

<link rel="stylesheet" href="main.css">  



<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Query By Title</title>

</head>
<body>
<div class="center">
<div align="center">
<h3 align = "center">Book Info</h3>
	<table class = "table table-striped">
	<tr>
		<td>ISBN</td>
		<td><s:property value = "isbn"/></td>
	</tr>
	<tr>
		<td>Title</td>
		<td><s:property value = "title"/></td>
	</tr>
	<tr>
		<td>Author</td>
		<td><s:property value = "authorName"/></td>
	</tr>
	<tr>
		<td>Publisher</td>
		<td><s:property value = "publisher"/></td>
	</tr>
	<tr>
		<td>Publish Date</td>
		<td><s:property value = "publishDate"/></td>
	</tr>
	<tr>
		<td>Price</td>
		<td>$<s:property value = "price"/></td>
	</tr>
	</table>
<h3>Author Info</h3>
	<table class = "table table-striped">
	<tr>
		<td>Author ID</td>
		<td><s:property value = "authorID"/></td>
	</tr>
	<tr>
		<td>Name</td>
		<td><s:property value = "authorName"/></td>
	</tr>
	<tr>
		<td>Age</td>
		<td><s:property value = "age"/></td>
	</tr>
	<tr>
		<td>Country</td>
		<td><s:property value = "country"/></td>
	</tr>
	</table>
	<br/>
	<a href='<s:url action="display"></s:url>'>
                                Back To Book List
                            </a>
</div>
</div>
</body>
</html>