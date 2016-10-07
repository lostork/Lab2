<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<%@taglib prefix="s" uri="/struts-tags" %>


<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Books Written By One Author</title>
</head>
<body>
	<h2>Books Written By <s:property value = "authorName"/> </h2>
		<table>
	<s:iterator value="titles">
		<tr>
			<td><s:property/></td>
		</tr>			
	</s:iterator>
		</table>
		<br/>
		<a href='<s:url action="display"></s:url>'>
                                Back To Book List
                            </a>
</body>
</html>