<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <%@ taglib prefix="s" uri="/struts-tags" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Collegetrac - Enter email</title>
</head>
<body>
<center>
<div style="position:relative; top:250px" >
<s:form action="getstudent" method="post">
	<s:textfield  name="student.email" label="Enter your email" cssErrorStyle="font:red"/>
	<s:submit value="Go"/>
</s:form>
</div>
</center>
</body>
</html>