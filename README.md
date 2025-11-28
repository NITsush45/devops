
**Start the application:**
   ```bash
   docker compose up -d

   Access the application:

Frontend: http://localhost

Backend API: http://localhost:3002

Check running services:
docker compose ps

Stop the application:
docker compose down


Backend Setup (Node.js Server)
Navigate to backend directory:

cd backend
Install dependencies:

npm install
Configure MongoDB:
Update the database configuration in app/config/db.config.js

Start the server:

node server.js
Server runs on http://localhost:3000

Frontend Setup (Angular Client)
Navigate to frontend directory:

cd frontend
Install dependencies:

npm install
Configure API endpoint:
Update src/app/services/tutorial.service.ts to adjust how the frontend interacts with the backend

Start the Angular development server:
ng serve --port 8081
Application runs on http://localhost:8081