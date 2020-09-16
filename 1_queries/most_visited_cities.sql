select city, count(reservations.id) AS total_reservations
from properties
JOIN reservations ON properties.id = property_id
GROUP BY properties.city
ORDER BY total_reservations DESC;

