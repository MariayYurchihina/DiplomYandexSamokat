SELECT c.login AS courier_login, COUNT(o.id) AS delivery_count
 FROM "Orders"o
 JOIN "Couriers" c ON o."courierId" = c.id
 WHERE o."inDelivery" = true
 GROUP BY c.login;


SELECT track,
CASE
WHEN finished = true THEN 2
WHEN cancelled = true THEN -1
WHEN "inDelivery" = true THEN 1
ELSE 0
END AS status
FROM "Orders";