
# Employee Management REST API

A simple REST API built with Spring Boot for managing employee data, supporting CRUD operations.

## Features

- Add a new employee
- View all employees or by ID
- Update employee details
- Delete an employee

## Technologies

- Java, Spring Boot, Spring Data JPA, H2 Database (in-memory), Maven

## Setup

1. **Clone** the repository:
   ```bash
   git clone https://github.com/YahyaMajd/Java-REST-API.git
   cd Java-REST-API
   ```

2. **Build and Run**:
   ```bash
   ./mvnw clean install
   ./mvnw spring-boot:run
   ```

   Runs at `http://localhost:8080`.

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
