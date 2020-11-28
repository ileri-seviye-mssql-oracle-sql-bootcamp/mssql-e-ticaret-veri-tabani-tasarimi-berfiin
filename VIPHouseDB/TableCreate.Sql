CREATE TABLE Person
  (
    Person_id int IDENTITY(1,1) NOT NULL,
    Person_firstName VARCHAR(50) NOT NULL,
    Person_lastName VARCHAR(50) NOT NULL,
    Person_phone VARCHAR(50) NOT NULL,
    Person_address VARCHAR(250) NOT NULL,
	Peron_job VARCHAR(250),
	Address_id int FOREIGN KEY REFERENCES Customer_Address(Address_id),
   CONSTRAINT PK_Person_id PRIMARY KEY(Person_id),
      
);
   CREATE TABLE Customer_Address
  (
    Address_id int IDENTITY(1,1) NOT NULL,
    Province VARCHAR(50) NOT NULL,
    District VARCHAR(50) NOT NULL,
    Neighborhood VARCHAR(50) NOT NULL,
    Road VARCHAR(250) NOT NULL,
	Street VARCHAR(250),
	Floor_	int,
	Apartment_no int,
  CONSTRAINT PK_Address_id PRIMARY KEY(Address_id)
 
);
 
  
  CREATE TABLE Orders
  (
    Order_id int IDENTITY(1,1) NOT NULL,
    Order_amount  int ,
    Order_date  DATE ,
    Order_quantity  int,
    Person_id int,
    Product_id int,
  CONSTRAINT fk_Orders_Product
      FOREIGN KEY( Product_id )
      REFERENCES Product( Product_id ),
      CONSTRAINT fk_Orders_Person
      FOREIGN KEY( Person_id )
      REFERENCES Person( Person_id ) 
     
 )
  CREATE TABLE Product
  (
    Product_id int IDENTITY(1,1) NOT NULL,
   
    Product_name  VARCHAR(250),
    Product_detail VARCHAR(250),
    
    Stock_Quantity  int,
    Price  int,
	Top_seller VARCHAR(250),
	 Discount_rate  int,
	  Category_id int,
	   CONSTRAINT Product_id PRIMARY KEY(Product_id),
	  CONSTRAINT fk_Product_Category
      FOREIGN KEY( Category_id )
      REFERENCES Product_Category( Category_id )

    )
   
    CREATE TABLE Product_Category
  (
    Category_id int IDENTITY(1,1) NOT NULL,
    
    Category_name  VARCHAR( 255 ),
    CONSTRAINT Category_id PRIMARY KEY(Category_id),

    )

	drop table Product