<%@page import="java.util.List"%>
<%@page import="com.arh.dao.BranchDao"%>
<%@page import="com.arh.entity.Branch"%>

<%
    List<Branch> list = BranchDao.getAllBranches();
%>

<!DOCTYPE html>
<html>
<head>
<title>Manage Branches</title>
<link
	href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.2/dist/css/bootstrap.min.css"
	rel="stylesheet">
</head>

<body>

	<div class="container mt-4">

		<h3 style="color: #0a3d62" class="mb-3">Manage Branches</h3>

		<a href="add_branch.jsp" style="background-color: #0a3d62"
			class="btn btn-primary mb-3">+ Add New Branch</a> 
			<a
			href="admin_dashboard.jsp"
			class="btn btn-outline-secondary mb-3"> <i
			class="bi bi-arrow-left"></i> Back to Dashboard
		</a>
		<table class="table table-bordered table-striped">
			<thead>
				<tr>
					<th style="background-color: #0a3d62" class="text-white">ID</th>
					<th style="background-color: #0a3d62" class="text-white">Branch
						Name</th>
					<th style="background-color: #0a3d62" class="text-white">Actions</th>
				</tr>
			</thead>

			<tbody>
				<% for(Branch b : list){ %>
				<tr>
					<td><%= b.getId() %></td>
					<td><%= b.getBranchName() %></td>
					<td>
						<!-- Edit --> <a href="edit_branch.jsp?id=<%=b.getId()%>"
						class="btn btn-warning btn-sm">Edit</a> <!-- Delete --> <a
						href="controller/deleteBranchController.jsp?id=<%=b.getId()%>"
						class="btn btn-danger btn-sm"
						onclick="return confirm('Are you sure you want to delete this branch?');">
							Delete </a>
					</td>
				</tr>
				<% } %>
			</tbody>
		</table>

	</div>

</body>
</html>
