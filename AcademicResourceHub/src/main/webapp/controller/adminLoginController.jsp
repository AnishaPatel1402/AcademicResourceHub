<%@page import="com.arh.dao.AdminDao"%>
<jsp:useBean id="admin" class="com.arh.entity.Admin"></jsp:useBean>
<jsp:setProperty property="*" name="admin"/>

<% 
	String methodType = request.getMethod();
	if(methodType.equalsIgnoreCase("POST")){
		if(AdminDao.checkAdmin(admin)){
			response.sendRedirect("../admin_dashboard.jsp");
		}
		else{
			out.print("login failed");
		}
	}else out.print("can't handle get request");
%>