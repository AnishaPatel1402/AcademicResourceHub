<%@page import="com.arh.dao.StudentDao"%>
<jsp:useBean id="student" class="com.arh.entity.Student"></jsp:useBean>
<jsp:setProperty property="*" name="student"/>

<% 
	String methodType = request.getMethod();
	if(methodType.equalsIgnoreCase("POST")){
		if(StudentDao.registerStudent(student)){
			out.print("resgister success");
		}
		else{
			out.print("register failed");
		}
	}else out.print("can't handle get request");
%>