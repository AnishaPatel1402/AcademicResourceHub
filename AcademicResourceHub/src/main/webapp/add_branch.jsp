<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">

<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Add Branch | Academic Resource Hub</title>

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
                <i class="bi bi-diagram-3"></i> Add New Branch
            </h3>

            <p class="text-center text-muted mb-4">
                Create a new branch like CSE, IT, ME, EEE...
            </p>

            <form action="controller/addBranchController.jsp" method="post">

                <div class="mb-3">
                    <label class="form-label fw-semibold">Branch Name</label>
                    <input type="text" name="branchName" class="form-control" placeholder="Enter branch name"
                        required />
                </div>

                <button style="background-color:#0a3d62" class="btn w-100 text-white mt-2">Add Branch</button>

                <a href="manage_branch.jsp" class="btn btn-outline-secondary w-100 mt-3">
                    <i class="bi bi-arrow-left"></i> Back
                </a>

            </form>
        </div>
    </div>

</body>

</html>
