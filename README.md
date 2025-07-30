# Nuban-Generator
Spring Boot API for generating and validating Nigerian NUBAN accounts

# 🇳🇬 NUBAN API - Nigeria Uniform Bank Account Number Validator

A Spring Boot RESTful API to **generate**, **validate**, and **manage** Nigerian NUBAN (10-digit bank account) numbers, based on **CBN specifications**.

---

##  Features

-  Generate a valid NUBAN account number (check digit computed)
-  Validate an existing NUBAN with a known bank code
-  Retrieve account details (stored in memory)
-  Input validation with JSR-380 (`@NotNull`, `@Size`, etc.)
-  Clean REST design with proper HTTP status codes
-  Global exception handling via `@ControllerAdvice`
-  Swagger/OpenAPI UI docs
-  Docker & Postman-ready

---

##  Tech Stack

- Java 17+
- Spring Boot 3.x
- Spring Data JPA (H2 in-memory database)
- Spring Validation
- Springdoc OpenAPI (Swagger UI)
- Docker & Docker Compose

---

##  Running Locally

### Prerequisites

- JDK 17+
- Maven 3.x

### Build and Run


git clone https://github.com/your-username/nuban-api.git
cd nuban-api
mvn clean package
java -jar target/nuban-api-0.0.1-SNAPSHOT.jar

App will start at: http://localhost:8080

# Run with Docker
docker-compose up --build

# **API Endpoints**
TO CREATE NUBAN
POST http://localhost:8080/api/nuban/create
{
"bankCode": "011",  
"accountSerial": "123456789"
}

TO GET NUBAN
GET http://localhost:8080/api/nuban/1234567895

TO VALIDATE NUBAN
POST http://localhost:8080/api/nuban/validate
{
"bankCode": "011",  
"nuban": "1234567895"
}

# LIST OF BANK NUBAN CODES
Access Bank:044
Ecobank Nigeria:050
Fidelity Bank Nigeria:070
First Bank of Nigeria","code":"011" },
First City Monument Bank:214
Guaranty Trust Bank:058
Jaiz Bank:301
Stanbic IBTC Bank Nigeria Limited:221
Standard Chartered Bank:068
Sterling Bank:232
Union Bank of Nigeria:032
United Bank for Africa:033
Unity Bank Plc:215
Wema Bank:035
Zenith Bank:057

