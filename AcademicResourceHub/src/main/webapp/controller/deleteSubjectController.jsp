
<%@page import="com.arh.dao.SubjectDao"%>
<jsp:useBean id="subject" class="com.arh.entity.Subject"></jsp:useBean>
<jsp:setProperty property="*" name="subject" />

<% 
	String methodType = request.getMethod();
	if(methodType.equalsIgnoreCase("get")){
		if(SubjectDao.deleteSubject(subject)){ %>
		<script>
		  window.alert("Subject deleted successfully...");
		  window.location.href="../manage_subject.jsp";
		</script>
<%}
		else{
			out.print("Subject added failed");
		}
	}else out.print("can't handle post request");
%>