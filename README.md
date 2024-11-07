
# Employee Management REST API

A simple REST API built with Spring Boot for managing employee data, supporting CRUD operations.

## Features

- Add a new employee
- View all employees or by ID
- Update employee details
- Delete an employee

## Technologies

- Java, Spring Boot, Spring Data JPA, H2 Database (in-memory), Maven, Docker

## Setup

1. **Clone** the repository:
   ```bash
   git clone https://github.com/YahyaMajd/Java-REST-API.git
   cd Java-REST-API
   ```

2. **Build and Run Locally**:
   ```bash
   ./mvnw clean install
   ./mvnw spring-boot:run
   ```
   Runs at `http://localhost:8080`.

## Using Docker

You can also run this application in a Docker container.

### Build the Docker Image

In the project’s root directory, where the Dockerfile is located, build the Docker image:

```bash
docker build -t employee-management-api .
```

### Run the Docker Container

After building the image, start a Docker container, mapping port 8080 of the container to port 8080 on your local machine:

```bash
docker run -p 8080:8080 employee-management-api
```

The application should now be accessible at `http://localhost:8080`.

### Stop the Container

To stop the container, first find the container ID:

```bash
docker ps
```

Then stop it with:

```bash
docker stop <container_id>
```

### Docker Desktop

If you’re using Docker Desktop, you can manage the container from the **Containers / Apps** tab, where you can start, stop, and view logs for the container.

## API Endpoints

- **POST** `/api/employees` - Add a new employee
- **GET** `/api/employees` - Retrieve all employees
- **GET** `/api/employees/{id}` - Retrieve an employee by ID
- **PUT** `/api/employees/{id}` - Update employee details
- **DELETE** `/api/employees/{id}` - Delete an employee

## Example

**Add Employee**:
```bash
curl -X POST http://localhost:8080/api/employees -H "Content-Type: application/json" -d '{"name": "John Doe", "role": "Developer"}'
```

## License

Licensed under the MIT License.
