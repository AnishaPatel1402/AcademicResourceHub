<%@page import="com.arh.dao.SubjectDao"%>
<jsp:useBean id="subject" class="com.arh.entity.Subject"></jsp:useBean>
<jsp:setProperty property="*" name="subject" />

<% 
	String methodType = request.getMethod();
	if(methodType.equalsIgnoreCase("POST")){
		if(SubjectDao.updateSubject(subject)){ %>
		<script>
		  window.alert("subject update successfully...");
		  window.location.href="../manage_subject.jsp";
		</script>
<%}
		else{
			out.print("subject added failed");
		}
	}else out.print("can't handle post request");
%>