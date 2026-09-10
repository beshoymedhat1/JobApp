<%@ page language="java" contentType="text/html; charset=UTF-8"
		 pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">
<head>
	<meta charset="UTF-8">
	<meta name="viewport" content="width=device-width, initial-scale=1">
	<title>Job App | Find Your Next Opportunity</title>


	<link
			href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.2/dist/css/bootstrap.min.css"
			rel="stylesheet"
			integrity="sha384-T3c6CoIi6uLrA9TneNEoa7RxnatzjcDSCmG1MXxSR1GAsXEV/Dwwykc2MPK8M2HN"
			crossorigin="anonymous">
	<link rel="stylesheet" href="${pageContext.request.contextPath}/css/common.css">
	<link rel="stylesheet" href="${pageContext.request.contextPath}/css/home.css">

</head>
<body>


<nav class="navbar navbar-expand-lg navbar-light sticky-top">
	<div class="container">
		<a class="navbar-brand" href="home"><span class="brand-mark">J</span>Job App</a>
		<button class="navbar-toggler" type="button" data-bs-toggle="collapse" data-bs-target="#navbarNav"
				aria-controls="navbarNav" aria-expanded="false" aria-label="Toggle navigation">
			<span class="navbar-toggler-icon"></span>
		</button>

		<div class="collapse navbar-collapse" id="navbarNav">
			<ul class="navbar-nav ms-auto">
				<li class="nav-item">
					<a class="nav-link active" href="home">Home</a>
				</li>
				<li class="nav-item">
					<a class="nav-link" href="viewalljobs">All Jobs</a>
				</li>

				<li class="nav-item">
					<a class="nav-link" href="addjob">Post a Job</a>
				</li>
			</ul>
		</div>
	</div>
</nav>

<main class="hero">
	<div class="container">
		<div class="row align-items-center">
			<div class="col-lg-8">
				<div class="eyebrow">Your career, elevated</div>
				<h1>Find work that <span>moves you forward.</span></h1>
				<p class="hero-copy">Discover the roles that fit your skills and ambitions, or share an opportunity with people ready to make an impact.</p>
			</div>
		</div>

		<div class="row g-4 mt-2">
			<div class="col-md-6">
				<section class="action-card">
					<div class="action-icon">⌕</div>
					<h2>Explore opportunities</h2>
					<p>Browse open roles and find the next place to put your talent to work.</p>
					<a href="viewalljobs" class="btn btn-job">View all jobs <span aria-hidden="true">→</span></a>
				</section>
			</div>
			<div class="col-md-6">
				<section class="action-card secondary">
					<div class="action-icon">＋</div>
					<h2>Share an opening</h2>
					<p>Posting a role is quick and simple. Connect your team with great candidates.</p>
					<a href="addjob" class="btn btn-job btn-job-light">Post a job <span aria-hidden="true">→</span></a>
				</section>
			</div>
		</div>

		<div class="row stats text-center text-md-start g-4">
			<div class="col-4"><div class="stat-number">Fast</div><div class="stat-label">Simple job discovery</div></div>
			<div class="col-4"><div class="stat-number">Clear</div><div class="stat-label">Focused opportunities</div></div>
			<div class="col-4"><div class="stat-number">Ready</div><div class="stat-label">For your next step</div></div>
		</div>
	</div>
</main>

<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.2/dist/js/bootstrap.bundle.min.js"
		integrity="sha384-C6RzsynM9kWDrMNeT87bh95OGNyZPhcTNXj1NW7RuBCsyN/o0jlpcV8Qyq46cDfL"
		crossorigin="anonymous"></script>
</body>
</html>
