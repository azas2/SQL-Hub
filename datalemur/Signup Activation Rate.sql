SELECT
 round(
count(te.email_id)*1.0/ COUNT(distinct em.email_id) 
 ,2) as confirm_rate
 from emails as em
 left join texts as te
 ON em.email_id=te.email_id	
 AND te.signup_action = 'Confirmed';
 
