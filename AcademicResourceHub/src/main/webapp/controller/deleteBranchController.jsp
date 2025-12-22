
<%@page import="com.arh.dao.BranchDao"%>
<jsp:useBean id="branch" class="com.arh.entity.Branch"></jsp:useBean>
<jsp:setProperty property="*" name="branch" />

<% 
	String methodType = request.getMethod();
	if(methodType.equalsIgnoreCase("get")){
		if(BranchDao.deleteBranch(branch)){ %>
		<script>
		  window.alert("Branch deleted successfully...");
		  window.location.href="../manage_branch.jsp";
		</script>
<%}
		else{
			out.print("branch added failed");
		}
	}else out.print("can't handle post request");
%>