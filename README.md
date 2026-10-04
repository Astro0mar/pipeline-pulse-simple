# Pipeline Pulse Simple

A small Go + HTMX project built to learn CI/CD and GitHub Actions step by step.

The goal of this project is not to build a complex application. The main goal is to understand how a CI/CD pipeline works, starting from a simple application and gradually adding testing, linting, security scanning, containerization, and deployment.

## Tech Stack

- Go
- HTML
- HTMX
- CSS
- GitHub Actions

## Current Application Flow

```text
Browser
   ↓
Go Server
   ↓
HTML Page
```

When the user clicks the **Check Backend** button:

```text
HTMX
  ↓
GET /health
  ↓
Go health handler
  ↓
Backend is healthy ✅
```

## Project Structure

```text
pipeline-pulse-simple/
├── .github/
│   └── workflows/
│       └── ci.yml
├── main.go
├── main_test.go
├── go.mod
├── templates/
│   └── index.html
└── static/
    └── style.css
```

## Run the Application

From the project directory:

```bash
go run main.go
```

Then open:

```text
http://localhost:8081
```

## Run Tests

Run:

```bash
go test .
```

The current test checks the health endpoint and verifies that the backend returns the expected response.

## Build the Application

Run:

```bash
go build -o pipeline-pulse .
```

This creates a Go binary called:

```text
pipeline-pulse
```

## Current CI Pipeline

The GitHub Actions workflow currently runs when code is pushed to `main` or when a pull request targets `main`.

```text
Push / Pull Request
        ↓
GitHub Actions
        ↓
Ubuntu Runner
        ↓
Checkout Repository
        ↓
Setup Go
        ↓
Run Tests
        ↓
Build Application
        ↓
Success / Failure
```

## Learning Goals

This project will be expanded gradually to learn:

- GitHub Actions triggers
- Jobs and steps
- GitHub-hosted runners
- Go testing
- Linting
- Build automation
- Docker
- Trivy vulnerability scanning
- SonarQube
- Container registries
- RHACS
- Deployment

Each tool will be added only after the previous stage is working and understood.

## Project Goal

The final goal is to build and understand a complete DevSecOps pipeline:

```text
Code
 ↓
Lint
 ↓
Test
 ↓
Build
 ↓
SonarQube
 ↓
Docker Build
 ↓
Trivy Scan
 ↓
RHACS
 ↓
Deploy
```

The focus of this project is understanding what each stage does, why it exists, what causes it to fail, and how it connects to the next stage.