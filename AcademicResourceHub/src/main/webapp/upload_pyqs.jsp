<%@page import="com.arh.dao.SubjectDao"%>
<%@page import="com.arh.entity.Subject"%>
<%@page import="java.util.List"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>

<!DOCTYPE html>
<html>
<head>
<title>Upload PYQs</title>
<link rel="stylesheet"
	href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.2/dist/css/bootstrap.min.css">
</head>

<body>

	<div class="container mt-5">
		<span> <a href="admin_dashboard.jsp"
			class="btn btn-outline-secondary mb-3"> Back to Dashboard </a>
		</span>
		<div class="card shadow p-4">
			<h3 class="text-center" style="color: #0a3d62">Upload PYQs</h3>

			<!-- SUCCESS MESSAGE -->
			<% if(request.getParameter("success") != null) { %>
			<div class="alert alert-success text-center">PYQ uploaded
				successfully ✅</div>
			<% } %>

			<!-- ERROR MESSAGE -->
			<% if(request.getParameter("error") != null) { %>
			<div class="alert alert-danger text-center">Something went
				wrong ❌</div>
			<% } %>

			<form action="uploadPyqs" method="post" enctype="multipart/form-data">

				<!-- FILE NAME -->
				<div class="mb-3">
					<label class="form-label fw-bold">File Name</label> <input
						type="text" name="fileName" class="form-control" required>
				</div>

				<!-- YEAR -->
				<div class="mb-3">
					<label class="form-label fw-bold">Exam Year</label> <input
						type="number" name="year" class="form-control"
						placeholder="e.g. 2022" required>
				</div>

				<!-- SUBJECT -->
				<%
                List<Subject> subjects = SubjectDao.getAllSubjects();
            %>
				<div class="mb-3">
					<label class="form-label fw-bold">Select Subject</label> <select
						name="subjectId" class="form-select" required>
						<option value="">-- Select Subject --</option>
						<% for(Subject s : subjects) { %>
						<option value="<%=s.getId()%>">
							<%=s.getSubjectName()%>
						</option>
						<% } %>
					</select>
				</div>

				<!-- FILE -->
				<div class="mb-3">
					<label class="form-label fw-bold">Upload PYQ File (PDF)</label> <input
						type="file" name="filePath" class="form-control" required>
				</div>

				<!-- BUTTON -->
				<button class="btn w-100"
					style="background-color: #0a3d62; color: white">Upload PYQ
				</button>

			</form>
		</div>

	</div>

</body>
</html>
