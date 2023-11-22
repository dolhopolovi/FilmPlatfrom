<h1 align="center">
  DDD & CQRS in Symfony
</h1>

<p align="center">
  Example of a <strong>PHP application using Domain-Driven Design (DDD) and Command Query Responsibility Segregation
  (CQRS) principles</strong> keeping the code as simple as possible.
  <br />
  <br />
</p>

## 🚀 Environment Setup

### 🐳 Needed tools

1. [Install Docker](https://www.docker.com/get-started)
2. Clone this project: `git clone git@github.com:dolhopolovi/FilmPlatfrom.git`
3. Move to the project folder: `cd FilmPlatform`

### 🛠️ Environment configuration

1. Create a local environment file (`cp .env .env.local`) if you want to modify any parameter

### 🔥 Application execution

1. Install all the dependencies and bring up the project with Docker executing: `make build`
2. Then you'll have available application (API):
    1. API doc: http://localhost:80/api/doc

### ✅ Tests execution

1. Install the dependencies and bring up the project with Docker if you haven't done it previously: `make build`
2. Execute PHPUnit tests: `make test`