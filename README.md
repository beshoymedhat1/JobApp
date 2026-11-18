# Job App

A full-stack job posting app with a Spring Boot REST API and a separate frontend.

## Features

- Browse all job posts and search by job title or description.
- Add, edit, and delete job posts.
- Store each post's title, description, experience requirement, and technology stack in PostgreSQL.
- Run the frontend and backend as separate applications.

## Project layout

```text
.
├── frontend/                 # Standalone website, served on port 3000
├── src/main/java/            # Spring Boot REST API
├── src/main/resources/       # Backend configuration
├── pom.xml
└── README.md
```

## Requirements

- JDK 26 (the version configured in `pom.xml`)
- PostgreSQL
- Node.js 18 or newer

## Run locally

### 1. Configure PostgreSQL

Create a PostgreSQL database, for example `jobapp`, and set the connection environment variables in PowerShell before starting the backend:

```powershell
$env:DB_URL = "jdbc:postgresql://localhost:5432/jobapp"
$env:DB_USERNAME = "postgres"
$env:DB_PASSWORD = "your-postgresql-password"
```

The current defaults are in `src/main/resources/application.properties`. Do not put a real database password in a committed file.

### 2. Start the backend

From the repository root:

```powershell
.\mvnw.cmd spring-boot:run
```

The API listens on `http://localhost:8080` by default. Keep this terminal open.

### 3. Start the frontend

Open a second PowerShell terminal:

```powershell
cd frontend
npm.cmd start
```

Then visit `http://localhost:3000`. The frontend uses Node's built-in HTTP server and does not need `npm install`.

The frontend API address is configured in `frontend/js/config.js`. CORS on the backend currently allows `http://localhost:3000`.

## API endpoints

| Method | Endpoint | Purpose |
| --- | --- | --- |
| `GET` | `/jobPosts` | List all job posts |
| `GET` | `/jobPosts/keyword/{keyword}` | Search by title or description |
| `GET` | `/jobPost/{postId}` | Get one job post |
| `POST` | `/jobPost` | Create a job post |
| `PUT` | `/jobPost` | Update a job post |
| `DELETE` | `/jobPost/{postId}` | Delete a job post |

## Configuration notes

- The backend connects to PostgreSQL using `DB_URL`, `DB_USERNAME`, and `DB_PASSWORD`.
- Hibernate schema updates are enabled in `application.properties`.
- If the frontend or API is hosted on another address, update the API base URL and the backend CORS origin to match.
