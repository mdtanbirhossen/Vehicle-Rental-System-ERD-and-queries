-- Vehicle Rental System 
-- ---------------------------------------------------------
-- Query 1: JOIN
-- Requirement: Retrieve booking information along with Customer name and Vehicle name.
-- ---------------------------------------------------------

SELECT
    b.booking_id,
    u.name AS customer_name,
    v.name AS vehicle_name,
    b.start_date,
    b.end_date,
    b.status,
    b.total_cost
FROM bookings b
INNER JOIN users u ON b.user_id = u.user_id
INNER JOIN vehicles v ON b.vehicle_id = v.vehicle_id;


-- ---------------------------------------------------------
-- Query 2: EXISTS
-- Requirement: Find all vehicles that have never been booked.
-- ---------------------------------------------------------

SELECT * FROM Vehicles v
WHERE NOT EXISTS (
    SELECT 1 
    FROM Bookings b 
    WHERE b.vehicle_id = v.vehicle_id
);


-- ---------------------------------------------------------
-- Query 3: WHERE
-- Requirement: Retrieve all available vehicles of a specific 
-- type (e.g., 'car').
-- ---------------------------------------------------------

SELECT * FROM Vehicles
WHERE status = 'available' 
  AND type = 'car';


-- ---------------------------------------------------------
-- Query 4: GROUP BY and HAVING
-- Requirement: Find the total number of bookings for each vehicle and display only those vehicles that have more than 2 bookings.
-- ---------------------------------------------------------

SELECT 
    v.name vehicle_name, 
    COUNT(b.booking_id) total_bookings
FROM Vehicles v
JOIN Bookings b ON v.vehicle_id = b.vehicle_id
GROUP BY v.name
HAVING COUNT(b.booking_id) > 2;
