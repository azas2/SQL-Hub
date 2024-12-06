    SELECT  
        manufacturer,
        COUNT(drug) AS drug_count,
        SUM(cogs-total_sales) AS total_loss
        
    FROM 
        pharmacy_sales
    where total_sales-cogs <=0
    GROUP BY  
        manufacturer
    ORDER by drug_count desc,  total_loss DESC
