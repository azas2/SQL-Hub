SELECT 
    X AS x, 
    Y AS y, 
    Z AS z,
    CASE 
        WHEN (Z < Y + X) AND (Y < Z + X) AND (X < Z + Y) THEN 'Yes'
        ELSE 'No'
    END AS triangle
FROM Triangle;
