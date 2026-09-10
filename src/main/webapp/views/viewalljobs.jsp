<%@ page language="java" contentType="text/html; charset=UTF-8"
         pageEncoding="UTF-8" isELIgnored="false"%>

<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>

<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Explore Jobs | Job App</title>
    <link
            href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.2/dist/css/bootstrap.min.css"
            rel="stylesheet"
            integrity="sha384-T3c6CoIi6uLrA9TneNEoa7RxnatzjcDSCmG1MXxSR1GAsXEV/Dwwykc2MPK8M2HN"
            crossorigin="anonymous">
    <link rel="stylesheet" href="${pageContext.request.contextPath}/css/common.css">
    <link rel="stylesheet" href="${pageContext.request.contextPath}/css/jobs.css">
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
                <li class="nav-item"><a class="nav-link active" href="viewalljobs">All Jobs</a></li>
                <li class="nav-item"><a class="nav-link" href="addjob">Post a Job</a></li>
            </ul>
        </div>
    </div>
</nav>


<main class="page-shell">
    <div class="container">
        <div class="jobs-toolbar">
            <div class="page-heading mb-0">
                <div class="kicker">Open opportunities</div>
                <h1>Find your next role</h1>
                <p>Explore available positions and the technologies teams are looking for.</p>
            </div>
            <div class="job-count">${jobPosts.size()} jobs available</div>
        </div>

        <div class="row g-4">
            <c:forEach var="jobPost" items="${jobPosts}">
                <div class="col-md-6 col-lg-4">
                    <article class="job-card">
                        <div class="job-card-top">
                            <h2><c:out value="${jobPost.postProfile}"/></h2>
                            <span class="experience-badge">${jobPost.reqExperience} yrs exp.</span>
                        </div>
                        <p class="job-description"><c:out value="${jobPost.postDesc}"/></p>
                        <ul class="tech-list" aria-label="Required skills">
                            <c:forEach var="tech" items="${jobPost.postTechStack}">
                                <li><c:out value="${tech}"/></li>
                            </c:forEach>
                        </ul>
                    </article>
                </div>
            </c:forEach>
        </div>

        <c:if test="${empty jobPosts}">
            <div class="success-card">
                <div class="success-icon">⌕</div>
                <h1>No jobs yet</h1>
                <p>Be the first to add an opportunity to Job App.</p>
                <a class="btn btn-job" href="addjob">Post a job →</a>
            </div>
        </c:if>
    </div>
</main>

<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.2/dist/js/bootstrap.bundle.min.js"
        integrity="sha384-C6RzsynM9kWDrMNeT87bh95OGNyZPhcTNXj1NW7RuBCsyN/o0jlpcV8Qyq46cDfL"
        crossorigin="anonymous"></script>
</body>
</html>
