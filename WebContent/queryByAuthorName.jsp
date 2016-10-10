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
<title>Books Written By One Author</title>
</head>
<body>
<div class="center">
	<h2 align ="center">Books Written By <s:property value = "authorName"/> </h2>
		<table class="table table-striped">
	<s:iterator value="titles">
		<tr>
			<td><s:property/></td>
		</tr>			
	</s:iterator>
		</table>
		<br/>
		<div align="center">
		<a href='<s:url action="display"></s:url>'>
                                Back To Book List
                            </a>
        </div>
</div>
</body>
</html>