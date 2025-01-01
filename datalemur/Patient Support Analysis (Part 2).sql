select sum(
case WHEN call_category='n/a'or call_category= null  THEN 1
    else 0 
    end )
from callers 
    
    
