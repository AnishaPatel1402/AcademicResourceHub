
<%@page import="com.arh.entity.Notes"%>
<%@page import="com.arh.dao.NotesDao"%>
<jsp:useBean id="notes" class="com.arh.entity.Notes"></jsp:useBean>
<jsp:setProperty property="*" name="notes" />

<% 
	String methodType = request.getMethod();
	if(methodType.equalsIgnoreCase("POST")){
		if(NotesDao.addNotes(notes)){ %>
		<script>
		  window.alert("notes add successfully...");
		  window.location.href="../upload_notes.jsp";
		</script>
<%}
		else{
			out.print("notes add failed");
		}
	}else out.print("can't handle post request");
%>