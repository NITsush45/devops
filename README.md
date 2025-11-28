# MEAN Stack CRUD Application

A full-stack CRUD application built with the MEAN stack (MongoDB, Express.js, Angular 15, and Node.js) for managing tutorials. The application is containerized using Docker for easy deployment.

## Features

- **Create, Read, Update, Delete (CRUD)** tutorials
- **Search tutorials** by title
- **RESTful API** with Node.js and Express
- **Angular 15** frontend with HTTPClient
- **MongoDB** database
- **Docker containerization** for easy deployment

## Tutorial Structure

Each tutorial contains:
- ID (auto-generated)
- Title
- Description
- Published status

## Quick Start with Docker (Recommended)

### Prerequisites
- Docker
- Docker Compose

### Deployment

**Start the application:**
   ```bash
   docker compose up -d

   Access the application:

Frontend: http://localhost

Backend API: http://localhost:3002

Check running services:

bash
docker compose ps
Stop the application:

bash
docker compose down
Manual Setup (Development)
Backend Setup (Node.js Server)
Navigate to backend directory:

bash
cd backend
Install dependencies:

bash
npm install
Configure MongoDB:
Update the database configuration in app/config/db.config.js

Start the server:

bash
node server.js
Server runs on http://localhost:3000

Frontend Setup (Angular Client)
Navigate to frontend directory:

bash
cd frontend
Install dependencies:

bash
npm install
Configure API endpoint:
Update src/app/services/tutorial.service.ts to adjust how the frontend interacts with the backend

Start the Angular development server:

bash
ng serve --port 8081
Application runs on http://localhost:8081
