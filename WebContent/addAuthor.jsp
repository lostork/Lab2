<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<%@taglib prefix="s" uri="/struts-tags" %>

<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Add New Author</title>
</head>
<body>
	<h3>Add New Author</h3>
	<s:form action = "Store">
		<s:textfield name="authorName" label="Author Name" />
        <s:textfield name="age" label="Age" />
        <s:textfield name="country" label="Country" />
        
        <s:submit />
	</s:form>


</body>
</html>