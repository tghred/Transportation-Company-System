INSERT INTO customer(customer_id, Cust_first_name, cust_last_name, phone_number, address, social_state, Email, Birthdate) 
             VALUES (1,'mohamed','alaswad','0128764321','manshiya faisal giza 18','single','first@gmail.com','1997-09-11');

INSERT INTO customer(customer_id, Cust_first_name, cust_last_name, phone_number, address, social_state, Email, Birthdate) 
             VALUES (2,'rody','medhat','01286452060','8 saad bin ab wakkas , ','single','second@gmail.com','1997-05-01');

INSERT INTO customer(customer_id, Cust_first_name, cust_last_name, phone_number, address, social_state, Email, Birthdate) 
              VALUES (3,'kamal','ashraf','0129958425','8 faisal giza , ','single','third@gmail.com','1997-07-04');

INSERT INTO customer(customer_id, Cust_first_name, cust_last_name, phone_number, address, social_state, Email, Birthdate)
                  VALUES (4,'sara','tahar','011250445620','10 helowan , ','single','fourth@gmail.com','1998-02-08');

INSERT INTO customer(customer_id, Cust_first_name, cust_last_name, phone_number, address, social_state, Email, Birthdate) 
              VALUES (5,'mohrael','wadid','01289357249','9649 el hadba el 3alia el mokatam , ','single','fivth@gmail.com','1997-10-22');

INSERT INTO customer(customer_id, Cust_first_name, cust_last_name, phone_number, address, social_state, Email, Birthdate)
               VALUES (6,'taghread','salah','0118965410','11 helowan el gdida , ','single','sixth@gmail.com','1997-06-08');
           
INSERT INTO discount(Discount_id, Discount_value, Expire_date)
                 VALUES (1,'250','2019-01-09'); 

INSERT INTO discount(Discount_id, Discount_value, Expire_date)
              VALUES (2,'350','2019-01-01');

INSERT INTO discount(Discount_id, Discount_value, Expire_date) 
                VALUES (3,'500','2018-12-31');

INSERT INTO discount(Discount_id, Discount_value, Expire_date) 
                VALUES (4,'1000','2019-01-05');

INSERT INTO discount(Discount_id, Discount_value, Expire_date)
               VALUES (5,'1200','2019-01-10');

INSERT INTO ranks(Rank_id, rank_name, level_limit, customer_id)
               VALUES (1,'first',3,2);

INSERT INTO ranks(Rank_id, rank_name, level_limit, customer_id) 
             VALUES (2,'secound',9,4);

INSERT INTO ranks(Rank_id, rank_name, level_limit, customer_id)
              VALUES (3,'third',20,5);

INSERT INTO ranks(Rank_id, rank_name, level_limit, customer_id)
              VALUES (4,'fourth',30,3);

INSERT INTO ranks(Rank_id, rank_name, level_limit, customer_id)
               VALUES (5,'VIP',50,1);

INSERT INTO discount_ranks(Rank_id, Discount_id) 
              VALUES (1,5);

INSERT INTO discount_ranks(Rank_id, Discount_id) 
              VALUES (2,4);

INSERT INTO discount_ranks(Rank_id, Discount_id) 
              VALUES (3,3);

INSERT INTO discount_ranks(Rank_id, Discount_id) 
                VALUES (4,2);

INSERT INTO discount_ranks (Rank_id, Discount_id)
              VALUES (5,1); 

INSERT INTO Payment_Method
VALUES (1, 'Cash', 'All is done' );

INSERT INTO Payment_Method
VALUES (2, 'Online Payment', 'Visa' );

INSERT INTO Payment_Method
VALUES (3, 'Online Payment', 'MasterCard' );

INSERT INTO Payment_Method
VALUES (4, 'Online Payment', 'MasterCard' );

INSERT INTO Payment_Method
VALUES (5, 'Cash', 'The half of price' );

INSERT INTO buses values
( 1 , 'Mercedes' , '6600' , 49 , 9876849 , '2020-9-5');

INSERT INTO buses values 
( 2 , 'Mercedes' , '6700' , 50 , 9878549 , '2021-4-25');

INSERT INTO buses values
( 3 , 'Mercedes' , '6800' , 54 , 9879549 , '2019-3-15');

INSERT INTO buses values
( 4 , 'Mercedes' , '6900' , 55 , 9871549 , '2020-2-10');

INSERT INTO buses values
( 5 , 'Mercedes' , '6200' , 40 , 7576549, '2021-1-30');

INSERT INTO Feedback values ( 1 , 'Good Experience' , 1 );
INSERT INTO Feedback values( 2 , 'highly recommended' , 2 );
INSERT INTO Feedback values( 3 , 'i like it' , 3 );
INSERT INTO Feedback values( 4 , 'comfort experience' , 4 );
INSERT INTO Feedback values( 5 , 'excited to try it again' , 5 );

INSERT INTO Price_plane
VALUES (1, 500, 'C',3 );

INSERT INTO Price_plane
VALUES (2, 900, 'B',5 );

INSERT INTO Price_plane
VALUES (3, 1000, 'B',4);

INSERT INTO Price_plane
VALUES (4, 1200, 'B',2 );

INSERT INTO Price_plane
VALUES (6, 1700, 'A',1 );

INSERT INTO Branches
VALUES (1,457896 ,895563 ,'Abdelrahman st-Masr El Gdeda');

INSERT INTO Branches
VALUES (2,458965 ,7562385, 'Heder st-Helwan');

INSERT INTO Branches
VALUES (3, 879652 ,4136595,'Amr Fwzy st-Naser city');

INSERT INTO Branches
VALUES (4, 9865321 ,7485123,'El Gamaa st-El Mokattam');

INSERT INTO Branches
VALUES (5, 639567 ,1369789, 'Shaban st-Embaba');

INSERT INTO transactions (Transaction_id, type, Value, Description) VALUES (1,'Outcome',5000,'Payroll 1');
INSERT INTO transactions (Transaction_id, type, Value, Description) VALUES (2,'Outcome',5000,'Payroll 2');
INSERT INTO transactions (Transaction_id, type, Value, Description) VALUES (3,'Outcome',6000,'Payroll 3');
INSERT INTO transactions (Transaction_id, type, Value, Description) VALUES (4,'Outcome',5000,'Payroll 4');
INSERT INTO transactions (Transaction_id, type, Value, Description) VALUES (5,'Outcome',5000,'Payroll 5');
INSERT INTO transactions (Transaction_id, type, Value, Description) VALUES (6,'Outcome',6000,'Payroll 6');
INSERT INTO transactions (Transaction_id, type, Value, Description) VALUES (7,'Outcome',5000,'Payroll 7');
INSERT INTO transactions (Transaction_id, type, Value, Description) VALUES (8,'Outcome',5000,'Payroll 8');
INSERT INTO transactions (Transaction_id, type, Value, Description) VALUES (9,'Outcome',6000,'Payroll 9');
INSERT INTO transactions (Transaction_id, type, Value, Description) VALUES (10,'Outcome',5000,'Payroll 10');
INSERT INTO transactions (Transaction_id, type, Value, Description) VALUES (11,'Outcome',200,'bus_gas 1');
INSERT INTO transactions (Transaction_id, type, Value, Description) VALUES (12,'Outcome',300,'bus_gas 2');
INSERT INTO transactions (Transaction_id, type, Value, Description) VALUES (13,'income',150,'Reservation 1');
INSERT INTO transactions (Transaction_id, type, Value, Description) VALUES (14,'income',250,'Reservation 2');
INSERT INTO transactions (Transaction_id, type, Value, Description) VALUES (15,'income',150,'Reservation 3');
INSERT INTO transactions (Transaction_id, type, Value, Description) VALUES (16,'income',450,'Reservation 4');


INSERT INTO payroll(pay_id, pay_amount, Transaction_id) VALUES (1,5000,1);
INSERT INTO payroll(pay_id, pay_amount, Transaction_id) VALUES (2,5000,2);
INSERT INTO payroll(pay_id, pay_amount, Transaction_id) VALUES (3,6000,3);
INSERT INTO payroll(pay_id, pay_amount, Transaction_id) VALUES (4,5000,4);
INSERT INTO payroll(pay_id, pay_amount, Transaction_id) VALUES (5,5000,5);
INSERT INTO payroll(pay_id, pay_amount, Transaction_id) VALUES (6,6000,6);
INSERT INTO payroll(pay_id, pay_amount, Transaction_id) VALUES (7,5000,7);



INSERT INTO medical_care (Medical_id, balance, Transaction_id, Insurance_standard_id) VALUES (1,3000,2,1);
INSERT INTO medical_care (Medical_id, balance, Transaction_id, Insurance_standard_id) VALUES (2,2000,5,2);
INSERT INTO medical_care (Medical_id, balance, Transaction_id, Insurance_standard_id) VALUES (3,1500,7,3);
INSERT INTO medical_care (Medical_id, balance, Transaction_id, Insurance_standard_id) VALUES (4,1200,6,4);
INSERT INTO medical_care (Medical_id, balance, Transaction_id, Insurance_standard_id) VALUES (5,1000,1,5);

INSERT INTO payroll (pay_id, pay_amount, Transaction_id) VALUES (8,5000,8);
INSERT INTO payroll (pay_id, pay_amount, Transaction_id) VALUES (9,6000,9);
INSERT INTO payroll (pay_id, pay_amount, Transaction_id) VALUES (10,5000,10);


INSERT INTO lines_branches (line_id, Branch_id, Direction) VALUES (1,1,'From');
INSERT INTO lines_branches (line_id, Branch_id, Direction) VALUES (1,1,'To');
INSERT INTO lines_branches (line_id, Branch_id, Direction) VALUES (2,2,'From');
INSERT INTO lines_branches (line_id, Branch_id, Direction) VALUES (2,2,'To');
INSERT INTO lines_branches (line_id, Branch_id, Direction) VALUES (3,3,'From');
INSERT INTO lines_branches (line_id, Branch_id, Direction) VALUES (3,3,'To');

INSERT INTO penalties (penalty_id, penalty_amount, penalty_date, pay_id, penalty_description) VALUES (1,250,'2018-12-10',1,'Arrived at work 1 second late');
INSERT INTO penalties (penalty_id, penalty_amount, penalty_date, pay_id, penalty_description) VALUES (2,90,'2018-12-11',2,'Playing PUBG during work hours');
INSERT INTO penalties (penalty_id, penalty_amount, penalty_date, pay_id, penalty_description) VALUES (3,2500,'2018-12-11',3,'1 task not completed');
INSERT INTO penalties (penalty_id, penalty_amount, penalty_date, pay_id, penalty_description) VALUES (4,10000,'2018-12-12',5,'Flirting');
INSERT INTO penalties (penalty_id, penalty_amount, penalty_date, pay_id, penalty_description) VALUES (5,250,'2018-12-12',4,'Playing Solitaire');

INSERT INTO bonuses(bonus_id, bonus_amount, bonus_date, pay_id, bouns_description) VALUES (1,500,'2018-12-10',6,'perfect work in Early tim');
INSERT INTO bonuses(bonus_id, bonus_amount, bonus_date, pay_id, bouns_description) VALUES (2,600,'2018-12-10',7,'OverTime Shift');
INSERT INTO bonuses(bonus_id, bonus_amount, bonus_date, pay_id, bouns_description) VALUES (3,200000,'2018-12-11',8,'Saved the world');
INSERT INTO bonuses(bonus_id, bonus_amount, bonus_date, pay_id, bouns_description) VALUES (4,1000,'2018-12-11',9,'employee of the month');
INSERT INTO bonuses(bonus_id, bonus_amount, bonus_date, pay_id, bouns_description) VALUES (5,2500,'2018-12-12',10,'Ramadan Bonus');


INSERT INTO line (Line_ID, Estimated_time, Distance, price_plane_id) VALUES (1,'2019-1-1 1:11:12',250,1);
INSERT INTO line (Line_ID, Estimated_time, Distance, price_plane_id) VALUES (2,'2019-1-3 10:11:12',250,2);
INSERT INTO line (Line_ID, Estimated_time, Distance, price_plane_id) VALUES (3,'2019-1-4 15:11:12',300,3);
INSERT INTO line (Line_ID, Estimated_time, Distance, price_plane_id) VALUES (4,'2019-1-2 9:11:12',600,4);
INSERT INTO line (Line_ID, Estimated_time, Distance, price_plane_id) VALUES (5,'2019-1-6 5:11:12',450,6);

INSERT INTO insurance_standard (Insurance_standard_id, Position, Insurance_amount) VALUES (1,'Chairman',3000);
INSERT INTO insurance_standard (Insurance_standard_id, Position, Insurance_amount) VALUES (2,'Chairman Assistant',2000);
INSERT INTO insurance_standard (Insurance_standard_id, Position, Insurance_amount) VALUES (3,'SuperVisor',1500);
INSERT INTO insurance_standard (Insurance_standard_id, Position, Insurance_amount) VALUES (4,'Head',1200);
INSERT INTO insurance_standard (Insurance_standard_id, Position, Insurance_amount) VALUES (5,'Accountant',1000);


insert into schedule ( schedule_id , date_time_start , date_time_end ,bus_id )
               values (1 , '2019-1-15 10:11:12'  , '2019-1-15 1:11:12' , 5  ) ; 


insert into schedule ( schedule_id , date_time_start , date_time_end ,bus_id)
               values (2 , '2018-12-13 10:11:12'  , '2018-12-13 8:10:12'  , 3) ; 


insert into schedule ( schedule_id , date_time_start , date_time_end ,bus_id)
               values (3 , '2018-12-15 5:11:12'  , '2018-12-15 9:11:12'  , 1) ; 

insert into schedule ( schedule_id , date_time_start , date_time_end , bus_id )
               values (4 , '2019-1-1 10:11:12' , '2019-12-13 3:11:12' , 2  ) ; 

insert into schedule ( schedule_id , date_time_start , date_time_end ,bus_id)
               values (5 , '2019-2-19 4:11:12' , '2019-12-13 10:11:12' , 4) ; 

 INSERT INTO  Buses_gas_money values(1,1);
INSERT INTO  Buses_gas_money values(2,2);
INSERT INTO Buses_gas_money values (3,3);
INSERT INTO Buses_gas_money values(4,4);
INSERT INTO Buses_gas_money values(5,5);

INSERT INTO penalties(penalty_id, penalty_amount, penalty_date, pay_id, penalty_description) 
VALUES (1,250,'2018-12-10',1,'Arrived at work 1 second late');


INSERT INTO penalties(penalty_id, penalty_amount, penalty_date, pay_id, penalty_description) 
VALUES (2,90,'2018-12-11',2,'Playing PUBG during work hours');


INSERT INTO penalties(penalty_id, penalty_amount, penalty_date, pay_id, penalty_description)
 VALUES (3,2500,'2018-12-11',3,'1 task not completed');


INSERT INTO penalties(penalty_id, penalty_amount, penalty_date, pay_id, penalty_description) 
VALUES (4,10000,'2018-12-12',5,'Flirting');


INSERT INTO penalties(penalty_id, penalty_amount, penalty_date, pay_id, penalty_description) 
VALUES (5,250,'2018-12-12',4,'Playing Solitaire');



INSERT INTO bonuses(bonus_id, bonus_amount, bonus_date, pay_id, bouns_description) 
VALUES (1,500,'2018-12-10',6,'perfect work in Early time');


INSERT INTO bonuses(bonus_id, bonus_amount, bonus_date, pay_id, bouns_description) 
VALUES (2,600,'2018-12-10',7,'OverTime Shift');


INSERT INTO bonuses(bonus_id, bonus_amount, bonus_date, pay_id, bouns_description) 
VALUES (3,200000,'2018-12-11',8,'Saved the world');


INSERT INTO bonuses(bonus_id, bonus_amount, bonus_date, pay_id, bouns_description) 
VALUES (4,1000,'2018-12-11',9,'employee of the month');


INSERT INTO bonuses(bonus_id, bonus_amount,bonus_date, pay_id, bouns_description) 
VALUES (5,2500,'2018-12-12',10,'Ramadan Bonus');


insert into drivers
 values ( 1 , 'hazem' , 'walied' ,' 0124558687' , 4 , '5-5-1980' , 'single' , 50014789 ,140006 ,5 ,1 );
 


insert into drivers
 values ( 2 , 'ziad' , 'ahmed' , '0154789630' , 10 , '1960-3-4' , 'married' , 1478009 ,582630 , 3 ,2) ;


insert into drivers
 values ( 3 , 'mohamed' , 'omar' ,'010458889' , 8 , '1973-10-25' , 'married' , 8527493 ,695008 , 1 ,4);

insert into drivers
 values ( 4 , 'hassan' , 'azzmy' ,'011478556' , 15 , '1966-7-23' , 'married' , 7844450 ,9534855 , 4 ,5);
 

insert into drivers
 values ( 5 , 'adam' , 'mahmoud' , '0154778963' , 2 , '1995-1-7' , 'single' , 4851130 ,8466901 , 2,3 );

 


insert into reservation (reservation_id , seat_no_booked , driver_id , schedule_id , payment_method_id , feedback_id , customer_id , transaction_id)
              values (1 , 1 , 5,3,1,4,2,3);


insert into reservation (reservation_id , seat_no_booked , driver_id , schedule_id , payment_method_id , feedback_id , customer_id , transaction_id)
              values (2 , 3 , 4,5,2,1,3,2);

insert into reservation (reservation_id , seat_no_booked , driver_id , schedule_id , payment_method_id , feedback_id , customer_id , transaction_id)
              values (3 , 2 , 3,2,5,3,5,1);


insert into reservation (reservation_id , seat_no_booked , driver_id , schedule_id , payment_method_id , feedback_id , customer_id , transaction_id)
              values (4 , 5 , 2,4,3,2,1,4);

insert into reservation (reservation_id , seat_no_booked , driver_id , schedule_id , payment_method_id , feedback_id , customer_id , transaction_id)
              values (5 , 1 , 1,1,4,5,4,5);


insert into drivers_rating values ( 1 , 5 , 3);


insert into drivers_rating values (2 , 3 , 4);


insert into drivers_rating values ( 3 , 1 , 5);


insert into drivers_rating values ( 4 , 2 , 1);


insert into drivers_rating values ( 5 , 4 , 2);

INSERT INTO SPECIAL_ORDER 
values( 1 , '6:30 ' , 200.5 , 1 , 1 , 5 , 1 ,3 ,1534567 , 173456, 987654 , 287654  );

INSERT INTO SPECIAL_ORDER 
values( 2 , '8:30 ' , 350.9 , 2 , 1 , 2 , 3 , 4, 1834567, 1234567, 7876543, 187654  );

INSERT INTO SPECIAL_ORDER 
values( 3 , '9:30 ' , 400.0 , 3,1 , 2 , 3 , 5 , 316345678 , 1334567, 587654 , 947654  );

INSERT INTO SPECIAL_ORDER 
values( 4 ,'3:30 ' , 150.78 , 4 , 1, 4 , 2 , 3 , 14345678 , 125456 , 4876543 , 937654 );

INSERT INTO SPECIAL_ORDER 
values( 5 ,'1:00' , 100 , 5 , 5 , 5 , 5 , 5 , 193456789 , 129456753, 38765432 , 99765495);



INSERT INTO Driver_Penalty_JN
VALUES (1, 3);

INSERT INTO Driver_Penalty_JN
VALUES (2, 4);

INSERT INTO Driver_Penalty_JN
VALUES (3, 2);

INSERT INTO Driver_Penalty_JN
VALUES (4, 5);

INSERT INTO Driver_Penalty_JN
VALUES (5, 1);


INSERT INTO Driver_Bonus_JN
VALUES (1, 4);

INSERT INTO Driver_Bonus_JN
VALUES (2, 3);

INSERT INTO Driver_Bonus_JN
VALUES (3, 5);

INSERT INTO Driver_Bonus_JN
VALUES (4, 1);

INSERT INTO Driver_Bonus_JN
VALUES (5, 2);



INSERT INTO actual_trip (Actual_Trip_ID, Reservation_ID, Actual_End_Time) VALUES (1,1,'2018-12-12 10:20:33');
INSERT INTO actual_trip (Actual_Trip_ID, Reservation_ID, Actual_End_Time) VALUES (2,2,'2018-12-12 10:22:33');
INSERT INTO actual_trip (Actual_Trip_ID, Reservation_ID, Actual_End_Time) VALUES (3,3,'2018-12-12 11:10:10');
INSERT INTO actual_trip (Actual_Trip_ID, Reservation_ID, Actual_End_Time) VALUES (4,4,'2018-12-12 11:25:45');
INSERT INTO actual_trip (Actual_Trip_ID, Reservation_ID, Actual_End_Time) VALUES (5,5,'2018-12-12 12:50:24');


INSERT INTO actual_special_trip (Actual_Special_Trip_ID, Special_Order_ID, Actual_Start_Time, Actual_Ending_Time) 
VALUES (1,1,'2018-12-12 7:22:12','2018-12-12 10:20:33');
INSERT INTO actual_special_trip (Actual_Special_Trip_ID, Special_Order_ID, Actual_Start_Time, Actual_Ending_Time) 
VALUES (2,2,'2018-12-12 8:22:35','2018-12-12 11:22:33');
INSERT INTO actual_special_trip (Actual_Special_Trip_ID, Special_Order_ID, Actual_Start_Time, Actual_Ending_Time) 
VALUES (3,3,'2018-12-12 9:11:42','2018-12-12 12:20:33');
INSERT INTO actual_special_trip (Actual_Special_Trip_ID, Special_Order_ID, Actual_Start_Time, Actual_Ending_Time) 
VALUES (4,4,'2018-12-12 9:27:23','2018-12-12 13:20:33');
INSERT INTO actual_special_trip (Actual_Special_Trip_ID, Special_Order_ID, Actual_Start_Time, Actual_Ending_Time) 
VALUES (5,5,'2018-12-12 10:24:44','2018-12-12 15:25:32');


INSERT INTO employees (Emp_id, emp_first_name, emp_last_name, phone_number, email, position, birthday, ssn, pay_id, medical_id) 
VALUES (1,'abdaltawab','abdalshakoor','0123456789','awalwahid@gmail.com','chairman','1970-1-1',00000000001,8,1);
INSERT INTO employees (Emp_id, emp_first_name, emp_last_name, phone_number, email, position, birthday, ssn, pay_id, medical_id) 
VALUES (2,'abdalshakoor','abdaltawab','0123456782','tanywahid@gmail.com','chairman assistant','1970-1-2',00000000002,2,2);
INSERT INTO employees (Emp_id, emp_first_name, emp_last_name, phone_number, email, position, birthday, ssn, pay_id, medical_id) 
VALUES (3,'abdaltawab','abdalkareem','0123456783','taletwahid@gmail.com','SuperVisor','1970-1-3',00000000003,10,3);
INSERT INTO employees (Emp_id, emp_first_name, emp_last_name, phone_number, email, position, birthday, ssn, pay_id, medical_id) 
VALUES (4,'abdalmoaty','Ismail','0123456784','rabe3wahid@gmail.com','Head','1970-1-4',00000000004,6,4);
INSERT INTO employees (Emp_id, emp_first_name, emp_last_name, phone_number, email, position, birthday, ssn, pay_id, medical_id) 
VALUES (5,'Mohamed','Moneir','0123456785','ala5rasalmotakallem@gmail.com','accountant','1970-1-5',00000000005,4,5);







