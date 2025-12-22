
<%@page import="com.arh.dao.SubjectDao"%>
<jsp:useBean id="subject" class="com.arh.entity.Subject"></jsp:useBean>
<jsp:setProperty property="*" name="subject" />

<% 
	String methodType = request.getMethod();
	if(methodType.equalsIgnoreCase("POST")){
		if(SubjectDao.addSubject(subject)){ %>
		<script>
		  window.alert("subject added successfully...");
		  window.location.href="../manage_subject.jsp";
		</script>
<%}
		else{
			out.print("branch added failed");
		}
	}else out.print("can't handle get request");
%>