update customer set 
social_state = 'married'
where customer_id = 4 ;

update ranks set 
level_limit = 18
where Rank_id = 3 ;

update discount set 
Expire_date = '2022-5-13'
where Discount_id = 2 ;

update drivers set 
license_number = 3017854
where Driver_id= 5 ;

update schedule  set 
date_time_start = '2019-1-15 10:11:12' 
where  schedule_id = 5 ;


update reservation set 
seat_no_booked = 4
where reservation_id = 1 ;

delete from Transactions where transaction_id = 16 ;


update Drivers_Rating set 
rating= 3
where Rating_ID= 1 ;

update Drivers_Rating set 
rating= 5
where Rating_ID= 2 ;

update Drivers_Rating set 
rating= 4
where Rating_ID= 3 ;

update Drivers_Rating set 
rating= 5
where Rating_ID= 4;

update Drivers_Rating set 
rating= 1
where Rating_ID= 5;
