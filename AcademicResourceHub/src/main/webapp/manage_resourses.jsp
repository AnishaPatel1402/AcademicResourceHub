<%@page import="java.util.List"%>
<%@page
	import="com.arh.dao.NotesDao, com.arh.dao.PyqsDao, com.arh.entity.Notes, com.arh.entity.Pyqs"%>
<%@page import="com.arh.entity.Subject"%>
<%@page import="com.arh.dao.SubjectDao"%>
<!DOCTYPE html>
<html>
<head>
<title>All Resources</title>
<link rel="stylesheet"
	href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.2/dist/css/bootstrap.min.css">
</head>
<body>
	<div class="container mt-5">

		<span> <a href="admin_dashboard.jsp"
			class="btn btn-outline-secondary mb-3"> Back to Dashboard </a></span>

		<h2 class="mb-4 text-center" style="color: #0a3d62">All Resources</h2>

		<% 
        List<Notes> notesList = NotesDao.getAllNotes();
        List<Pyqs> pyqsList = PyqsDao.getAllPyqs();
    %>

		<h4 class="mt-3">Notes</h4>
		<table class="table table-bordered">
			<thead class="table-dark">
				<tr>
					<th>File Name</th>
					<th>Subject</th>
					<th>Semester</th>
					<th>Download</th>
				</tr>
			</thead>
			<tbody>
				<% for(Notes n : notesList) { %>
				<tr>
					<td><%= n.getFileName() %></td>
					<td><%= n.getSubject().getSubjectName() %></td>
					<td><%= n.getSubject().getSemester().getSemNumber() %></td>
					<td><a href="<%= n.getFilePath() %>" target="_blank"
						class="btn btn-sm btn-success">Download</a></td>
				</tr>
				<% } %>
			</tbody>
		</table>

		<h4 class="mt-5">PYQs</h4>
		<table class="table table-bordered">
			<thead class="table-dark">
				<tr>
					<th>File Name</th>
					<th>Year</th>
					<th>Subject</th>
					<th>Semester</th>
					<th>Download</th>
				</tr>
			</thead>
			<tbody>
				<% for(Pyqs p : pyqsList) { %>
				<tr>
					<td><%= p.getFileName() %></td>
					<td><%= p.getYear() %></td>
					<td><%= p.getSubject().getSubjectName() %></td>
					<td><%= p.getSubject().getSemester().getSemNumber() %></td>
					<td><a href="<%= p.getFilePath() %>" target="_blank"
						class="btn btn-sm btn-primary">Download</a></td>
				</tr>
				<% } %>
			</tbody>
		</table>
	</div>
</body>
</html>
