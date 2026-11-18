# Job App frontend

The frontend is a standalone project in this folder. It uses Node.js built-in modules only.

## Run

1. Start the Spring Boot backend from the project root on `http://localhost:8080` and make sure PostgreSQL is running.
2. In this folder, run `npm start` (Node.js 18 or newer).
3. Open `http://localhost:3000`.

The frontend sends requests to the backend REST API at `http://localhost:8080`. The backend allows this local frontend origin through CORS. To use another backend address, update `API_BASE` in `js/config.js`.
