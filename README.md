# Job App

A simple full-stack job-posting web application where users can publish job opportunities and browse all available roles.

## Features

- View all available job posts in a responsive card layout.
- Post a new job with a role, description, required experience, and multiple technical skills.
- Persist job posts in a PostgreSQL database.
- Load starter data automatically when the application starts.
- Display a confirmation page after successfully publishing a job post.
- Keep the code organized using Controller, Service, Repository, and Model layers.

## Tech Stack

- Java
- Spring Boot and Spring MVC
- JSP and JSTL
- JdbcTemplate
- PostgreSQL
- HTML, CSS, and Bootstrap 5
- Maven

## Project Structure

```text
src/main
├── java/com/learn/JobApp
│   ├── controller/     # Handles HTTP requests
│   ├── service/        # Contains application logic
│   ├── repository/     # Reads and writes job data with JdbcTemplate
│   └── model/          # JobPost model
├── resources
│   ├── application.properties
│   ├── schema.sql      # Creates the job_post table
│   └── data.sql        # Adds starter job posts
└── webapp
    ├── css/            # Shared and page-specific styles
    └── views/          # JSP pages
```

## Run Locally

### 1. Prerequisites

- JDK version configured in `pom.xml`
- PostgreSQL
- IntelliJ IDEA or Maven

### 2. Create the database

Create a PostgreSQL database called `jobapp`:

```sql
CREATE DATABASE jobapp;
```

The application runs `schema.sql` and `data.sql` on startup. The first file creates the table, while the second provides four sample job posts.

### 3. Configure the database connection

The project intentionally does **not** store a database password in GitHub. In IntelliJ IDEA, open:

```text
Run → Edit Configurations → JobApp
```

Add this environment variable:

```text
DB_PASSWORD=your_postgresql_password
```

### 4. Start the application

Run `JobAppApplication` from IntelliJ IDEA, then open:

```text
http://localhost:8080/
```

Use **View All Jobs** to browse saved posts or **Post a Job** to create one.

## Pages

| Page | Purpose |
| --- | --- |
| Home | Entry page with navigation to the main actions. |
| View All Jobs | Shows all jobs stored in PostgreSQL. |
| Post a Job | Form for publishing a new job post. |
| Success | Confirms that the submitted job was saved. |
