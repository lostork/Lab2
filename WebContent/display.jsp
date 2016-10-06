<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">

<%@taglib prefix="s" uri="/struts-tags" %>

<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Book List</title>
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
    <h2>Book List</h2>

    	<table>
    	<thead>
                <tr>
                    
                    <th>ISBN</th>
                    <th>Title</th>
                    <th>Author</th>
                    <th>Price</th>
                    <th>Operation</th>
                </tr>
        </thead>
        <tbody>
           <s:iterator value="books">
               <tr>
                   <td><s:property value="isbn" /></td>
                   <td>
                   
                   
                    <a href='<s:url action="QueryByTitle"><s:param name="title" value="title" /></s:url>'>
                   
                   		<s:property value="title" />
                   </a>
                   
                   </td>
                   
                   <td><s:property value="author" /></td>
                   <td>$<s:property value="price" /></td>
                   
                   <td><a href='<s:url action="Edit"><s:param name="isbn" value="isbn" /></s:url>'>
                                Edit
                            </a>
                            &nbsp;
                            <a href='<s:url action="Remove"><s:param name="isbn" value="isbn" /></s:url>'>
                                Delete
                            </a>
                   </td>
               </tr>
           </s:iterator>
        </tbody>
        </table>
        <br/>
        <a href='<s:url action="AddBook"></s:url>'>
                                Add New Book
                            </a>
                            &nbsp;
        <a href='<s:url action="AddAuthor"></s:url>'>
                                Add New Author
                            </a>   
                                            
    <br/>
    
    <h2>Query Books Written By the Author:</h2>
    <s:form action = "QueryByAuthorName">
    	<s:textfield name = "authorName" label="Author Name"/>
    	<s:submit/>
    </s:form>
           
</body>

</html>