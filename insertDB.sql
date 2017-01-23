insert into City values ('1', 'Philadelphia', 'Brain', 'Fisher');
insert into City values ('2', 'Pittsburgh', 'Ryan', 'Nichols');
insert into City values ('3', 'New York', 'Darwin', 'Wong');

insert into District values ('11', '1', 'North', 'Mike', 'McCusker', 2);
insert into District values ('12', '1', 'Northeast', 'Anthony', 'Clemento', 1);
insert into District values ('13', '1', 'West', 'Jared', 'Taylor', 2);
insert into District values ('21', '2', 'Oakland', 'Reem', 'Al-Dadah', 3);
insert into District values ('22', '2', 'Squirrel Hill', 'Thomas', 'Bianco', 3);
insert into District values ('23', '2', 'Greenfield', 'Martin', 'Randal', 1);
insert into District values ('24', '2', 'MT Washington', 'Jeff', 'Myers', 1);
insert into District values ('31', '3', 'Manhattan', 'Anthony', 'Pomponio', 4);
insert into District values ('32', '3', 'Queens', 'Kalvin', 'Chen', 2);
insert into District values ('33', '3', 'Brooklyn', 'John', 'Wiltshire', 2);
insert into District values ('34', '3', 'Bronx', 'Andrew', 'Murphy', 2);

insert into Agent values  ('1',	'James',	'Victor',	'jamesvictor@allstate.com',	'(215) 742-9880',	3000,	'11');
insert into Agent values  ('2',	'Joseph',	'Tralie',	'joetralie@allstate.com',	'(215) 249-6499',	3200,	'11');
insert into Agent values  ('3',	'Brian',	'McQuoid',	'bmcquoid@allstate.com',	'(215) 464-4300',	3500,	'12');
insert into Agent values  ('4',	'Barry',	'Petroziello',	'bpetroziello@allstate.com',	'(215) 281-1100',	4000,	'13');
insert into Agent values  ('5',	'Lou',	'Simone',	'lousimone@allstate.com',	'(215) 413-5800',	2800,	'13');
insert into Agent values  ('6',	'John',	'Tomaino',	'johntomaino@allstate.com',	'(412) 421-8400',	3200,	'21');
insert into Agent values  ('7',	'Robert',	'Dunn',	'robertdunn@allstate.com',	'(412) 922-1122',	3100,	'21');
insert into Agent values  ('8',	'Daniel',	'Cone',	'daniel.cone@allstate.com',	'(412) 621-4811',	3000,	'21');
insert into Agent values  ('9',	'Dana',	'Richter',	'danarichter@allstate.com',	'(412) 391-7000',	2500,	'22');
insert into Agent values  ('10',	'Ken',	'Mihalcin',	'kenmihalcin3@allstate.com',	'(412) 367-2124',	2700,	'22');
insert into Agent values  ('11',	'Kevin',	'Palermo',	'kevinpalermo@allstate.com',	'(412) 367-2124',	2800,	'22');
insert into Agent values  ('12',	'Christopher',	'Graff',	'chrisgraffllc@allstate.com',	'(412) 885-5631',	3200,	'23');
insert into Agent values  ('13',	'Megan',	'Young',	'meganyoung2@allstate.com',	'(412) 795-2889',	3000,	'24');
insert into Agent values  ('14',	'Lilian',	'Chan',	'lilianchan@allstate.com',	'(212) 227-8805',	4200,	'31');
insert into Agent values  ('15',	'Frederic',	'Horen',	'fredhoren@allstate.com',	'(212) 759-3920',	4500,	'31');
insert into Agent values  ('16',	'James',	'Sheppard',	'jshep@allstate.com',	'(212) 421-5830',	4300,	'31');
insert into Agent values  ('17',	'Barbara',	'Grimaldi',	'bgrimaldi@allstate.com',	'(212) 759-3920',	4000,	'31');
insert into Agent values  ('18',	'Frank',	'Ramos',	'framos@allstate.com',	'(212) 206-0494',	3500,	'32');
insert into Agent values  ('19',	'Derrick',	'Howard',	'dhoward@allstate.com',	'(212) 491-4114',	3800,	'32');
insert into Agent values  ('20',	'James',	'Heins',	'jamesheins@allstate.com',	'(212) 475-1103',	4000,	'33');
insert into Agent values  ('21',	'Brian',	'Boyd',	'brianboyd@allstate.com',	'(212) 686-1200',	3600,	'33');
insert into Agent values  ('22',	'David',	'Goldstein',	'dgoldstein@allstate.com',	'(212) 685-9400',	3400,	'34');
insert into Agent values  ('23',	'Kelly',	'Qu',	'kellyqu@allstate.com',	'(718) 865-8458',	3500,	'34');


insert into Zipcode values('10035',	'New York',	'NY');
insert into Zipcode values('10010',	'New York',	'NY');
insert into Zipcode values('10005',	'New York',	'NY');
insert into Zipcode values('15213',	'Pittsburgh',	'PA');
insert into Zipcode values('15260',	'Pittsburgh',	'PA');
insert into Zipcode values('19134',	'Philadephia',	'PA');
insert into Zipcode values('19114',	'Philadephia',	'PA');
insert into Zipcode values('19103',	'Philadephia',	'PA');

insert into Address values('ny100',	'Madison Ave.',	'10035');
insert into Address values('ny101',	'Park Ave.',	'10010');
insert into Address values('ny102',	'Wall St.',	'10005');
insert into Address values('pitt100',	'Centre Ave.',	'15213');
insert into Address values('pitt101',	'5th Ave.',	'15260');
insert into Address values('pitt102',	'Forbes Ave.',	'15213');
insert into Address values('ph100',	'Aramingo Ave.',	'19134');
insert into Address values('ph101',	'Roosevelt Blvd',	'19114');
insert into Address values('ph102',	'17th St.',	'19103');

insert into Customer values('1',	'pitt100',	'home', 'lyoung@gmail.com',	'lyoung',	'lyoung');
insert into Customer values('2',	'pitt101',	'home', 'shu@gmail.com',	'shu',	'shu');
insert into Customer values('3',	'ny100',	'home', 'yschmell@gmail.com',	'yschmell',	'yschmell');
insert into Customer values('4',	'ny101',	'home', 'csanchez@gmail.com',	'csanchez',	'csanchez');
insert into Customer values('5',	'ph100',	'home', 'bbalanoff@gmail.com',	'bbalanoff',	'bbalanoff');
insert into Customer values('6',	'ph101',	'home', 'ecovarrubias@gmail.com',	'ecovarrubias',	'ecovarrubias');
insert into Customer values('7',	'ph102',	'business', 'ph102@chase.com',	'chasebank',	'chasebank');
insert into Customer values('8',	'ny102',	'business', 'ny102@century21.com',	'century21',	'century21');
insert into Customer values('9',	'pitt102',	'business', 'pitt102@cmu.edu',	'cmu',	'cmu');

insert into Customer_Home values('1',	'Linda',	'Young',	'female',	40,	'married',	7000);
insert into Customer_Home values('2',	'Simon',	'Hu',	'male',	23,	'unmarried',	4300);
insert into Customer_Home values('3',	'Yaakov',	'Schmell',	'male',	27,	'unmarried',	4000);
insert into Customer_Home values('4', 'Carlos',	'Sanchez',	'male',	35,	'married',	5000);
insert into Customer_Home values('5',	'Bob',	'Balanoff',	'male',	45,	'married',	5000);
insert into Customer_Home values('6', 'Esmeralda',	'Covarrubias',	'female',	30,	'unmarried',	4500);

insert into Customer_Business values('7',	'Chase',	'banking',	3000000);
insert into Customer_Business values('8',	'Century21',	'retail',	10000000);
insert into Customer_Business values('9',	'CMU',	'education',	20000000);

insert into Auto values('1CJ3930',	'1',	'Mitsubishi Lancer Evolution',	2015,	37805, 30000);
insert into Auto values('KAU182',	'2',	'Chevrolet City Express',	2015,	19997, 15000);
insert into Auto values('BYC3004',	'3',	'Jeep Cherokee',	2016,	24573, 20000);
insert into Auto values('266WXZ',	'4',	'Dodge Dart',	2016,	18919, 30000);
insert into Auto values('7VUA855',	'5',	'GMC Savana',	2015,	32045, 25000);
insert into Auto values('RDP524',	'6',	'Infiniti Q70',	2015,	49988, 34000);
insert into Auto values('AG59890',	'7',	'Cadillac Escalade',	2016,	91060, 33000);
insert into Auto values('FH7000',	'7',	'Cadillac Escalade ESV',	2016,	87025, 42000);
insert into Auto values('HJHB15',	'8',	'Dodge Challenger',	2016,	42860, 50000);
insert into Auto values('CFU1319',	'9', 'Chevrolet Suburban',	2016,	56820, 55000);
insert into Auto values('SYD610',	'9',	'GMC Sierra',	2015,	42363, 60000);

insert into Product values ('p1',	'Liability insurance', 	400,	0.02,	12,	0.06,	0);
insert into Product values ('p2',	'Collision insurance',	550,	0.01,	18,	0.08,	0);
insert into Product values ('p3',	'Personal Injury Insurance',	600,	0.005,	24,	0.1,	0);
insert into Product values ('p4',	'Comprehensive insurance', 	300,	0.005,	12,	0.12,	0);
insert into Product values ('p5',	'Fire and Theft Coverage',	350,	0.005,	12,	0.15,	0);
insert into Product values ('p6',	'Uninsured/Underinsured Motorist Coverage',	500,	0.01,	12,	0.2,	0);


insert into Transaction values ('1',	'1',	'2016-10-12',	1156.1);
insert into Transaction values ('2',	'5',	'2016-09-23',	1099.97);
insert into Transaction values ('3',	'14',	'2016-07-10',	422.865);
insert into Transaction values ('4',	'23',	'2016-08-20',	444.595);
insert into Transaction values ('5',	'6',	'2016-01-01',	820.45);
insert into Transaction values ('6',	'13',	'2016-02-03',	549.94);
insert into Transaction values ('7',	'8',	'2016-03-15',	2221.2);
insert into Transaction values ('8',	'8',	'2016-03-15',	2140.5);
insert into Transaction values ('9',  	'20',	'2016-10-30',	1257.2);
insert into Transaction values ('10',	'3',	'2015-12-04',	1536.4);
insert into Transaction values ('11',	'3',	'2015-12-04',	1247.26);


insert into Join_Table values ('1',	'1',	'1CJ3930',	'p1');
insert into Join_Table values ('2',	'2',	'KAU182',	'p3');
insert into Join_Table values ('2',	'2',	'KAU182',	'p4');
insert into Join_Table values ('3',	'3',	'BYC3004',	'p4');
insert into Join_Table values ('4',	'4',	'266WXZ',	'p5');
insert into Join_Table values ('5',	'5',	'7VUA855',	'p6');
insert into Join_Table values ('6',	'6',	'RDP524',	'p4');
insert into Join_Table values ('7',	'7',	'AG59890',	'p1');
insert into Join_Table values ('8',	'7',	'FH7000',	'p1');
insert into Join_Table values ('9',	'8',	'HJHB15',	'p1');
insert into Join_Table values ('10',	'9',	'CFU1319',	'p1');
insert into Join_Table values ('11',	'9',	'SYD610',	'p1');
