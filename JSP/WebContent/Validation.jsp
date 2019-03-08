<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
<%
if(request.getParameter("uname").equals("Your_Name") && request.getParameter("password").equals("Password") )
{
	String redirURL = "Redirectedpage.jsp";
	response.sendRedirect(redirURL);
}
else if(request.getParameter("uname").equals("Your_Name")&&request.getParameter("password")!="Password")
{
	out.println("Your Password is Invalid Please check");
	//String redirURL = "index.html";
	//response.sendRedirect(redirURL);
}else
{
	out.println("Your Cradentials are Invalid Please check Your Username and Password");
	String redirURL = "index.html";
	response.sendRedirect(redirURL);
}
%>
</body>
</html>