USE sakila;

SELECT 
	cus.customer_id,
    cus.first_name AS nome,
    cus.last_name AS sobrenome,
    SUM(amount) AS Total
    
FROM payment AS pay
JOIN customer AS cus USING (customer_id) -- outra opção para usar no lugar do ON

GROUP BY customer_id -- agrupar por
ORDER BY Total DESC -- ordenar de forma descendente
	
