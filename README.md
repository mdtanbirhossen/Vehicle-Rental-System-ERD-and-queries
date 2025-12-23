# Vehicle Rental System – Database Design & SQL Queries

## Project Explanation

The **Vehicle Rental System** is a relational database project created to demonstrate fundamental database design concepts and SQL querying skills.  
The system is designed to manage **users**, **vehicles**, and **bookings** while maintaining proper relationships and data integrity.

## Database Overview (see ERD here: [Vehicle Rental System ERD](https://drawsql.app/teams/techz-it/diagrams/vehicle-rental-system))

The system consists of the following core tables:

### Users
Stores information about system users, including customers and administrators.  
Each user has a unique email address and a defined role.

### Vehicles
Stores information about rental vehicles such as name, type, model, registration number, rental price per day, and availability status.

### Bookings
Stores booking records linking users and vehicles, including rental dates, booking status, and total cost.

Relationships:
- One user can create multiple bookings
- One vehicle can be booked multiple times
- Each booking connects exactly one user and one vehicle

---

## SQL Queries (See Queries: [queries.sql](https://github.com/mdtanbirhossen/Vehicle-Rental-System-ERD-and-queries/blob/main/queries.sql))

All required SQL queries are written and solved in the **`queries.sql`** file.

The file includes solutions for:
- Retrieving booking details using `INNER JOIN`
- Finding vehicles that have never been booked using `NOT EXISTS`
- Filtering available vehicles by type using `WHERE`
- Counting total bookings per vehicle using `GROUP BY` and `HAVING`

Each query is written based on the designed schema and matches the expected outputs provided in the assignment.
