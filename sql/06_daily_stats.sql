SELECT 
    DATE(booking_date) AS booking_day,
    COUNT(*) AS total_bookings
FROM bookings
GROUP BY booking_day
ORDER BY booking_day DESC;