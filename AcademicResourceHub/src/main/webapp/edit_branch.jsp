<%@ page import="com.arh.dao.BranchDao, com.arh.entity.Branch" %>
<jsp:useBean id="branch" class="com.arh.entity.Branch"></jsp:useBean>
<jsp:setProperty property="*" name="branch" />
<%
    
    Branch b = BranchDao.getBranchById(branch);
%>

<!DOCTYPE html>
<html>
<head>
    <title>Edit Branch</title>
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.2/dist/css/bootstrap.min.css" rel="stylesheet">
</head>

<body class="bg-light">

<div class="container mt-5">
    <div class="card p-4 shadow" style="max-width: 500px; margin: auto">

        <h3 style="color:#0a3d62" class="text-center ">Edit Branch</h3>

        <form action="controller/editBranchController.jsp" method="post">
            <input type="hidden" name="id" value="<%= b.getId() %>">

            <div class="mb-3">
                <label class="form-label">Branch Name</label>
                <input type="text" name="branchName" class="form-control"
                       value="<%= b.getBranchName() %>" required>
            </div>

            <button style="background-color:#0a3d62" class="btn text-white w-100">Update</button>
            <a href="manage_branch.jsp" class="btn btn-secondary w-100 mt-2">Back</a>
        </form>

    </div>
</div>

</body>
</html>
