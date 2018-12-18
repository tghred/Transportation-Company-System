alter table special_order add  payment_method_id int;
alter table special_order add transaction_id  int ;

alter table special_order add CONSTRAINT fk_special_order_payment_method 
FOREIGN KEY ( payment_method_id ) REFERENCES payment_method( pay_method_id );
 
alter table special_order add CONSTRAINT fk_special_order_transaction
FOREIGN KEY ( transaction_id ) REFERENCES transactions( transaction_id );

alter table special_order drop column  starting_point ;

alter table special_order drop column  Ending_point ;

alter table special_order add starting_point_Longitude  int ;

alter table special_order add Starting_Point_Latitude int ; 
 
 alter table special_order add Ending_point_Longitude int ; 

  alter table special_order add  Ending_Point_Latitude int ; 

  alter table branches add name varchar(10);

  alter table lines_branches add direction varchar(30) check (direction in('from' , 'to'));

  alter table branches drop column name ;
alter table branches add name varchar(30);
  
  alter table drivers_rating add rating int ;

