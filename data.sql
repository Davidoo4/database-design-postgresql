-- Insertar datos en la tabla clients
INSERT INTO clients (client_name, industry, contact_info)
VALUES
    ('John Doe', 'Technology', 'john.doe@example.com'),
    ('Jane Smith', 'Finance', 'jane.smith@example.com'),
    ('Michael Brown', 'Retail', 'michael.brown@example.com'),
    ('Sarah Davis', 'Healthcare', 'sarah.davis@example.com'),
    ('Emily Wilson', 'Education', 'emily.wilson@example.com'),
    ('Chris Johnson', 'Construction', 'chris.johnson@example.com'),
    ('Anna Lee', 'Consulting', 'anna.lee@example.com'),
    ('Robert Miller', 'Automotive', 'robert.miller@example.com'),
    ('Sophia White', 'Entertainment', 'sophia.white@example.com'),
    ('David Hall', 'Hospitality', 'david.hall@example.com');

-- Insertar datos en la tabla interactions
INSERT INTO interactions (client_id, date, interaction_type)
VALUES
    (1, '2023-11-01', 'Email'),
    (1, '2023-11-05', 'Phone Call'),
    (2, '2023-11-03', 'Meeting'),
    (3, '2023-11-10', 'Email'),
    (3, '2023-11-15', 'Web Chat'),
    (4, '2023-11-12', 'Email'),
    (5, '2023-11-20', 'Phone Call'),
    (6, '2023-11-25', 'Meeting'),
    (7, '2023-11-28', 'Web Chat'),
    (8, '2023-12-01', 'Phone Call'),
    (9, '2023-12-05', 'Email'),
    (10, '2023-12-07', 'Meeting'),
    (2, '2023-12-09', 'Web Chat'),
    (3, '2023-12-10', 'Email'),
    (4, '2023-12-12', 'Phone Call'),
    (5, '2023-12-13', 'Meeting'),
    (6, '2023-12-15', 'Web Chat'),
    (7, '2023-12-18', 'Phone Call'),
    (8, '2023-12-20', 'Email'),
    (9, '2023-12-22', 'Meeting'),
    (10, '2023-12-24', 'Web Chat');

-- Insertar datos en la tabla sales
INSERT INTO sales (client_id, sale_amount, sale_date)
VALUES
    (1, 500.00, '2023-12-01'),
    (2, 750.00, '2023-12-05'),
    (3, 300.00, '2023-12-10'),
    (4, 1000.00, '2023-12-15'),
    (5, 250.00, '2023-12-20'),
    (6, 400.00, '2023-12-22'),
    (7, 150.00, '2023-12-25'),
    (8, 800.00, '2023-12-26'),
    (9, 350.00, '2023-12-28'),
    (10, 200.00, '2023-12-30'),
    (1, 600.00, '2024-01-01'),
    (2, 900.00, '2024-01-02'),
    (3, 450.00, '2024-01-03'),
    (4, 1200.00, '2024-01-04'),
    (5, 700.00, '2024-01-05');
