<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">

<%@taglib prefix="s" uri="/struts-tags" %>

<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Add New Book</title>
</head>
<body>
	<h3>Add New Book</h3>
	<s:form action = "Store">
		<s:textfield name="isbn" label="ISBN" />
        <s:textfield name="title" label="Title" />
        <s:textfield name="authorName" label="Author Name" />
        <s:textfield name="publisher" label="Publisher" />
        <s:textfield name="publishDate" label="Publish Date" />
        <s:textfield name="price" label="Price" />
        
        <s:submit />
	</s:form>
<br/>
	说明：输入Author Name时应确保作者已在数据库中，否则会提示输入错误
		出版日期请按"yyyy-MM-DD"的格式填写，如1992-2-3,否则会提示输入无效
		isbn为13位，例如 000-000-0001-01-2 ，需填写短横线"-"

</body>
</html>