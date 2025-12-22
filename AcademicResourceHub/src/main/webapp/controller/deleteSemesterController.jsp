
<%@page import="com.arh.dao.SemesterDao"%>
<jsp:useBean id="sem" class="com.arh.entity.Semester"></jsp:useBean>
<jsp:setProperty property="*" name="sem" />


<% 
	String methodType = request.getMethod();
	if(methodType.equalsIgnoreCase("get")){
		if(SemesterDao.deleteSem(sem)){ %>
		<script>
		  window.alert("Sem deleted successfully...");
		  window.location.href="../manage_semester.jsp";
		</script>
<%}
		else{
			out.print("sem added failed");
		}
	}else out.print("can't handle post request");
%>