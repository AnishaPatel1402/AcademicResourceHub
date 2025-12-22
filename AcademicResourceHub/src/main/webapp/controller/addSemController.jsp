
<%@page import="com.arh.dao.SemesterDao"%>
<jsp:useBean id="sem" class="com.arh.entity.Semester"></jsp:useBean>
<jsp:setProperty property="*" name="sem" />

<% 
	String methodType = request.getMethod();
	if(methodType.equalsIgnoreCase("POST")){
		if(SemesterDao.addSem(sem)){ %>
		<script>
		  window.alert("Sem added successfully...");
		  window.location.href="../manage_semester.jsp";
		</script>
<%}
		else{
			out.print("Sem added failed");
		}
	}else out.print("can't handle get request");
%>