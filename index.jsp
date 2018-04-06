<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<%
 String strROID = request.getParameter("roid");
 System.out.println("Val ="+strROID);
%>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>USMS Documentum File Upload Utility</title>
</head>
<body>
	<%
    if (request.getParameter("roid") == null) 
    {
	%>
	<div> 
    	<h3> Choose File to Upload</h3>
    	<! Include your Servlet Action Class file in the action="" > 
   	    <form action="FileUploadHandler" method="post" enctype="multipart/form-data"> 
   	    	<input type="file" name="file" /> 
       	    <input type="submit" value="upload" /> 
  	    </form>           
 	</div>
 	 <%}%>
 	<%
    if (request.getParameter("roid") != null) 
    {
	%>
	<div>
 	 <hr/>
 	 	<h3>Download Following File From Documentum</h3>
 	  	<form action="FileDownloadHandler" method="post">
            Object Id:&nbsp;
            <input type="text" name="roid" disabled maxlength="18" size="18" style="font-size:12px" style="font-weight:bold" value="<%=strROID%>"/>
            <input type="hidden" name="robjectid" value="<%=strROID%>" />
            <input type="submit" value="download" />
    	</form>
 	</div> 
  <%}%>
</body>
</html>