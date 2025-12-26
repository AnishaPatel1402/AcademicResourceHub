<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Admin Dashboard | Academic Resource Hub</title>

    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.2/dist/css/bootstrap.min.css" rel="stylesheet"/>
    <link href="https://cdn.jsdelivr.net/npm/bootstrap-icons@1.10.3/font/bootstrap-icons.css" rel="stylesheet">

    <style>
        body { font-family: 'Poppins', sans-serif; background: #f6f9fc; }

        /* Sidebar */
        .sidebar {
            width: 260px;
            height: 100vh;
            background-color: #0a3d62;
            position: fixed;
            top: 0;
            left: 0;
            padding-top: 70px;
            transition: 0.3s;
        }

        .sidebar a {
            display: block;
            padding: 12px 20px;
            color: #dcdde1;
            font-size: 15px;
            text-decoration: none;
        }

        .sidebar a:hover, .sidebar a.active {
            background: #0a3d62;
            color: #fff;
        }

        /* Top Navbar */
        .navbar {
            height: 70px;
            background: #fff;
            box-shadow: 0 3px 10px rgba(0,0,0,0.1);
        }

        /* Main Content */
        .content {
            margin-left: 260px;
            padding: 30px;
        }

        /* Responsive sidebar collapse */
        @media(max-width: 992px) {
            .sidebar { left: -260px; }
            .sidebar.active { left: 0; }
            .content { margin-left: 0; }
        }
    </style>
</head>

<body>

    <!-- SIDEBAR -->
    <div class="sidebar mt-4" id="sidebar">
        <h5 class="text-center text-white fw-bold mb-4">Admin Panel</h5>

        <a href="#" class="active"><i class="bi bi-speedometer2 me-2"></i> Dashboard</a>
        <a href="manage_branch.jsp"><i class="bi bi-diagram-3 me-2"></i> Manage Branches</a>
        <a href="manage_semester.jsp"><i class="bi bi-layers me-2"></i> Manage Semesters</a>
        <a href="manage_subject.jsp"><i class="bi bi-journal-code me-2"></i> Manage Subjects</a>
        <a href="upload_notes.jsp"><i class="bi bi-file-earmark-pdf me-2"></i> Upload Notes</a>
        <a href="upload_pyqs.jsp"><i class="bi bi-archive me-2"></i> Upload PYQs</a>
        <a href="manage_resourses.jsp"><i class="bi bi-collection me-2"></i> All Resources</a>
        <a href="logout.jsp" class="mt-3 text-danger"><i class="bi bi-box-arrow-right me-2"></i> Logout</a>
    </div>

    <!-- NAVBAR -->
    <nav class="navbar navbar-expand-lg fixed-top">
        <div class="container-fluid">
			<div style="color:#0a3d62" class="container d-flex">
				 <button class="btn btn-outline-primary me-3 d-lg-none" id="toggleBtn">
                <i class="bi bi-list"></i>
            </button>

            <a  style="color:#0a3d62; font-size:1.7rem" class="navbar-brand fw-bold" href="#"><i
				class="bi bi-book-half"></i> Academic Resource Hub</a>

            <div class="ms-auto d-flex align-items-center">
                <span class="me-3 fw-semibold">Welcome, Admin</span>
                <img src="https://icon-library.com/images/admin-icon/admin-icon-12.jpg"
                    width="40" class="rounded-circle border">
            </div>
			</div>
        </div>
    </nav>

    <!-- MAIN CONTENT -->
    <div style="margin-top:3.9rem" class="content">

        <h2 class="fw-bold mb-4">Dashboard Overview</h2>

        <div class="row g-4">

            <!-- CARD 1 -->
            <div class="col-md-4">
                <div class="card shadow-sm border-0 p-3">
                    <div class="d-flex align-items-center">
                        <div class="bg-primary text-white rounded p-3">
                            <i class="bi bi-diagram-3 fs-3"></i>
                        </div>
                        <div class="ms-3">
                            <h5 class="fw-bold">Branches</h5>
                            <p class="text-muted">Add / View Branches</p>
                        </div>
                        <a href="manage_branch.jsp" class="btn btn-sm btn-primary ms-auto">Manage</a>
                    </div>
                </div>
            </div>

            <!-- CARD 2 -->
            <div class="col-md-4">
                <div class="card shadow-sm border-0 p-3">
                    <div class="d-flex align-items-center">
                        <div class="bg-success text-white rounded p-3">
                            <i class="bi bi-layers fs-3"></i>
                        </div>
                        <div class="ms-3">
                            <h5 class="fw-bold">Semesters</h5>
                            <p class="text-muted">Add / View Semesters</p>
                        </div>
                        <a href="manage_semester.jsp" class="btn btn-sm btn-success ms-auto">Manage</a>
                    </div>
                </div>
            </div>

            <!-- CARD 3 -->
            <div class="col-md-4">
                <div class="card shadow-sm border-0 p-3">
                    <div class="d-flex align-items-center">
                        <div class="bg-warning text-dark rounded p-3">
                            <i class="bi bi-journal-code fs-3"></i>
                        </div>
                        <div class="ms-3">
                            <h5 class="fw-bold">Subjects</h5>
                            <p class="text-muted">Add / View Subjects</p>
                        </div>
                        <a href="manage_subject.jsp" class="btn btn-sm btn-warning ms-auto">Manage</a>
                    </div>
                </div>
            </div>

            <!-- CARD 4 -->
            <div class="col-md-6">
                <div class="card shadow-sm border-0 p-3">
                    <div class="d-flex align-items-center">
                        <div class="bg-danger text-white rounded p-3">
                            <i class="bi bi-file-earmark-pdf fs-3"></i>
                        </div>
                        <div class="ms-3">
                            <h5 class="fw-bold">Upload Notes</h5>
                            <p class="text-muted">Upload PDF notes</p>
                        </div>
                        <a href="upload_notes.jsp" class="btn btn-sm btn-danger ms-auto">Upload</a>
                    </div>
                </div>
            </div>

            <!-- CARD 5 -->
            <div class="col-md-6">
                <div class="card shadow-sm border-0 p-3">
                    <div class="d-flex align-items-center">
                        <div class="bg-info text-white rounded p-3">
                            <i class="bi bi-archive fs-3"></i>
                        </div>
                        <div class="ms-3">
                            <h5 class="fw-bold">Upload PYQs</h5>
                            <p class="text-muted">Upload Previous Year Papers</p>
                        </div>
                        <a href="upload_pyqs.jsp" class="btn btn-sm btn-info text-white ms-auto">Upload</a>
                    </div>
                </div>
            </div>

        </div>

    </div>

    <script>
        const toggleBtn = document.getElementById('toggleBtn');
        const sidebar = document.getElementById('sidebar');

        toggleBtn.addEventListener('click', () => {
            sidebar.classList.toggle('active');
        });
    </script>

</body>
</html>
