<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<%@taglib prefix="s" uri="/struts-tags" %>


<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Query By Title</title>
	<style type="text/css">
        table {
            border: 1px solid black;
            border-collapse: collapse;
        }
        
        table thead tr th {
            border: 1px solid black;
            padding: 3px;
            background-color: #cccccc;
        }
        
        table tbody tr td {
            border: 1px solid black;
            padding: 3px;
        }
    </style>

</head>
<body>

<h3>Book Info</h3>
	<table>
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
	<table>
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
</body>
</html>