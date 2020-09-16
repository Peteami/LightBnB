SELECT properties.*, avg(property_reviews.rating) AS average_rating
from properties
JOIN property_reviews ON property_id = properties.id
where city like '%ancouv%'
GROUP BY properties.id
HAVING avg(property_reviews.rating) >= 4
Order BY cost_per_night
LIMIT 10;

