<%@page import="java.util.List"%>
<%@page import="com.arh.dao.SemesterDao"%>
<%@page import="com.arh.entity.Semester"%>

<%
    List<Semester> semList = SemesterDao.getAllSemesters();
%>

<!DOCTYPE html>
<html>

<head>
<title>Manage Semesters</title>
<link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.2/dist/css/bootstrap.min.css"
    rel="stylesheet">
</head>

<body>

<div class="container mt-4">

    <h3 style="color: #0a3d62" class="mb-3">Manage Semesters</h3>

    <a href="add_semester.jsp" style="background-color: #0a3d62"
        class="btn btn-primary mb-3">+ Add New Semester</a>

    <a href="admin_dashboard.jsp" class="btn btn-outline-secondary mb-3">
        Back to Dashboard
    </a>

    <table class="table table-bordered table-striped">
        <thead>
            <tr>
                <th style="background-color: #0a3d62" class="text-white">ID</th>
                <th style="background-color: #0a3d62" class="text-white">Semester</th>
                <th style="background-color: #0a3d62" class="text-white">Actions</th>
            </tr>
        </thead>

        <tbody>
        		<%for(Semester s: semList){ %>
            <tr>
                <td><%= s.getId() %></td>
                <td><%= s.getSemNumber() %></td>

                <td>
                    <a href="controller/deleteSemesterController.jsp?id=<%= s.getId()%>"
                        class="btn btn-danger btn-sm"
                        onclick="return confirm('Delete this semester?');">
                        Delete
                    </a>
                </td>
            </tr>
            <%} %>
        </tbody>
    </table>

</div>

</body>
</html>
