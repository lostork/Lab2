<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">

<%@taglib prefix="s" uri="/struts-tags" %>

<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Book List</title>
<link rel="stylesheet" href="css/bootstrap.min.css">  
	<!-- jQuery文件。务必在bootstrap.min.js 之前引入 -->
<script src="http://cdn.bootcss.com/jquery/1.11.1/jquery.min.js"></script>

<!-- 最新的 Bootstrap 核心 JavaScript 文件 -->
<script src="http://cdn.bootcss.com/bootstrap/3.3.0/js/bootstrap.min.js"></script>
<link rel="stylesheet" type="text/css" href="main.css" />

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
 
<div class = "container">
	<div class="row">
<div class="center">  

    <h2 align="center">Book List</h2>

    	<table  class="table table-striped">
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
        <div align="center"><br/>
          <a href='<s:url action="AddBook"></s:url>'>
            Add New Book
          </a>
          &nbsp;
          <a href='<s:url action="AddAuthor"></s:url>'>
            Add New Author
          </a>   
          
          <br/>
          
        </div>
    <!-- <h2 align="center">Query Books Written By the Author:</h2> -->
    <br/>
    
    <!--<s:form action = "QueryByAuthorName" role="form">
    	<div class="form-group">
    	  <s:textfield name = "authorName"  class = "form-control" placeholder="Please input Name"/>
    	  <s:submit class = "form-control"/>
  	  </div>
    </s:form>-->
    
    	<form action = "QueryByAuthorName" class = "form-horizontal" role="form">
		<div class = "form-group">
		<label for = "AuthorName" class = "col-md-5 control-label"> Query Books Written By the Author:</label>
			<div class = "col-md-4">
				<input type = "text" name = "authorName" class="form-control" id="AuthorName" placeholder="Please input the Author Name">
			</div>
			<div class = "col-md-2">
				<button type="submit"  class="btn btn-default">Query</button>
			
			</div>
		</div>
		
		
	</form>
	
    
    
    
    
    <div align="center"><br/>
    说明：上表中的Edit按钮即为功能5更新图书信息<br/>
    本应用在1920×1080分辨率下显示效果经测试较好，其他分辨率未测试
    
    </div>
    </div>
   </div>
   </div>
</body>

</html>