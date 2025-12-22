<!DOCTYPE html>
<html lang="en">
<head>
<meta charset="UTF-8" />
<meta name="viewport" content="width=device-width, initial-scale=1.0" />
<title>Academic Resource Hub</title>
<link
	href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.2/dist/css/bootstrap.min.css"
	rel="stylesheet" />
<link
	href="https://fonts.googleapis.com/css2?family=Montserrat:wght@700&family=Poppins:wght@400;600&display=swap"
	rel="stylesheet">
<link rel="stylesheet"
	href="https://cdn.jsdelivr.net/npm/bootstrap-icons@1.11.3/font/bootstrap-icons.min.css">

<style>
:root {
	--primary-color: #0d6efd;
	--secondary-color: #1c75bc;
	--dark-blue: #0a3d62;
}

body {
	font-family: 'Poppins', sans-serif;
	background: #f6f9fc;
	color: #333;
}

h1, h2 {
	font-family: 'Montserrat', sans-serif;
	font-weight: 700;
}

/* Navbar */
.navbar-brand {
	font-size: 1.8rem;
	color: var(--dark-blue) !important;
}

.nav-link:hover {
	color: var(--dark-blue) !important;
}

/* Modern Hero */
.hero {
	padding: 170px 20px 120px; /* More space at the top */
	background: linear-gradient(rgba(0, 0, 0, 0.6), rgba(0, 0, 0, 0.7)),
		url('https://images.pexels.com/photos/3184632/pexels-photo-3184632.jpeg')
		center/cover no-repeat;
	color: #fff;
	text-align: center;
	opacity: 0.8;
	margin-top: 70px;
}


.hero .display-4 {
	text-shadow: 2px 2px 4px rgba(0, 0, 0, 0.5);
}

/* Feature Boxes */
.feature-box {
	background: #fff;
	border-radius: 12px;
	padding: 30px;
	transition: 0.3s;
	box-shadow: 0 6px 15px rgba(0, 0, 0, 0.05);
	border-left: 5px solid var(--dark-blue);
	height: 100%; /* Ensure equal height */
}

.feature-box:hover {
	transform: translateY(-8px);
	box-shadow: 0 12px 25px rgba(0, 0, 0, 0.1);
	border-left-color: var(--dark-blue);
}

.feature-icon {
	font-size: 2.5rem;
	margin-bottom: 15px;
	color: var(--dark-blue);
}

.feature-box h4 {
	font-family: 'Montserrat', sans-serif;
	font-weight: 600;
}

/* Branch Cards */
.branch-card {
	transition: 0.3s;
	box-shadow: 0 4px 10px rgba(0, 0, 0, 0.08);
	border: none;
}

.branch-card:hover {
	transform: translateY(-5px);
	box-shadow: 0 8px 15px rgba(0, 0, 0, 0.15);
}

/* CTA Section */
.cta-section {
	background-color: var(--dark-blue);
	color: white;
	padding: 60px 0;
	text-align: center;
}

/* Footer */
footer {
	background: var(--dark-blue);
	color: white;
	padding: 40px 0;
	font-size: 0.999rem;
}

footer a {
	color: #bbb;
	text-decoration: none;
	transition: color 0.2s;
}

footer a:hover {
	color: white;
}
</style>
</head>
<body>

	<nav
		class="navbar navbar-expand-lg navbar-light bg-white shadow-sm fixed-top">
		<div class="container">
			<a class="navbar-brand fw-bold" href="#"><i
				class="bi bi-book-half"></i> Academic Resource Hub</a>
			<button class="navbar-toggler" type="button"
				data-bs-toggle="collapse" data-bs-target="#menu">
				<span class="navbar-toggler-icon"></span>
			</button>

			<div class="collapse navbar-collapse" id="menu">
				<ul class="navbar-nav ms-auto">
					<li class="nav-item"><a class="nav-link active" href="#">Home</a></li>
					<li class="nav-item"><a class="nav-link" href="#features">Features</a></li>
					<li class="nav-item"><a class="nav-link" href="#branches">Branches</a></li>
					<li class="nav-item"><a class="nav-link" href="#cta">Get Started</a></li>
					
					<li class="nav-item"><a href="login.jsp" class="nav-link">
				<i class="bi bi-person-circle"></i> Admin Login</a>	</li>
							
						
				</ul>
			</div>
		</div>
	</nav>

	<section class="hero">
		<div class="container">
			<h1 class="display-3 fw-bold animate__animated animate__fadeInDown">Your Study Companion</h1>
			<p class="lead mt-4 mb-5">All branches &bullet; All semesters
				&bullet; One platform &mdash; Streamline your preparation today!</p>
			<a href="#branches"
				style="background-color:var(--dark-blue);" class="btn btn-lg px-5 me-2 shadow-lg text-white"> Start
				Exploring <i class="bi bi-arrow-right-short"></i>
			</a> <a href="login.jsp" class="btn btn-outline-light btn-lg ms-2 shadow-lg">
				<i class="bi bi-person-circle"></i> Student Login
			</a>
		</div>
	</section>

	<section id="features" class="py-5">
		<div class="container">
			<h2 class="fw-bold text-center mb-2">Powering Your Success</h2>
			<p class="text-center text-muted mb-5">The essential tools you
				need to ace your examinations.</p>
			<div class="row g-4">

				<div class="col-lg-4 col-md-6">
					<div class="feature-box">
						<div class="feature-icon">
							<i class="bi bi-file-earmark-text-fill"></i>
						</div>
						<h4 class="text-dark">High-Quality Notes</h4>
						<p class="text-muted">Download professionally structured,
							branch-wise, and semester-wise study notes curated by top
							educators.</p>
					</div>
				</div>

				<div class="col-lg-4 col-md-6">
					<div class="feature-box">
						<div class="feature-icon" style="color: #198754;">
							<i class="bi bi-journal-check"></i>
						</div>
						<h4 class="text-dark">Past Year Questions (PYQs)</h4>
						<p class="text-muted">Access and practice with solved and
							unsolved previous years' university papers to master exam
							patterns and common questions.</p>
					</div>
				</div>

				<div class="col-lg-4 col-md-12">
					<div class="feature-box">
						<div class="feature-icon" style="color: #dc3545;">
							<i class="bi bi-collection-play-fill"></i>
						</div>
						<h4 class="text-dark">Curated Video Lectures</h4>
						<p class="text-muted">Hand-picked and organized YouTube
							playlists and lecture series for every subject and topic, helping
							you learn visually.</p>
					</div>
				</div>

			</div>
		</div>
	</section>


	<!-- BRANCHES SECTION -->
	<section id="branches" class="py-5">
		<div class="container">
			<h2 class="text-center mb-4 fw-bold">Browse Resources by Branch</h2>
			<div class="row g-4">
				<div class="col-md-3">
					<div
						style="background-color:var(--dark-blue);" class="p-4 text-white text-center rounded branch-card">CSE</div>
				</div>
				<div class="col-md-3">
					<div
						class="p-4 bg-secondary text-white text-center rounded branch-card">IT</div>
				</div>
				<div class="col-md-3">
					<div
						class="p-4 bg-success text-white text-center rounded branch-card">ME</div>
				</div>
				<div class="col-md-3">
					<div
						class="p-4 bg-warning text-dark text-center rounded branch-card">CE</div>
				</div>
			</div>
		</div>
	</section>


	<section id="cta" class="cta-section">
		<div class="container text-center">
			<h2 class="fw-bold mb-3">Ready to Ace Your Exams?</h2>
			<p class="lead mb-4">Join thousands of successful students and
				unlock a world of academic resources tailored for your success.</p>
			<button
				class="btn btn-warning btn-lg fw-bold px-5 py-3 text-dark shadow-sm">
				Register for Free Today! <i class="bi bi-box-arrow-in-right"></i>
			</button>
		</div>
	</section>

	<footer class="text-left">
		<div class="container-fluid">

			<hr class="my-3 border-light">
			<div class="text-center">
				<p class="m-0">&copy; 2025 Academic Resource Hub | All Rights
					Reserved.</p>
			</div>
		</div>
	</footer>

	<script
		src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.2/dist/js/bootstrap.bundle.min.js"></script>
</body>
</html>