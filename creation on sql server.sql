CREATE TABLE Branches ( 
	Branch_ID            int NOT NULL   ,
		Latitude             int NOT NULL   ,
	Longitude            int NOT NULL   ,
	CONSTRAINT Pk_Branches_Branch_ID PRIMARY KEY  ( Branch_ID )
 ) ;

CREATE TABLE Buses ( 
	Bus_id               int NOT NULL  ,
	Bus_brand            varchar(50)   NOT NULL ,
	Bus_Model            varchar(15) NOT NULL   ,
	Bus_capacity         int   NOT NULL ,
	Bus_license          int   NOT NULL UNIQUE ,
	license_exp_date     date   NOT NULL ,
	CONSTRAINT Pk_Buses_Bus_id PRIMARY KEY  ( Bus_id )
 ) ;

CREATE TABLE Discount ( 
	Discount_id          int NOT NULL   ,
	Discount_value       varchar(20)    ,
	Expire_date          date    ,
	CONSTRAINT Pk_Discount_Discount_id PRIMARY KEY  ( Discount_id )
 ) ;

CREATE TABLE Insurance_standard ( 
	Insurance_standard_id int NOT NULL   ,
	Position             varchar(50)    ,
	Insurance_amount     float    ,
	CONSTRAINT Pk_Inturance_standard_Insurance_standard_id PRIMARY KEY  ( Insurance_standard_id )
 ) ;

CREATE TABLE Payment_Method ( 
	pay_method_id        int NOT NULL   ,
	method_name          varchar(20)    ,
	payment_info         varchar(1000)    ,
	CONSTRAINT Pk_Payment_Method_pay_method_id PRIMARY KEY  ( pay_method_id )
 ) ;

CREATE TABLE Price_plane ( 
	Price_id             int NOT NULL   ,
	price                float    ,
	class                varchar(50)    ,
	bus_ID               int NOT NULL   ,
	CONSTRAINT Pk_Price_plane_Price_id PRIMARY KEY  ( Price_id ),
CONSTRAINT fk_price_plane_buses FOREIGN KEY ( bus_ID ) REFERENCES Buses( Bus_id )
 ) ;



CREATE TABLE Transactions ( 
	Transaction_id       int NOT NULL   ,
	type                 varchar(20) NOT NULL CHECK (type in ('income','outcome'))    ,
	Value               float   NOT NULL ,
	Description          varchar(1000)    ,
	CONSTRAINT Pk_Transactions_Transaction_id PRIMARY KEY  ( Transaction_id )
 ) ;

CREATE TABLE customer ( 
	customer_id          int NOT NULL   ,
	Cust_first_name      varchar(50)    ,
	cust_last_name       varchar(50)    ,
	phone_number         varchar(100)    ,
	address              varchar(100)    ,
	social_state         varchar(20)    ,
	Email                varchar(100)    ,
	Birthdate            date    ,
	CONSTRAINT Pk_customer_customer_id PRIMARY KEY  ( customer_id )
 ) ;

CREATE TABLE feedback ( 
	feedback_id          int NOT NULL   ,
	feedback_content     varchar(100)    ,
	customer_id          int    ,
	CONSTRAINT Pk_feedback_feedback_id PRIMARY KEY  ( feedback_id ),
CONSTRAINT fk_feedback_customer FOREIGN KEY ( customer_id ) REFERENCES customer( customer_id )
 ) ;



CREATE TABLE payRoll ( 
	pay_id               int NOT NULL   ,
	pay_amount           float    ,
	Transaction_id       int    ,
	CONSTRAINT Pk_payRoll_pay_id PRIMARY KEY  ( pay_id ),
CONSTRAINT fk_payroll_transactions FOREIGN KEY ( Transaction_id ) REFERENCES Transactions( Transaction_id )
 ) ;



CREATE TABLE penalties ( 
	penalty_id           int NOT NULL   ,
	penalty_amount       float    ,
	penalty_date         date    ,
	pay_id               int    ,
	penalty_description  varchar(1000)    ,
	CONSTRAINT Pk_penalties_penalty_id PRIMARY KEY  ( penalty_id ),
CONSTRAINT fk_penalties_payroll FOREIGN KEY ( pay_id ) REFERENCES payRoll( pay_id )
 ) ;


CREATE TABLE schedule ( 
	schedule_id          int NOT NULL   ,
	Date_time_start      datetime    ,
	Date_time_end        datetime    ,
	bus_id               int    ,
	CONSTRAINT Pk_schedule_schedule_id PRIMARY KEY  ( schedule_id ),
CONSTRAINT bus_id FOREIGN KEY ( bus_id ) REFERENCES Buses( Bus_id )
 ) ;


CREATE TABLE Buses_gas_money ( 
	Bus_id               int NOT NULL   ,
	Transaction_ID       int NOT NULL   ,
	CONSTRAINT Pk_Buses_Bus_id_0 PRIMARY KEY  ( Bus_id ) ,
       CONSTRAINT fk_buses_gas_money FOREIGN KEY ( Transaction_ID ) REFERENCES Transactions( Transaction_id ),
           CONSTRAINT fk_buses_gas_money_buses FOREIGN KEY ( Bus_id ) REFERENCES Buses( Bus_id )
 ) ;


CREATE TABLE Ranks ( 
	Rank_id              int NOT NULL   ,
	rank_name            varchar(50)    ,
	level_limit          int    ,
	customer_id          int    ,
	CONSTRAINT Pk_Ranks_Rank_id PRIMARY KEY  ( Rank_id ),
CONSTRAINT fk_ranks_customer FOREIGN KEY ( customer_id ) REFERENCES customer( customer_id )

 ) ;



CREATE TABLE line ( 
	Line_ID              int NOT NULL   ,
	Estimated_time       time    ,
	Distance             float    ,
	schedule_id          int    ,
	price_plane_id       int    ,
	CONSTRAINT Pk_lines_Line_ID PRIMARY KEY  ( Line_ID ),
CONSTRAINT fk_lines_schedule FOREIGN KEY ( schedule_id ) REFERENCES schedule( schedule_id ),
CONSTRAINT fk_lines_price_plane FOREIGN KEY ( price_plane_id ) REFERENCES Price_plane( Price_id )
 ) ;


CREATE TABLE lines_Branches ( 
	line_id              int NOT NULL   ,
	Branch_id            int NOT NULL   ,
	CONSTRAINT _1 PRIMARY KEY  ( line_id, Branch_id ),
	CONSTRAINT Idx_lines_Branches_Branches_id UNIQUE ( Branch_id ) ,
CONSTRAINT fk_lines_branches_lines FOREIGN KEY ( line_id ) REFERENCES line( Line_ID ),
CONSTRAINT fk_lines_branches_branches FOREIGN KEY ( Branch_id ) REFERENCES Branches( Branch_ID )
 ) ;



CREATE TABLE Discount_ranks ( 
	Rank_id              int NOT NULL   ,
	Discount_id          int NOT NULL   ,
	CONSTRAINT _2 PRIMARY KEY  ( Rank_id, Discount_id ) ,
    CONSTRAINT fk_discount_ranks_discount FOREIGN KEY ( Discount_id ) REFERENCES Discount( Discount_id ),
CONSTRAINT fk_discount_ranks_ranks FOREIGN KEY ( Rank_id ) REFERENCES Ranks( Rank_id )
 ) ;

 CREATE TABLE Medical_care ( 
	Medical_id           int NOT NULL   ,
	balance              float    ,
	Transaction_id       int    ,
	Insurance_standard_id int    ,
	CONSTRAINT Pk_Medical_care_Medical_id PRIMARY KEY  ( Medical_id ),
CONSTRAINT fk_medical_care_transactions FOREIGN KEY ( Transaction_id ) REFERENCES Transactions( Transaction_id ) ,
CONSTRAINT fk_medical_care FOREIGN KEY ( Insurance_standard_id ) REFERENCES Insurance_standard( Insurance_standard_id ) 

 ) ;



CREATE TABLE Drivers ( 
	Driver_id            int NOT NULL   ,
	First_name           varchar(50)    ,
	last_name            varchar(50)    ,
	phone_number         varchar(100)    ,
	year_of_experince    int    ,
	Birthday             date    ,
	social_state         varchar(30)    ,
	Ssn                  int    ,
	license_number       int    ,
	pay_id               int    ,
	Medical_id           int    ,
	CONSTRAINT Pk_Drivers_Driver_id PRIMARY KEY  ( Driver_id ),
CONSTRAINT fk_drivers_payroll FOREIGN KEY ( pay_id ) REFERENCES payRoll( pay_id ),
CONSTRAINT fk_drivers_medical_care FOREIGN KEY ( Medical_id ) REFERENCES Medical_care( Medical_id )
 ) ;

CREATE TABLE Drivers_Rating ( 
	Rating_ID            int NOT NULL   ,
	Customer_ID          int NOT NULL   ,
	Driver_ID            int NOT NULL   ,
	CONSTRAINT Pk_Drivers_Rating_Rating_ID PRIMARY KEY  ( Rating_ID ),
	CONSTRAINT fk_drivers_rating_customer FOREIGN KEY ( Customer_ID ) REFERENCES customer( customer_id ),
	CONSTRAINT fk_drivers_rating_drivers FOREIGN KEY ( Driver_ID ) REFERENCES Drivers( Driver_id )
 ) ;
 
 
	


CREATE TABLE employees ( 
	Emp_id               int NOT NULL   ,
	emp_first_name       varchar(50)    ,
	emp_last_name        varchar(50)    ,
	phone_number         varchar(100)    ,
	email                varchar(100)    ,
	position             varchar(50)    ,
	birthday             date    ,
	ssn                  int    ,
	pay_id               int    ,
	medical_id           int    ,
	CONSTRAINT Pk_employees_Emp_id PRIMARY KEY  ( Emp_id ),
CONSTRAINT fk_employees_payroll FOREIGN KEY ( pay_id ) REFERENCES payRoll( pay_id ),
CONSTRAINT fk_employees_medical_care FOREIGN KEY ( medical_id ) REFERENCES Medical_care( Medical_id )
 ) ;



 CREATE TABLE Driver_Penalty_JN ( 
	Driver_ID            int NOT NULL   ,
	Penalty_ID           int NOT NULL   ,
	CONSTRAINT Pk_Buses_Bus_id_2 PRIMARY KEY  ( Driver_ID ),
CONSTRAINT fk_driver_penalty_jn_0_drivers FOREIGN KEY ( Driver_ID ) REFERENCES Drivers( Driver_id ),
CONSTRAINT fk_driver_penalty_jn_penalties FOREIGN KEY ( Penalty_ID ) REFERENCES penalties( penalty_id )
 ) ;


CREATE TABLE Bonuses ( 
	bonus_id             int NOT NULL   ,
	bonus_amount         float    ,
	bonus_date           date    ,
	pay_id               int    ,
	bouns_description    varchar(1000)    ,
	CONSTRAINT Pk_Bounnses_bouns_id PRIMARY KEY  ( bonus_id ) ,
       CONSTRAINT fk_bounnses_payroll FOREIGN KEY ( pay_id ) REFERENCES payRoll( pay_id ) 

 ) ;



CREATE TABLE Driver_Bonus_JN ( 
	Driver_ID            int NOT NULL   ,
	Bonus_ID             int NOT NULL   ,
	CONSTRAINT Pk_Buses_Bus_id_1 PRIMARY KEY  ( Driver_ID ) ,
CONSTRAINT fk_driver_penalty_jn_bonuses FOREIGN KEY ( Bonus_ID ) REFERENCES Bonuses( bonus_id ) ,
CONSTRAINT fk_driver_penalty_jn_drivers FOREIGN KEY ( Driver_ID ) REFERENCES Drivers( Driver_id )
 ) ;







CREATE TABLE Employee_Bonus_JN ( 
	Employee_ID          int NOT NULL   ,
	Bonus_ID             int NOT NULL   ,
	CONSTRAINT Pk_Buses_Bus_id_3 PRIMARY KEY  ( Employee_ID ),
CONSTRAINT fk_employee_bonus_jn_employees FOREIGN KEY ( Employee_ID ) REFERENCES employees( Emp_id ),
CONSTRAINT fk_employee_bonus_jn_bonuses FOREIGN KEY ( Bonus_ID ) REFERENCES Bonuses( bonus_id )
 ) ;



CREATE TABLE Employee_Penalty_JN ( 
	Employee_ID          int NOT NULL   ,
	Penalty_ID           int NOT NULL   ,
	CONSTRAINT Pk_Buses_Bus_id_4 PRIMARY KEY  ( Employee_ID ),
CONSTRAINT fk_employee_penalty_jn FOREIGN KEY ( Employee_ID ) REFERENCES employees( Emp_id ),
CONSTRAINT Penalty_ID FOREIGN KEY ( Penalty_ID ) REFERENCES penalties( penalty_id )
 ) ;





CREATE TABLE Reservation ( 
	Reservation_id       int NOT NULL   ,
	seat_no_booked       int    ,
	Driver_id            int    ,
	schedule_id          int    ,
	payment_method_id    int    ,
	feedback_id          int    ,
	customer_id          int    ,
	Transaction_id       int    ,
	CONSTRAINT Pk_Reservation_Reservation_id PRIMARY KEY  ( Reservation_id ),
CONSTRAINT fk_reservation_drivers FOREIGN KEY ( Driver_id ) REFERENCES Drivers( Driver_id ),
 CONSTRAINT fk_reservation_schedule FOREIGN KEY ( schedule_id ) REFERENCES schedule( schedule_id ),
CONSTRAINT fk_reservation_payment_method FOREIGN KEY ( payment_method_id ) REFERENCES Payment_Method( pay_method_id ) ,
CONSTRAINT fk_reservation_feedback FOREIGN KEY ( feedback_id ) REFERENCES feedback( feedback_id ),
CONSTRAINT fk_reservation_transactions FOREIGN KEY ( Transaction_id ) REFERENCES Transactions( Transaction_id ) ,
CONSTRAINT fk_reservation_customer FOREIGN KEY ( customer_id ) REFERENCES customer( customer_id )
 );
 
CREATE TABLE Actual_Trip ( 
	Actual_Trip_ID       int NOT NULL   ,
	Reservation_ID       int NOT NULL   ,
	Actual_End_Time      datetime NOT NULL   ,
	CONSTRAINT Pk_Actual_Trip_Actual_Trip_ID PRIMARY KEY  ( Actual_Trip_ID ),
	CONSTRAINT fk_actual_trip_reservation FOREIGN KEY ( Reservation_ID ) REFERENCES Reservation( Reservation_id )
 ) ;



CREATE TABLE Special_order ( 
	sp_order_id          int NOT NULL   ,
	starting_point       varchar(50)    ,
	Ending_point         varchar(50)    ,
	Estimated_time       time    ,
	price                float    ,
	customer_id          int    ,
	Bus_id               int    ,
	Driver_id            int    ,
	CONSTRAINT Pk_Special_order_sp_order_id PRIMARY KEY  ( sp_order_id ),
CONSTRAINT fk_special_order_buses FOREIGN KEY ( Bus_id ) REFERENCES Buses( Bus_id ),
CONSTRAINT fk_special_order_customer FOREIGN KEY ( customer_id ) REFERENCES customer( customer_id ),
CONSTRAINT fk_special_order_drivers FOREIGN KEY ( Driver_id ) REFERENCES Drivers( Driver_id )

 ) ;





 
 CREATE TABLE Actual_Special_Trip ( 
	Actual_Special_Trip_ID int NOT NULL   ,
	Special_Order_ID     int NOT NULL   ,
	Actual_Start_Time    datetime    ,
	Actual_Ending_Time   datetime    ,
	CONSTRAINT Pk_Actual_Special_Trip_Actual_Special_Trip_ID PRIMARY KEY  ( Actual_Special_Trip_ID ),
	CONSTRAINT fk_actual_special_trip FOREIGN KEY ( Special_Order_ID ) REFERENCES Special_order( sp_order_id )
 ) ;

