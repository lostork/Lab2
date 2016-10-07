<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">

<%@taglib prefix="s" uri="/struts-tags" %>



<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Edit Book Info</title>
</head>
<body>
	<s:form action = "Update">
		<s:textfield name="authorName" label="Author Name" />
        <s:textfield name="publisher" label="Publisher" />
        <s:textfield name="publishDate" label="Publish Date" />
        <s:textfield name="price" label="Price" />
        
        <s:submit />
	</s:form>
	<br/>
	说明：Author Name 和Publish Date 为必填项，其中Author Name 对应的作者应已在数据库中存在，Publish Date 格式应正确，否则会提示输入信息无效
	未填项表示该项内容不变。
	
</body>
</html>