<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Student Sign Up | Academic Resource Hub</title>
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.2/dist/css/bootstrap.min.css" rel="stylesheet">

    <style>
        body { background: #eef3fa; font-family: 'Poppins', sans-serif; }
        .signup-box {
            max-width: 500px;
            margin: 80px auto;
            background: white;
            padding: 35px;
            border-radius: 12px;
            box-shadow: 0 5px 20px rgba(0,0,0,0.12);
        }
        .signup-box h3 { font-weight: 700; }
    </style>
</head>
<body>

    <div class="container">
        <div class="signup-box">
            <h3 style="color:#0a3d62" class="text-center mb-3">Create Student Account</h3>
            <p class="text-center text-muted mb-4">Join and access all resources</p>

            <form method="post" action="controller/signupController.jsp">
                <div class="mb-3">
                    <label class="form-label">Full Name</label>
                    <input type="text" name="name" class="form-control" placeholder="Enter full name" required>
                </div>

                <div class="mb-3">
                    <label class="form-label">Email Address</label>
                    <input type="email" name="email" class="form-control" placeholder="Enter email" required>
                </div>

                <div class="mb-3">
                    <label class="form-label">Create Password</label>
                    <input type="password" name="password" class="form-control" placeholder="Create password" required>
                </div>

                <button style="background-color:#0a3d62" class="btn text-white w-100 mt-2">Sign Up</button>

                <p class="text-center mt-3">
                    Already have an account? 
                    <a href="login.jsp">Login</a>
                </p>
            </form>
        </div>
    </div>

</body>
</html>
