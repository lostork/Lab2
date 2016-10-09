<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">

<%@taglib prefix="s" uri="/struts-tags" %>


<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Welcome to Book Administration System</title>
<link rel="stylesheet" type="text/css" href="main.css" />
<style type="text/css">


div
{
	background-color: #333333
}


.headfont {
	font-family: Arial, Helvetica, sans-serif;
	position: absolute;
	left: 0px;
	top: 145px;
	width: 1268px;
	height: 224px;
	color: #FFF;
	font-size: 36px;
}
.headfont div a {
	color: #CCC;
}
</style>

</head>
<body>
<div class = "headfont">
	<h2 align="center">Welcome to Book Administration System</h2>
	<div align="center"><a href='<s:url action="display"></s:url>'> Enter the System </a></div>
	<p align="center">&nbsp;</p>
</div>

</body>
</html>