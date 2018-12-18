select count(b.Branch_ID) , reservation_id 
from Reservation  r, schedule s, line l, lines_Branches lb , Branches b
where r.schedule_id= s.schedule_id and s.schedule_id= l.schedule_id
and l.Line_ID=lb.line_id and lb.Branch_id=b.Branch_ID 
group by (reservation_id) ;


select count(line_id) , c.customer_id 
from customer c, Reservation r,schedule s, line l
where c.customer_id=r.customer_id and s.schedule_id = r.schedule_id
and s.schedule_id= l.schedule_id
group by (c.customer_id);


select Bus_capacity , Bus_license
from Buses
where Bus_brand> '6200' ;
