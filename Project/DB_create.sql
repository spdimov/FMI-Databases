CREATE Table Position(
	id int NOT NULL,
	position_name varchar(40),
	salary_per_hour float 
);

CREATE Table Staff(
	id int NOT NULL,
	name varchar(50) NOT NULL,
	phone_number varchar(10),
	gender varchar(1),
	age int,
	signed_on date NOT NULL,
	position_id int NOT NULL
);

CREATE Table Shift(
	staff_id int NOT NULL,
	day_of_month int NOT NULL,
	start_work time NOT NULL,
	end_work time NOT NULL
);

CREATE Table Supplier(
	id int NOT NULL,
	name varchar(35)
);

CREATE Table Supply(
supplier_id int NOT NULL,
day_of_week int NOT NULL,
time_of_delivery time NOT NULL
);
CREATE Table Type(
	id int NOT NULL,
	name varchar(35)
);

CREATE Table Product(
	id int NOT NULL,
	barcode varchar(30),
	name varchar(35) NOT NULL,
	price_per_kg float,
	price_per_unit float ,
	amount_left float,
	discount_in_percentage float,
	type_id int NOT NULL,
	supplier_id int NOT NULL
);

CREATE Table Receipt(
	id int NOT NULL,
	staff_id int,
	time_of_receipt datetime 
);

CREATE Table Receipt_products(
receipt_id int NOT NULL,
product_id int NOT NULL,
buy_amount float NOT NULL
);

CREATE Table Address(
staff_id_address int NOT NULL,
city varchar(30),
street varchar(30),
house_number int
);

ALTER Table Position ADD CONSTRAINT pk_position PRIMARY KEY(id);
ALTER Table Position ADD CONSTRAINT minimal_pay CHECK (salary_per_hour > 3.66);

ALTER Table Staff ADD CONSTRAINT pk_staff PRIMARY KEY(id);
ALTER Table Staff ADD CONSTRAINT gender_M_F CHECK (gender='M' OR gender='F');
ALTER Table Staff ADD CONSTRAINT minimal_age CHECK (age>=14);
ALTER Table Staff ADD CONSTRAINT start_date CHECK(signed_on<=GETDATE());
ALTER Table Staff ADD CONSTRAINT df_signed_on DEFAULT GETDATE() FOR signed_on;
ALTER Table Staff ADD CONSTRAINT fk_position_id FOREIGN KEY (position_id) REFERENCES Position(id);

ALTER Table Shift ADD CONSTRAINT fk_staff_id FOREIGN KEY (staff_id) REFERENCES Staff(id);
ALTER Table Shift ADD CONSTRAINT start_end_correct CHECK (start_work < end_work);

ALTER Table Supplier ADD CONSTRAINT pk_supplier PRIMARY KEY(id)
ALTER Table Supplier ADD CONSTRAINT unique_name_supplier UNIQUE (name);

ALTER Table Supply ADD CONSTRAINT day_correct CHECK (day_of_week >= 1 AND day_of_week <=7);

ALTER Table Type ADD CONSTRAINT pk_type PRIMARY KEY (id);
ALTER Table Type ADD CONSTRAINT unique_name_type UNIQUE(name);

ALTER Table Product ADD CONSTRAINT pk_product PRIMARY KEY(id);
ALTER Table Product ADD CONSTRAINT unique_barcode UNIQUE(barcode);
ALTER Table Product ADD CONSTRAINT unique_name UNIQUE(name);
ALTER Table Product ADD CONSTRAINT df_price_per_kg DEFAULT NULL FOR price_per_kg;
ALTER Table Product ADD CONSTRAINT df_amount_left DEFAULT NULL FOR amount_left;
ALTER Table Product ADD CONSTRAINT df_discount DEFAULT NULL FOR discount_in_percentage;
ALTER Table Product ADD CONSTRAINT fk_type_id FOREIGN KEY (type_id) REFERENCES Type(id);
ALTER Table Product ADD CONSTRAINT fk_supplier_id FOREIGN KEY (supplier_id) REFERENCES Supplier(id)

ALTER Table Receipt ADD CONSTRAINT pk_receipt PRIMARY KEY(id);
ALTER Table Receipt ADD CONSTRAINT fk_staff_id_receipt FOREIGN KEY  (staff_id) REFERENCES Staff(id);
ALTER Table Receipt ADD CONSTRAINT df_time DEFAULT GETDATE() FOR time_of_receipt

ALTER Table Address ADD CONSTRAINT fk_staff_id_address FOREIGN KEY (staff_id_address) REFERENCES Staff(id);