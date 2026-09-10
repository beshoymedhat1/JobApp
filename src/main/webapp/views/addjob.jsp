<%@ page language="java" contentType="text/html; charset=UTF-8"
		 pageEncoding="UTF-8"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>

<!DOCTYPE html>
<html lang="en">
<head>
	<meta charset="UTF-8">
	<meta name="viewport" content="width=device-width, initial-scale=1">
	<title>Post a Job | Job App</title>

	<link
			href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.2/dist/css/bootstrap.min.css"
			rel="stylesheet"
			integrity="sha384-T3c6CoIi6uLrA9TneNEoa7RxnatzjcDSCmG1MXxSR1GAsXEV/Dwwykc2MPK8M2HN"
			crossorigin="anonymous">

	<link rel="stylesheet" href="${pageContext.request.contextPath}/css/common.css">
	<link rel="stylesheet" href="${pageContext.request.contextPath}/css/add-job.css">

</head>
<body>

<nav class="navbar navbar-expand-lg navbar-light sticky-top">
	<div class="container">
		<a class="navbar-brand" href="home"><span class="brand-mark">J</span>Job App</a>
		<button class="navbar-toggler" type="button"
				data-bs-toggle="collapse" data-bs-target="#navbarNav"
				aria-controls="navbarNav" aria-expanded="false"
				aria-label="Toggle navigation">
			<span class="navbar-toggler-icon"></span>
		</button>

		<div class="collapse navbar-collapse" id="navbarNav">
			<ul class="navbar-nav ms-auto">
				<li class="nav-item"><a class="nav-link" href="home">Home</a></li>
				<li class="nav-item"><a class="nav-link" href="viewalljobs">All Jobs</a></li>
				<li class="nav-item"><a class="nav-link active" href="addjob">Post a Job</a></li>
			</ul>
		</div>
	</div>
</nav>


<main class="page-shell">
	<div class="container">
		<div class="page-heading text-center">
			<div class="kicker">For employers</div>
			<h1>Post your next great opportunity</h1>
			<p class="mx-auto">Create a clear job listing and connect with candidates who have the skills your team needs.</p>
		</div>
	<div class="row justify-content-center">
		<div class="col-lg-7">
			<div class="form-card">
					<h2>Job details</h2>
					<p class="form-intro">Fields marked as required help candidates understand the role at a glance.</p>
					<form action="handleForm" method="post">
						<div class="mb-3">
							<label for="postId" class="form-label">Post ID</label>
							<input type="text" class="form-control" id="postId"
								   name="postId" required>
						</div>

						<div class="mb-3">
							<label for="postProfile" class="form-label">Post Profile</label>
							<input type="text" class="form-control" id="postProfile" name="postProfile" required>
						</div>


						<div class="mb-3">
							<label for="postDesc" class="form-label">Post Description</label>
							<textarea class="form-control" id="postDesc" name="postDesc" rows="2" required></textarea>
						</div>


						<div class="mb-3">
							<label for="reqExperience" class="form-label">Required
								Experience</label>
							<input type="number" class="form-control" id="reqExperience" name="reqExperience" required>
						</div>


						<div class="mb-3">
							<label for="postTechStack" class="form-label">Tech Stack</label>
							<select multiple class="form-select" id="postTechStack" name="postTechStack" required>
								<option value="Java">Java</option>
								<option value="JavaScript">JavaScript</option>
								<!-- Additional options -->
								<option value="Swift">Swift</option>
								<option value="TypeScript">TypeScript</option>
								<option value="Go">Go</option>
								<option value="Kotlin">Kotlin</option>
								<option value="Rust">Rust</option>
								<option value="PHP">PHP</option>
								<option value="HTML5">HTML5</option>
								<option value="CSS3">CSS3</option>
								<option value="GraphQL">GraphQL</option>
								<option value="Raspberry Pi">Raspberry Pi</option>
								<option value="Arduino">Arduino</option>
								<option value="IoT (Internet of Things)">IoT (Internet
									of Things)</option>
								<option value="Apache Kafka">Apache Kafka</option>
								<option value="Elasticsearch">Elasticsearch</option>
								<option value="Unity">Unity</option>
								<option value="Game Development">Game Development</option>
								<option value="Vue.js">Vue.js</option>
								<option value="Angular">Angular</option>
								<option value="React Native">React Native</option>
								<option value="Flutter">Flutter</option>
								<option value="Node.js">Node.js</option>
								<option value="Express.js">Express.js</option>
								<option value="Django">Django</option>
								<option value="Flask">Flask</option>
								<option value="Ruby on Rails">Ruby on Rails</option>
								<option value="Laravel">Laravel</option>
								<option value="TensorFlow">TensorFlow</option>
								<option value="PyTorch">PyTorch</option>
								<option value="Kubernetes">Kubernetes</option>
								<option value="Docker">Docker</option>
								<option value="Jenkins">Jenkins</option>
								<option value="AWS (Amazon Web Services)">AWS (Amazon
									Web Services)</option>
								<option value="Azure">Azure</option>
								<option value="Google Cloud">Google Cloud</option>
								<option value="DevOps">DevOps</option>
								<option value="Blockchain">Blockchain</option>
								<option value="Machine Learning">Machine Learning</option>
								<option value="Artificial Intelligence">Artificial
									Intelligence</option>
								<option value="Cybersecurity">Cybersecurity</option>
								<option
										value="CISSP (Certified Information Systems Security Professional)">CISSP
									(Certified Information Systems Security Professional)</option>
								<option value="CompTIA Security+">CompTIA Security+</option>
								<option value="Certified Ethical Hacker (CEH)">Certified
									Ethical Hacker (CEH)</option>
								<option value="Scrum">Scrum</option>
								<option value="Agile">Agile</option>
								<option value="Kanban">Kanban</option>
							</select>
							<div class="form-help">Hold Ctrl (Windows) or Cmd (Mac) to select more than one skill.</div>
						</div>

						<button type="submit" class="btn btn-submit">Publish job post</button>
					</form>
				</div>
			</div>
		</div>
	</div>
	</div>
</main>

<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.2/dist/js/bootstrap.bundle.min.js"
		integrity="sha384-C6RzsynM9kWDrMNeT87bh95OGNyZPhcTNXj1NW7RuBCsyN/o0jlpcV8Qyq46cDfL"
		crossorigin="anonymous"></script>
</body>
</html>
