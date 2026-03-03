SELECT id, name, email, phone, booking_date, status
FROM bookings
WHERE email = 'ivan@example.com'
ORDER BY booking_date DESC;