<%@page import="com.arh.dao.SubjectDao"%>
<%@page import="com.arh.entity.Subject"%>
<%@page import="java.util.List"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>

<!DOCTYPE html>
<html>
<head>
<title>Upload Notes</title>
<link rel="stylesheet"
	href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.2/dist/css/bootstrap.min.css">
</head>

<body>

	<%
	String success = request.getParameter("success");
	String error = request.getParameter("error");
	%>

	<%
	if ("true".equals(success)) {
	%>
	<div class="alert alert-success alert-dismissible fade show"
		role="alert">
		<strong>Success!</strong> Notes uploaded successfully.
		<button type="button" class="btn-close" data-bs-dismiss="alert"></button>
	</div>
	<%
	}
	%>

	<%
	if ("true".equals(error)) {
	%>
	<div class="alert alert-danger alert-dismissible fade show"
		role="alert">
		<strong>Error!</strong> Failed to upload notes.
		<button type="button" class="btn-close" data-bs-dismiss="alert"></button>
	</div>
	<%
	}
	%>


	<div class="container mt-5">

		<span> <a href="admin_dashboard.jsp"
			class="btn btn-outline-secondary mb-3"> Back to Dashboard </a>
		</span>

		<div class="card shadow p-4">


			<h3 style="color: #0a3d62" class="text-center">Upload Notes</h3>

			<form action="uploadNotes" method="post"
				enctype="multipart/form-data">

				<div class="mb-3">
					<label class="form-label fw-bold">File Name</label> <input
						type="text" name="fileName" class="form-control" required>
				</div>

				<%
				List<Subject> list = SubjectDao.getAllSubjects();
				%>

				<div class="mb-3">
					<label class="form-label fw-bold">Select Subject</label> <select
						name="subjectId" class="form-select" required>
						<option value="0">-- Select Subject --</option>
						<%
						for (Subject s : list) {
						%>
						<option value="<%=s.getId()%>"><%=s.getSubjectName()%></option>
						<%
						}
						%>
					</select>
				</div>

				<div class="mb-3">
					<label class="form-label fw-bold">Upload File</label> <input
						type="file" name="filePath" class="form-control" required>
				</div>

				<button style="background-color: #0a3d62; color: white"
					class="btn w-100">Upload Notes</button>

			</form>
		</div>

	</div>

</body>
</html>
