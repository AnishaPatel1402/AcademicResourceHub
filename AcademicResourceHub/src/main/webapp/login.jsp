<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Login | Academic Resource Hub</title>
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.2/dist/css/bootstrap.min.css" rel="stylesheet">

    <style>
        body {
            background: #eef3fa;
            font-family: 'Poppins', sans-serif;
        }
        .login-box {
            max-width: 480px;
            margin: 80px auto;
            background: #fff;
            padding: 35px;
            border-radius: 12px;
            box-shadow: 0 5px 20px rgba(0,0,0,0.12);
        }
        .nav-tabs .nav-link.active {
            background: #0a3d62;
            color: #fff !important;
            border-radius: 8px;
        }
        .nav-tabs .nav-link {
            border: none;
            color: #0a3d62;
            font-weight: 600;
        }
    </style>
</head>
<body>

    <div class="container">
        <div class="login-box">

            <h3 style="color:#0a3d62" class="text-center mb-4">Login Portal</h3>

            <!-- TABS -->
            <ul class="nav nav-tabs justify-content-center mb-4" id="loginTabs">
                <li class="nav-item">
                    <button class="nav-link active" data-bs-toggle="tab" data-bs-target="#student">Student</button>
                </li>
                <li class="nav-item">
                    <button class="nav-link" data-bs-toggle="tab" data-bs-target="#admin">Admin</button>
                </li>
            </ul>

            <!-- TAB CONTENT -->
            <div class="tab-content">

                <!-- STUDENT LOGIN -->
                <div class="tab-pane fade show active" id="student">
                    <form method="post" action="controller/studentLoginController.jsp">
                        <div class="mb-3">
                            <label class="form-label">Student Email</label>
                            <input type="email" name="email" class="form-control" placeholder="Enter student email" required>
                        </div>

                        <div class="mb-3">
                            <label class="form-label">Password</label>
                            <input type="password" name="password" class="form-control" placeholder="Enter password" required>
                        </div>

                        <button style="background-color:#0a3d62" class="btn text-white w-100 mt-2">Login</button>

                        <p class="text-center mt-3">
                            Don't have an account?
                            <a href="signup.jsp">Create Account</a>
                        </p>
                    </form>
                </div>

                <!-- ADMIN LOGIN -->
                <div class="tab-pane fade" id="admin">
                    <form action="controller/adminLoginController.jsp" method="post">
                        <div class="mb-3">
                            <label class="form-label">Admin Email</label>
                            <input type="email" name="email" class="form-control" placeholder="Enter admin email" required>
                        </div>

                        <div class="mb-3">
                            <label class="form-label">Password</label>
                            <input type="password" name="password" class="form-control" placeholder="Enter password" required>
                        </div>

                        <button style="background-color:#0a3d62" class="btn text-white w-100 mt-2">Admin Login</button>
                    </form>
                </div>

            </div>
        </div>
    </div>

    <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.2/dist/js/bootstrap.bundle.min.js"></script>

</body>
</html>
