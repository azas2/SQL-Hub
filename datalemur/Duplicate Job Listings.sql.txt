SELECT COUNT(company_id	) as duplicate_companies 
FROM job_listings  
GROUP BY company_id
HAVING  COUNT(company_id)>2
LIMIT 1
