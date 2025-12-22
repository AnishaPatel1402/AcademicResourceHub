
<%@page import="com.arh.dao.BranchDao"%>
<jsp:useBean id="branch" class="com.arh.entity.Branch"></jsp:useBean>
<jsp:setProperty property="*" name="branch" />

<% 
	String methodType = request.getMethod();
	if(methodType.equalsIgnoreCase("POST")){
		if(BranchDao.updateBranch(branch)){ %>
		<script>
		  window.alert("Branch updated successfully...");
		  window.location.href="../manage_branch.jsp";
		</script>
<%}
		else{
			out.print("branch added failed");
		}
	}else out.print("can't handle GET request");
%>