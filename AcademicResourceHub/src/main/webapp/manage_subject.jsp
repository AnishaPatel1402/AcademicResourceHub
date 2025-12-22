<%@page import="com.arh.dao.SubjectDao"%>
<%@page import="com.arh.entity.Subject"%>
<%@page import="java.util.List"%>

<%
    List<Subject> subList = SubjectDao.getAllSubjects();
%>

<!DOCTYPE html>
<html>

<head>
<title>Manage Subjects</title>
<link
	href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.2/dist/css/bootstrap.min.css"
	rel="stylesheet">
</head>

<body>

	<div class="container mt-4">

		<h3 style="color: #0a3d62" class="mb-3">Manage Subject</h3>

		<a href="add_subject.jsp" style="background-color: #0a3d62"
			class="btn btn-primary mb-3">+ Add New Subject</a> <a
			href="admin_dashboard.jsp" class="btn btn-outline-secondary mb-3">
			Back to Dashboard </a>

		<table class="table table-bordered table-striped">
			<thead>
				<tr>
					<th style="background-color: #0a3d62" class="text-white">ID</th>
					<th style="background-color: #0a3d62" class="text-white">Subject</th>
					<th style="background-color: #0a3d62" class="text-white">Subject Branch</th>
					<th style="background-color: #0a3d62" class="text-white">Subject Semester</th>
					<th style="background-color: #0a3d62" class="text-white">YouTube Link</th>
					<th style="background-color: #0a3d62" class="text-white">Actions</th>
				</tr>
			</thead>

			<tbody>
				<%for(Subject s: subList){ %>
				<tr>
					<td><%= s.getId() %></td>
					<td><%= s.getSubjectName()%></td>
					<td><%= s.getBranch().getBranchName() %></td>
					<td><%= s.getSemester().getSemNumber() %></td>
					<td><a href="<%= s.getYtLink()%>">click here</a></td>
					

					<td><a href="edit_subject.jsp?id=<%=s.getId()%>"
						class="btn btn-warning btn-sm">Edit</a> <a
						href="controller/deleteSubjectController.jsp?id=<%= s.getId()%>"
						class="btn btn-danger btn-sm"
						onclick="return confirm('Delete this subject?');"> Delete </a></td>
				</tr>
				<%} %>
			</tbody>
		</table>

	</div>

</body>
</html>
