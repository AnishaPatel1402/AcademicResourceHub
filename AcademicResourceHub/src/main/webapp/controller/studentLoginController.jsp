<%@page import="com.arh.dao.StudentDao"%>
<jsp:useBean id="student" class="com.arh.entity.Student"></jsp:useBean>
<jsp:setProperty property="*" name="student"/>

<% 
	String methodType = request.getMethod();
	if(methodType.equalsIgnoreCase("POST")){
		if(StudentDao.checkStudent(student)){
			out.print("login success");
		}
		else{
			out.print("login failed");
		}
	}else out.print("can't handle get request");
%>