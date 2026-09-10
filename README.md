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

The default database URL and user are:

```properties
spring.datasource.url=jdbc:postgresql://localhost:5432/jobapp
spring.datasource.username=postgres
```

If your database URL or username is different, add these optional environment variables too:

```text
DB_URL=jdbc:postgresql://localhost:5432/jobapp
DB_USERNAME=postgres
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

## Notes

- `post_id` is currently entered manually and must be unique.
- The tech stack is stored as a comma-separated value and converted back to a list when jobs are displayed.
- Do not commit database passwords, `.idea`, or `target`; these are excluded by `.gitignore`.

## Future Improvements

- Generate job IDs automatically.
- Add validation and friendly error messages for duplicate job IDs.
- Add search, filtering, update, and delete functionality.
- Add automated tests.
- Deploy the application so it can be viewed online.

## Acknowledgements

The application logic, database integration, and Spring MVC structure were developed as a learning project. The HTML/CSS presentation was refined with assistance from ChatGPT.
