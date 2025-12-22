<%@page import="com.arh.dao.SemesterDao"%>
<%@page import="com.arh.entity.Semester"%>
<%@page import="com.arh.entity.Branch"%>
<%@page import="java.util.List"%>
<%@page import="com.arh.dao.BranchDao"%>
<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">

<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Add Subject | Academic Resource Hub</title>

    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.2/dist/css/bootstrap.min.css" rel="stylesheet" />
    <link href="https://cdn.jsdelivr.net/npm/bootstrap-icons@1.10.3/font/bootstrap-icons.css" rel="stylesheet">

    <style>
        body { 
            background: #f6f9fc; 
            font-family: 'Poppins', sans-serif; 
        }

        .container-box {
            max-width: 600px;
            margin: 100px auto;
        }
    </style>
</head>

<body>


    <div class="container container-box">

        <div class="card shadow border-0 p-4">
            <h3  style="color:#0a3d62" class="text-center fw-bold mb-3">
                <i class="bi bi-diagram-3"></i> Add New Subject
            </h3>

            <form action="controller/addSubjectController.jsp" method="post">

                <div class="mb-3">
                    <label class="form-label fw-semibold">Subject Name</label>
                    <input type="text" name="subjectName" class="form-control" placeholder="Enter Subject name"
                        required />
                    
                </div>
                
                <% List<Branch> branchList = BranchDao.getAllBranches(); %>
                <div class="mb-3">
                   <label class="form-label fw-semibold">Select the branch of subject</label>
                   <select name="branchId" class="form-select" required>
                    		<option value="0">----choose the branch----</option>
                    		<%for(Branch b : branchList){ %>
                    			<option value="<%= b.getId()%>"><%= b.getBranchName() %></option>
                    		<%} %>
                    </select>
                </div>
                
                <% List<Semester> semList = SemesterDao.getAllSemesters(); %>
                <div class="mb-3">
                   <label class="form-label fw-semibold">Select the Semester of subject</label>
                   <select name="semesterId" class="form-select" required>
                    		<option value="0">----choose the Sem----</option>
                    		<%for(Semester s: semList){ %>
                    		
                    			<option value="<%= s.getId()%>"><%= s.getSemNumber() %></option>
                    		<%} %>
                    </select>
                </div>
                
                
                 <div class="mb-3">
                    <label class="form-label fw-semibold">YouTube Link</label>
                    <input type="text" name="ytLink" class="form-control" placeholder="Enter youtube link"
                        required />
                    
                </div>

                <button style="background-color:#0a3d62" class="btn w-100 text-white mt-2">Add Subject</button>

                <a href="manage_subject.jsp" class="btn btn-outline-secondary w-100 mt-3">
                    <i class="bi bi-arrow-left"></i> Back
                </a>

            </form>
        </div>
    </div>

</body>

</html>
