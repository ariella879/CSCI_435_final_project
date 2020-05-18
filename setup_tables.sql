CREATE TABLE allergies(
  patient INT NOT NULL,
  allergy VARCHAR(50),
  PRIMARY KEY(patient, allergy),
  FOREIGN KEY(patient) REFERENCES patients(id) 
);
INSERT INTO allergies(patient, allergy)
VALUES 
  (1, 'Aspirin'), 
  (1, 'Tree Nuts'), 
  (1, 'Shellfish'), 
  (2, 'Shellfish'), 
  (3, 'Shellfish'), 
  (6, 'Soy'), 
  (11, 'Wheat'), 
  (21, 'Penicillin'), 
  (16, 'Penicillin'), 
  (17, 'Local Anesthetic'), 
  (10, 'Dilantin'), 
  (8, 'Fish'), 
  (9, 'Egg'), 
  (5, 'Aspirin'), 
  (13, 'Sesame'), 
  (16, 'Sulfonamides'), 
  (18, 'Penicillin'), 
  (7, 'Aspirin'), 
  (14, 'Pollen');


CREATE TABLE blood_types( type VARCHAR(16) PRIMARY KEY ) ;
INSERT INTO blood_types (type) 
VALUES
  ('A+'), 
  ('A-'), 
  ('B+'), 
  ('B-'), 
  ('AB+'), 
  ('AB-'), 
  ('O+'), 
  ('O-');


CREATE TABLE categories(
  code VARCHAR(5) PRIMARY KEY NOT NULL,
  description VARCHAR(250)
);
INSERT INTO categories (code, description) 
VALUES
  ('CUST', 'CUSTODIAL STAFF'),
  ('OPER', 'OPERATIONS'),
  ('NURSE', 'NURSES'),
  ('DOCT', 'DOCTOR'),
  ('ADMIN', 'ADMINISTRATION');


CREATE TABLE departments(
	department VARCHAR(64) NOT NULL,
	PRIMARY KEY(department)
);
INSERT INTO departments(department)
VALUES
  ('Oncology'),
  ('Cardiology'),
  ('Accident & Emergency'),
  ('Pediatrics');


CREATE TABLE employees(
	id INT AUTO_INCREMENT,
	first_name VARCHAR(32) NOT NULL,
  last_name VARCHAR(32) NOT NULL,
  ssn VARCHAR(11) NOT NULL,
  job_code VARCHAR(5), 
  department VARCHAR(32) NOT NULL,
  supervisor INT,
  vacation_days INT DEFAULT 28,
  sick_days INT DEFAULT 14,
  start_date DATE,
  clearance VARCHAR(5) NOT NULL DEFAULT '1',
	PRIMARY KEY(id, ssn),
	FOREIGN KEY (job_code) REFERENCES job_definitions(job_code),
	FOREIGN KEY (department) REFERENCES departments(department),
);
INSERT INTO employees (first_name, last_name, ssn, job_code, department, start_date, clearance)
VALUES
  ('Mark', 'Boateng', '145455678', 'DOC04', 'Cardiology', '1965-04-26', '5'),
  ('Jeannette', 'Castile', '145456543', 'DOC03', 'Cardiology', '1986-08-17',	'4'),
  ('Sandra', 'Davy', '145903456',	'DOC03', 'Cardiology', '1988-06-25', '4'),
  ('Sasha', 'Thomas', '145703257', 'DOC02', 'Cardiology', '1978-08-25', '3'),
  ('Jessica',	'Wright', '145098731', 'NUR03',	'Cardiology', '2009-08-25',	'2'),
  ('Sean', 'Carter', '532129876',	'NUR03', 'Cardiology', '1993-01-25', '2'),
  ('Peter', 'Parker', '567903879', 'NUR03', 'Cardiology',	'1995-09-20', '2'),
  ('Ashley', 'Tisdale', '123601968', 'NUR01',	'Cardiology', '1965-09-11',	'2'),
  ('Samuel', 'Grande', '123635968', 'OPR01', 'Cardiology', '1970-10-18', '1'),
  ('Munir', 'Opoku', '123608104',	'OPR01', 'Cardiology', '1995-05-25', '1'),
  ('Farah', 'Shah', '123601968', 'DOC04',	'Pediatrics', '1990-05-13',	'5'),
  ('Britney',	'Johnson', '123601748',	'DOC03', 'Pediatrics', '1997-04-28', '4'),
  ('John', 'Connerson', '123910798', 'DOC03',	'Pediatrics', '1965-02-27',	'4'),
  ('Mickalia', 'Davis', '132456543', 'DOC02',	'Pediatrics', '1990-07-17',	'3'),
  ('Andrew', 'Tomas', '146492356', 'NUR03', 'Pediatrics',	 '1997-04-10',	'2'),
  ('Alana', 'Samuels', '145907258', 'NUR03', 'Pediatrics', '1987-05-25',	'2'),
  ('Ashley', 'Graham', '135098731', 'NUR03', 'Pediatrics', '1978-06-25',	'2'),
  ('Tony', 'Morrison', '123607298', 'NUR01',	'Pediatrics', '1960-10-11',	'2'),
  ('Jay',	'Carter', '123635968', 'OPR01',	'Pediatrics', '1970-10-18',	'1'),
  ('Jared', 'McFarlane', '143605607',	'OPR01', 'Pediatrics', '1987-04-12', '1'),
  ('Danca', 'Jones', '123604568',	'DOC04', 'Oncology', '1980-05-13',	'5'),
  ('Paul', 'Holmes', '124603221',	'DOC03', 'Oncology', '1985-05-28',	'4'),
  ('Sam',	'Hope',	'123918018', 'DOC03', 'Oncology', '1978-10-27',	'4'),
  ('Monica', 'Darling', '143894572', 'DOC02',	'Oncology',	'1988-02-24', '3'),
  ('Jones', 'Johnson', '123940242', 'NUR03', 'Oncology', '1978-08-08', '2'),
  ('Ashley', 'Davvy',	'561983618', 'NUR03', 'Oncology', '1986-09-15',	'2'),
  ('Joanna', 'Joe', '908347867', 'NUR03',	'Oncology', '1965-04-26', '2'),
  ('Joseph', 'Alabaska', '986127839',	'NUR01', 'Oncology', '1986-08-17', '2'),
  ('Alijandrano',	'Phillis', '906678923',	'OPR01', 'Oncology', '1988-06-25', '1'),
  ('Allan', 'Turner', '871971245', 'OPR01', 'Oncology', '1978-08-25', '1'),
  ('Frank', 'Lombardi', '903617967', 'DOC04',	'Accident & Emergency', '1955-04-20', '5'),
  ('Dan', 'Borie', '903819967', 'DOC03',	'Accident & Emergency', '1978-09-09', '4'),
  ('Joe', 'Boris', '906431996', 'DOC03',	'Accident & Emergency', '1978-11-09', '4'),
  ('Pete', 'Daniels', '904519967', 'NUR03',	'Accident & Emergency', '1998-10-09', '3'),
  ('Daniel', 'Johnson', '998434951', 'NUR03',	'Accident & Emergency', '1985-06-06', '3');


CREATE TABLE job_definitions(
  job_code VARCHAR(5),
  category VARCHAR(5),
  description VARCHAR(200),
  PRIMARY KEY (job_code, category),
  FOREIGN KEY (category) REFERENCES categories(code)
);
INSERT INTO job_definitions (job_code, category, description)
VALUES
  ('ADM01', 'ADMIN', 'Employee Manager, responsible for communicating with various department managers to ensure smooth operation of the Hospital'),
  ('ADM02', 'ADMIN', 'Senior Administration Employee, Responsible for maintaining staff body (employment & termination)'),
  ('ADM03', 'ADMIN', 'Executive Board.'),
  ('CUS01', 'CUST', 'Part time Custodial employee. Responsible for maintaining the cleansliness of the hospital.'),
  ('CUS02', 'CUST', 'Full time Custodial employee. Responsible for maintaining the cleansliness of the hospital.'),
  ('CUS03', 'CUST', 'Manager of the Custodial staff. Resposnsible for leading the Custodial staff.'),
  ('DOC01', 'DOCT', 'Intern Doctor'),
  ('DOC02', 'DOCT', 'Fellow Doctor'),
  ('DOC03', 'DOCT', 'Resident Doctor'),
  ('DOC04', 'DOCT', 'Attending Doctor' ),
  ('NUR01', 'NURSE', 'Nurse Aide'),
  ('NUR02', 'NURSE', 'Licensed Practical Nurse'),
  ('NUR03', 'NURSE', 'Registered Nurse'),
  ('OPR01', 'OPER', 'Unit Assistant responsible for maintaining operating room supplies.'),
  ('OPR02', 'OPER', 'Cullinary staff');


CREATE TABLE locations(
  code VARCHAR(5) NOT NULL PRIMARY KEY,
  description VARCHAR(100)
);
INSERT INTO locations (code, address1, state, city, zip_code, country)
VALUES
  ('NY001', 'MRI station'),
  ('NY002', 'Surgery room'),
  ('NY003', 'Physical therapy room'),
  ('NY004', 'Consultation office'),
  ('NY005', 'Cryotherapy room');


CREATE TABLE patients(
  id INT AUTO_INCREMENT PRIMARY KEY,
  first_name VARCHAR(32) NOT NULL,	
  last_name VARCHAR(32) NOT NULL,
  dob DATE NOT NULL,
  ssn VARCHAR(11) NOT NULL,
  blood_type VARCHAR(16) NOT NULL,
  insurance_provider VARCHAR(64) NOT NULL,
  policy_number VARCHAR(32) NOT NULL,
  primary_phone VARCHAR(13) NOT NULL,
  address1 VARCHAR(100) NOT NULL,	
  address2 VARCHAR(100) NOT NULL,
  state VARCHAR(30) NOT NULL,		
  city VARCHAR(50) NOT NULL,		
  zip_code VARCHAR(5) NOT NULL,
  country  VARCHAR(100) NOT NULL, 
  emergency_contact_name VARCHAR(60),
  emergency_contact_number VARCHAR(13),
  FOREIGN KEY (blood_type) REFERENCES blood_types(type) );
INSERT INTO 
  patients(first_name, last_name, dob, ssn, blood_type, insurance_provider, policy_number,  primary_phone, address1, address2, state, city, zip_code, country, emergency_contact_name, emergency_contact_number) 
VALUES
  ('Nancy', 'Drew', '1990-05-13', '145455678', 'A+', 'Sagicor', 'SA1345678901', '13477984567', '100 Bay Shore Ave', 'Floor 2', 'NY', 'Bay Shore', '13478', 'United States', 'Dillon Shaw', '16467893456'),
  ('Bobby', 'Drew', '1986-08-17', '145456543', 'A-', 'Sagicor', 'SA1345678901', '13476549811', '100 Bay Shore Ave', 'Floor 2', 'NY', 'Bay Shore', '13478', 'United States', 'Dillon Shaw', '16467893456'),
  ('Sean', 'Drew', '2000-06-25', '145903456', 'AB-', 'Sagicor', 'SA1345678901', '13473908516', '100 Bay Shore Ave', 'Floor 2', 'NY', 'Bay Shore', '13478', 'United States', 'Dillon Shaw', '16467893456'),
  ('Phillis', 'Drew', '2005-08-25', '145703257', 'O+', 'Sagicor', 'SA1345678901', '13471234576', '100 Bay Shore Ave', 'Floor 2', 'NY', 'Bay Shore', '13478', 'United States', 'Dillon Shaw', '16467893456'),
  ('Tabetha', 'Drew', '2009-08-25', '145098731', 'O+', 'Sagicor', 'SA1345678901', '13475609867', '100 Bay Shore Ave', 'Floor 2', 'NY', 'Bay Shore', '13478', 'United States', 'Dillon Shaw', '16467893456'),
  ('Dean', 'Carter', '1993-01-25', '532129876', 'AB+', 'Fideli', 'FI2045678761', '17186254567', '52 Kings Dr', 'Apt 10D', 'NY', 'Brooklyn', '12071', 'United States', 'Doc Carter', '17189132334'),
  ('Milly', 'Bobby', '1995-09-20', '567903879', 'O+', 'Fideli', 'FI2045678761', '17186598713', '98 Queens Way', 'Apt F1', 'NY', 'Brooklyn', '12070', 'United States', 'Mama Bobby', '17187618410'),
  ('Odetunde', 'Akor', '1965-09-11', '123601968', 'A-', 'Defender', 'DE1345576097', '16318974347', '100 Atlanta Ave', 'Floor 1', 'NY', 'Rosedale', '11435', 'United States', 'Eustace Akor', '15166734526'),
  ('Ophelia', 'Akor', '1970-10-18', '123635968', 'A+', 'Defender', 'DE1345576097', '16310574347', '100 Atlanta Ave', 'Floor 1', 'NY', 'Rosedale', '11435', 'United States', 'Eustace Akor', '15166734526'),
  ('Abraham', 'Akor', '1995-05-25', '123608104', 'AB+', 'Defender', 'DE1345576097', '16310194347', '100 Atlanta Ave', 'Floor 1', 'NY', 'Rosedale', '11435', 'United States', 'Eustace Akor', '15166734526'),
  ('Sarah', 'Akor', '1998-05-13', '123601968', 'O-', 'Defender', 'DE1345576097', '16315670757', '100 Atlanta Ave', 'Floor 1', 'NY', 'Rosedale', '11435', 'United States', 'Eustace Akor', '15166734526'),
  ('Tabitha', 'Akor', '1997-04-28', '123601748', 'AB-', 'Defender', 'DE1345576097', '16310213347', '100 Atlanta Ave', 'Floor 1', 'NY', 'Rosedale', '11435', 'United States', 'Eustace Akor', '15166734526'),
  ('Ophelia', 'Akor', '2005-02-27', '123910798', 'A+', 'Defender', 'DE1345576097', '16316819077', '100 Atlanta Ave', 'Floor 1', 'NY', 'Rosedale', '11435', 'United States', 'Eustace Akor', '15166734526'),
  ('Kevin', 'OConnor', '2000-07-17', '132456543', 'AB-', 'Sagicor', 'SA1341667911', '13477189811', '101 Martin Lawrence Way', 'Floor 2', 'NY', 'Corana', '13678', 'United States', 'Kelvin OConnor', '13451893456'),
  ('Andrew', 'Thomas', '1997-04-10', '146492356', 'AB+', 'Allegedly', 'AL1445398905', '16313908516', '100 Allen Ave', 'Floor 3', 'NY', 'Long Island', '11643', 'United States', 'Audrey Thomas', '16317893456'),
  ('Moriah', 'McLaughlin', '1987-05-25', '145907258', 'O-', 'Allegedly', 'AL1341976211', '13471234274', '100 Franklin Ave', 'Apt B54', 'NY', 'Grand Circus', '12678', 'United States', 'Sean McLaughlin', '13477893456'),
  ('Tabitha', 'Graham', '1978-06-25', '135098731', 'O+', 'Sagicor', 'SA1345390901', '13475608107', '10 Bay Adjacent Ave', 'Floor 1', 'NY', 'Long Island', '12348', 'United States', 'Morris Shaw', '16457893456'), 
  ('Tony', 'Morris', '1960-10-11', '123607298', 'B-', 'Allegedly', 'AL1345852097', '16318970627', '13415 Philly Ave', 'Floor 2', 'NY', 'Rosedale', '11435', 'United States', 'Amadana Morris', '16316734526'),
  ('Frank', 'Diddis', '1970-10-18', '123635968', 'A+', 'Scorpianis', 'SC1345376597', '16310724334', '1952 Howard Ave', 'Apt 567', 'NY', 'Rosedale', '11435', 'United States', 'Mama Diddis', '15166917193'),
  ('Aregano', 'Basil', '1987-04-12', '143605607', 'AB+', 'Scorpianis', 'SC1343076097', '16310194347', '100 Hotlanta Ave', 'Floor 1', 'NY', 'Atlantis', '11831', 'United States', 'Eustace Franklin', '15164829070'),
  ('Paprika', 'Salmon', '1980-05-13', '123604568', 'O+', 'Defender', 'DE1295540197', '16315259427', '631 Borealis Ave', 'Apt D45', 'NY', 'Womanhattan', '11000', 'United States', 'Pink Salmon', '15166778923'),
  ('Arnell', 'Amon', '1985-05-28', '124603221', 'AB+', 'Defender', 'DE1345293041', '16310905147', '90 Liberty Ave', 'Apt 5D', 'NY', 'Woville', '11390', 'United States', 'Frank Amon', '15166924501'),
  ('Martin', 'Larence', '1978-10-27', '123918018', 'A-', 'Defender', 'DE1345542457', '16316909081', '93 Forest Hills Ave', 'Aot 34', 'NY', 'Forest Hills', '78923', 'United States', 'Mark Larence', '15167103746') 
  ('Derrick', 'Bennet', '1995-04-04', '123456709', 'A+', 'Alleged', 'AG1345879813', '2123456789', '123 Murky Lane', 'Floor 3', 'NY', 'Jamaikya', '11239', 'United States', 'Duane Bennet', '1235439872'),
  ('Ginnah', 'Etah', '1997-10-05', '231574689','A-', 'Cigna', 'CH1234567890', '9174880695', '555 West 55th St', 'Apt 5', 'New York', 'NY', '10019', 'United States', 'My Mother', '3215648697');


CREATE TABLE treatments(
  treatment_code VARCHAR(5) PRIMARY KEY NOT NULL,
  description VARCHAR(250) NOT NULL,
  cost DECIMAL(7, 2) NOT NULL
);
INSERT INTO treatments(treatment_code, description, cost)
VALUES
  ('CAR01', 'General Cardiovascular care. Diagnosis and prescription of drugs when necessary.', 1200.34),
  ('CAR02', 'Non-Invasive lung or heart surgery', 50000.56),
  ('CAR03', 'Complex lung or heart Surgery', 100000.56),
  ('EME01', 'Triage.', 1200.34),
  ('EME02', 'Basic Emergency Care.', 50000.56),
  ('EME03', 'Advanced Emergency Care.', 100000.56),
  ('PED01', 'General Pediatric Care.', 1200.34),
  ('PED02', 'Childbirth.', 2000.56),
  ('PED03', 'Pediatric Surgery', 100000.56),
  ('ONC01', 'General Oncology care. Diagnosis and prescription of drugs or treatment plans', 5000.34),
  ('ONC02', 'Chemotherapy', 20000.56),
  ('ONC03', 'Experimental Procedures', 100000.56);


CREATE TABLE treatments_history(
  patient INT NOT NULL,
	treatment VARCHAR(5) NOT NULL, 
  location VARCHAR(5)  NOT NULL,
	scheduled_time DATETIME,
  physician INT NOT NULL,
	PRIMARY KEY (treatment, patient),
  FOREIGN KEY (patient) REFERENCES patients(id),
	FOREIGN KEY (treatment) REFERENCES treatments(treatment_code),
	FOREIGN KEY (location) REFERENCES locations (code),
	FOREIGN KEY (physician) REFERENCES employees (id) 
);
INSERT INTO treatments_history(treatment, patient, location, scheduled_time, physician)
VALUES
  ('ONC01', 1, 'NY001', '2018-10-01 10:10:10', 24),
  ('ONC01', 21, 'NY001', '2020-01-01 10:10:10', 24),
  ('ONC02', 19, 'NY001', '2020-01-01 08:10:10', 23),
  ('ONC02', 18, 'NY001', '2020-01-01 10:10:10', 22),
  ('ONC03', 16, 'NY001', '2020-01-01 10:10:10', 21),
  ('CAR01', 15, 'NY001', '2018-10-01 10:10:10', 4),
  ('CAR01', 9, 'NY001', '2020-01-01 10:10:10', 4),
  ('CAR02', 6, 'NY001', '2020-01-01 08:10:10', 3),
  ('CAR02', 5, 'NY001', '2020-01-01 10:10:10', 2),
  ('CAR03', 11, 'NY001', '2020-01-01 10:10:10', 1),
  ('PED01', 18, 'NY001', '2018-10-01 10:10:10', 13),
  ('PED01', 20, 'NY001', '2020-01-01 10:10:10', 14),
  ('PED03', 22, 'NY001', '2020-01-01 08:10:10', 12),
  ('PED03', 14, 'NY001', '2020-01-01 10:10:10', 11),
  ('EME01', 10, 'NY001', '2020-01-01 10:10:10', 32),
  ('EME01', 8, 'NY001', '2018-10-01 10:10:10', 33),
  ('EME02', 7, 'NY001', '2020-01-01 10:10:10', 32),
  ('EME02', 4, 'NY001', '2020-01-01 08:10:10', 31);
    
