# Cloud Native Platform

DevOps portfolio project with Docker, CI/CD, Kubernetes and GitOps.

## Current Features
- FastAPI service
- Dockerized
- GitHub Actions CI
- GHCR image publishing

## Run Locally

```bash
docker build -t api .
docker run -p 8000:8000 api
