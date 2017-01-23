create table City(
  cityID varchar(10) not null,
  cName varchar(20) not null,
  cManager_fName varchar(20) not null,
  cManager_lName varchar(20) not null,
  primary key(cityID)
);

create table District(
  districtID varchar(10) not null,
  cityID varchar(10) not null,
  dName varchar(20) not null,
  dManager_fName varchar(20) not null,
  dManager_lName varchar(20) not null,
  numOfAgent int not null,
  primary key(districtID),
  foreign key(cityID) references City(cityID) on delete cascade on update cascade
);

create table Agent(
  agentID varchar(10) not null,
  fName varchar(20) not null,
  lName varchar(20) not null,
  email varchar(30) not null,
  phone varchar(20) not null,
  salary numeric(8,2) not null,
  districtID varchar(10) not null,
  primary key(agentID),
  foreign key(districtID) references District(districtID) on delete cascade on update cascade
);

create table Zipcode(
  zipcode varchar(10) not null,
  city varchar(10) not null,
  state varchar(10) not null,
  primary key(zipcode)
);

create table Address(
   addressID varchar(10) not null,
   street varchar(20) not null,
   zipcode varchar(10) not null,
   primary key(addressID),
   foreign key (zipcode) references Zipcode(zipcode) on delete cascade on update cascade
);

create table Customer(
  customerID varchar(10) not null,
  addressID varchar(10) not null,
  category varchar(10) not null
    check (category in ('home', 'business')),
  email varchar(30) not null,
  username varchar(20) not null,
  password varchar(20) not null,
  primary key(customerID),
  foreign key(addressID) references Address(addressID) on delete cascade on update cascade
);

create table Customer_Home(
   customerID varchar(10) not null,
   fName varchar(20) not null,
   lName varchar(20) not null,
   gender varchar(10) not null check (gender in ('female','male')),
   age int not null,
   marriage_status varchar(10) not null check (marriage_status in ('unmarried','married')),
   salary numeric(8,2) not null,
   primary key(customerID),
   foreign key(customerID) references Customer(customerID) on delete cascade on update cascade
 );

 create table Customer_Business(
   customerID varchar(10) not null,
   bName varchar(20) not null,
   business_category varchar(10) not null,
   gross_income numeric(20,0) not null,
   primary key(customerID),
   foreign key(customerID) references Customer(customerID) on delete cascade on update cascade
 );

create table Auto(
  licensePlate varchar(10) not null,
  customerID varchar(10) not null,
  brand varchar(50) not null,
  year int not null,
  price numeric(8,2) not null,
  mileage int not null,
  primary key(licensePlate),
  foreign key(customerID) references Customer(customerID) on delete cascade on update cascade
);


create table Product(
  productID varchar(10) not null,
  pName varchar(50) not null,
  base_price numeric(8,2) not null,
  addition_rate numeric(8,5) not null,
  duration int not null,
  refund_rate numeric(8,5) not null,
  sales int not null,
  primary key(productID)
);

create table Transaction(
  transactionNumber varchar(10) not null,
  agentID varchar(10) not null,
  date date not null,
  total_price numeric(8,2) not null,
  primary key(transactionNumber),
  foreign key(agentID) references Agent(agentID) on delete cascade on update cascade
);


create table Join_Table(
  transactionNumber varchar(10) not null,
  customerID varchar(10) not null,
  licensePlate varchar(10) not null,
  productID varchar(10) not null,
  primary key(transactionNumber, customerID, licensePlate, productID),
  foreign key(transactionNumber) references Transaction(transactionNumber) on delete cascade on update cascade,
  foreign key(customerID) references Customer(customerID) on delete cascade on update cascade,
  foreign key(licensePlate) references Auto(licensePlate) on delete cascade on update cascade,
  foreign key(productID) references Product(productID) on delete cascade on update cascade
);







 




