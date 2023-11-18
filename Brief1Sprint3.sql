--creation database
CREATE DATABASE connectEvents;
-- creation des tables
CREATE TABLE organisateurs(
    id int PRIMARY KEY AUTO_INCREMENT,
    l_name varchar(20) NOT null default 'mohammed',
    f_name varchar(20) NOT null,
    cin varchar(10) NOT null,
    email varchar(100) NOT null,
    phone int NOT null
);
CREATE TABLE participants(
    id int PRIMARY KEY AUTO_INCREMENT,
    l_name varchar(20) NOT null default 'mohammed',
    f_name varchar(20) NOT null,
    cin varchar(10) NOT null,
    email varchar(100) NOT null,
    phone int NOT null
);
CREATE TABLE lieux(
    id int PRIMARY KEY AUTO_INCREMENT,
    addresse varchar(255) NOT null,
    pays varchar(20) not null
);
CREATE TABLE evenements(
    id int PRIMARY KEY AUTO_INCREMENT,
    name varchar(20) NOT null,
    activite varchar(20) NOT null,
    cin varchar(10) NOT null,
    locals text NOT null,
    budget int NOT null,
    dates varchar(20) NOT null,
    id_lieu int not null,
    FOREIGN KEY (id_lieu) REFERENCES lieux(id)
);
CREATE TABLE sponsors(
    id int PRIMARY KEY AUTO_INCREMENT,
    name varchar(20) NOT null ,
  	categorie varchar(20) NOT null ,
    email varchar(100) NOT null
);
CREATE TABLE organisations(
    id int PRIMARY KEY AUTO_INCREMENT,
    id_organisateur int not null,
    FOREIGN KEY (id_organisateur) REFERENCES organisateurs(id),
     id_evenement int not null,
    FOREIGN KEY (id_evenement) REFERENCES  evenements(id)
);
CREATE TABLE participations(
    id int PRIMARY KEY AUTO_INCREMENT,
    id_organisateur int not null,
    FOREIGN KEY (id_organisateur) REFERENCES organisateurs(id),
     id_participant int not null,
    FOREIGN KEY (id_participant) REFERENCES  participants(id)
);
CREATE TABLE sponsorisations(
    id int PRIMARY KEY AUTO_INCREMENT,
    id_sponsor int not null,
    FOREIGN KEY (id_sponsor) REFERENCES sponsors(id),
     id_event int not null,
    FOREIGN KEY (id_event) REFERENCES  evenements(id)
);
-- drop les tables parce qu'il est des defaut dans les foreign key
DROP TABLE IF EXISTS sponsorisations, participations, organisations, sponsors, evenements, lieux, participants, organisateurs;
--creeer les tableaux a nouveaux
CREATE TABLE organisateurs(
    id int PRIMARY KEY AUTO_INCREMENT,
    l_name varchar(20) NOT null default 'mohammed',
    f_name varchar(20) NOT null,
    cin varchar(10) NOT null,
    email varchar(100) NOT null,
    phone int NOT null
);

CREATE TABLE participants(
    id int PRIMARY KEY AUTO_INCREMENT,
    l_name varchar(20) NOT null default 'mohammed',
    f_name varchar(20) NOT null,
    cin varchar(10) NOT null,
    email varchar(100) NOT null,
    phone int NOT null
);

CREATE TABLE lieux(
    id int PRIMARY KEY AUTO_INCREMENT,
    addresse varchar(255) NOT null,
    pays varchar(20) not null
);

CREATE TABLE evenements(
    id int PRIMARY KEY AUTO_INCREMENT,
    name varchar(20) NOT null,
    activite varchar(20) NOT null,
    id_organisateur int not null,
    locals text NOT null,
    budget int NOT null,
    dates varchar(20) NOT null,
    id_lieu int not null,
    FOREIGN KEY (id_organisateur) REFERENCES organisateurs(id),
    FOREIGN KEY (id_lieu) REFERENCES lieux(id)
);

CREATE TABLE sponsors(
    id int PRIMARY KEY AUTO_INCREMENT,
    name varchar(20) NOT null ,
    categorie varchar(20) NOT null ,
    email varchar(100) NOT null
);

CREATE TABLE organisations(
    id int PRIMARY KEY AUTO_INCREMENT,
    id_organisateur int not null,
    id_evenement int not null,
    FOREIGN KEY (id_organisateur) REFERENCES organisateurs(id),
    FOREIGN KEY (id_evenement) REFERENCES evenements(id)
);

CREATE TABLE participations(
    id int PRIMARY KEY AUTO_INCREMENT,
    id_organisateur int not null,
    id_participant int not null,
    FOREIGN KEY (id_organisateur) REFERENCES organisateurs(id),
    FOREIGN KEY (id_participant) REFERENCES participants(id)
);

CREATE TABLE sponsorisations(
    id int PRIMARY KEY AUTO_INCREMENT,
    id_sponsor int not null,
    id_event int not null,
    FOREIGN KEY (id_sponsor) REFERENCES sponsors(id),
    FOREIGN KEY (id_event) REFERENCES evenements(id)
);
--change storige engine
DROP TABLE IF EXISTS sponsorisations, participations, organisations, sponsors, evenements, lieux, participants, organisateurs;

ALTER TABLE sponsorisations ENGINE = 'InnoDB';




CREATE TABLE organisateurs(
    id int PRIMARY KEY AUTO_INCREMENT,
    l_name varchar(20) NOT null default 'mohammed',
    f_name varchar(20) NOT null,
    cin varchar(10) NOT null,
    email varchar(100) NOT null,
    phone int NOT null
) ENGINE=InnoDB;

CREATE TABLE participants(
    id int PRIMARY KEY AUTO_INCREMENT,
    l_name varchar(20) NOT null default 'mohammed',
    f_name varchar(20) NOT null,
    cin varchar(10) NOT null,
    email varchar(100) NOT null,
    phone int NOT null
) ENGINE=InnoDB;

CREATE TABLE lieux(
    id int PRIMARY KEY AUTO_INCREMENT,
    addresse varchar(255) NOT null,
    pays varchar(20) not null
) ENGINE=InnoDB;

CREATE TABLE evenements(
    id int PRIMARY KEY AUTO_INCREMENT,
    name varchar(20) NOT null,
    activite varchar(20) NOT null,
    id_organisateur int not null,
    locals text NOT null,
    budget int NOT null,
    dates varchar(20) NOT null,
    id_lieu int not null,
    FOREIGN KEY (id_organisateur) REFERENCES organisateurs(id),
    FOREIGN KEY (id_lieu) REFERENCES lieux(id)
) ENGINE=InnoDB;

CREATE TABLE sponsors(
    id int PRIMARY KEY AUTO_INCREMENT,
    name varchar(20) NOT null ,
    categorie varchar(20) NOT null ,
    email varchar(100) NOT null
) ENGINE=InnoDB;

CREATE TABLE organisations(
    id int PRIMARY KEY AUTO_INCREMENT,
    id_organisateur int not null,
    id_evenement int not null,
    FOREIGN KEY (id_organisateur) REFERENCES organisateurs(id),
    FOREIGN KEY (id_evenement) REFERENCES evenements(id)
) ENGINE=InnoDB;

CREATE TABLE participations(
    id int PRIMARY KEY AUTO_INCREMENT,
    id_organisateur int not null,
    id_participant int not null,
    FOREIGN KEY (id_organisateur) REFERENCES organisateurs(id),
    FOREIGN KEY (id_participant) REFERENCES participants(id)
) ENGINE=InnoDB;

CREATE TABLE sponsorisations(
    id int PRIMARY KEY AUTO_INCREMENT,
    id_sponsor int not null,
    id_event int not null,
    FOREIGN KEY (id_sponsor) REFERENCES sponsors(id),
    FOREIGN KEY (id_event) REFERENCES evenements(id)
) ENGINE=InnoDB;
--insert  data in all tables
INSERT INTO organisateurs (l_name, f_name, cin, email, phone) VALUES 
('Smith', 'John', '1234567890', 'johnsmith@example.com', 1234567890),
('Johnson', 'Jane', '0987654321', 'janejohnson@example.com', 9876543210),
('Williams', 'David', '1357924680', 'davidwilliams@example.com', 1357924680),
('Brown', 'Emily', '2468013579', 'emilybrown@example.com', 2468013579),
('Jones', 'Michael', '9876543210', 'michaeljones@example.com', 9876543210),
('Garcia', 'Maria', '4567890123', 'mariagarcia@example.com', 4567890123),
('Martinez', 'Daniel', '5678901234', 'danmartinez@example.com', 5678901234),
('Hernandez', 'Laura', '6789012345', 'laurahernandez@example.com', 6789012345),
('Lopez', 'Jose', '7890123456', 'joselopez@example.com', 7890123456),
('Gonzalez', 'Ana', '8901234567', 'anagonzalez@example.com', 8901234567);

INSERT INTO participants (l_name, f_name, cin, email, phone) VALUES 
('Taylor', 'Sarah', '1234567890', 'sarahtaylor@example.com', 1234567890),
('Anderson', 'Robert', '0987654321', 'robertanderson@example.com', 9876543210),
('Thomas', 'Linda', '1357924680', 'lindathomas@example.com', 1357924680),
('Harris', 'William', '2468013579', 'williamharris@example.com', 2468013579),
('Martin', 'Karen', '9876543210', 'karenmartin@example.com', 9876543210),
('Jackson', 'Edward', '4567890123', 'edwardjackson@example.com', 4567890123),
('White', 'Amanda', '5678901234', 'amandawhite@example.com', 5678901234),
('Thompson', 'Mark', '6789012345', 'markthompson@example.com', 6789012345),
('Garcia', 'Patricia', '7890123456', 'patriciagarcia@example.com', 7890123456),
('Martinez', 'Christopher', '8901234567', 'chrismartinez@example.com', 8901234567);

INSERT INTO lieux (addresse, pays) VALUES 
('123 Main St, Anytown', 'USA'),
('456 Elm St, Othertown', 'USA'),
('789 Oak St, Anycity', 'USA'),
('321 Maple St, Othercity', 'USA'),
('654 Pine St, Anyvillage', 'USA'),
('987 Cedar St, Othervillage', 'USA'),
('741 Birch St, Someplace', 'USA'),
('852 Spruce St, Otherplace', 'USA'),
('963 Walnut St, Anotherplace', 'USA'),
('159 Cherry St, Lastplace', 'USA');

INSERT INTO evenements (name, activite, id_organisateur, locals, budget, dates, id_lieu) VALUES 
('Event 1', 'Conference', 1, 'Room 101, Building A', 10000, '2023-01-15', 1),
('Event 2', 'Workshop', 2, 'Hall B, Convention Center', 15000, '2023-02-20', 2),
('Event 3', 'Seminar', 3, 'Auditorium C, Civic Center', 20000, '2023-03-25', 3),
('Event 4', 'Exhibition', 4, 'Gallery D, Exhibition Hall', 25000, '2023-04-30', 4),
('Event 5', 'Symposium', 5, 'Theater E, Cultural Center', 30000, '2023-05-15', 5),
('Event 6', 'Festival', 6, 'Field F, Fairgrounds', 35000, '2023-06-20', 6),
('Event 7', 'Concert', 7, 'Stadium G, Sports Complex', 40000, '2023-07-25', 7),
('Event 8', 'Competition', 8, 'Arena H, Recreation Center', 45000, '2023-08-30', 8),
('Event 9', 'Carnival', 9, 'Park I, Amusement Park', 50000, '2023-09-15', 9),
('Event 10', 'Celebration', 10, 'Square J, Town Square', 55000, '2023-10-20', 10);

INSERT INTO sponsors (name, categorie, email) VALUES 
('ABC Company', 'Technology', 'abc@example.com'),
('XYZ Corporation', 'Finance', 'xyz@example.com'),
('123 Industries', 'Manufacturing', '123@example.com'),
('456 Enterprises', 'Retail', '456@example.com'),
('789 Co.', 'Hospitality', '789@example.com'),
('Big Corp', 'Energy', 'bigcorp@example.com'),
('Small Biz', 'Services', 'smallbiz@example.com'),
('Local Shop', 'Food & Beverage', 'localshop@example.com'),
('Global Inc', 'Consulting', 'global@example.com'),
('Mega Company', 'Transportation', 'mega@example.com');

INSERT INTO organisations (id_organisateur, id_evenement) VALUES 
(1, 1),
(2, 2),
(3, 3),
(4, 4),
(5, 5),
(6, 6),
(7, 7),
(8, 8),
(9, 9),
(10, 10);

INSERT INTO participations (id_organisateur, id_participant) VALUES 
(1, 1),
(2, 2),
(3, 3),
(4, 4),
(5, 5),
(6, 6),
(7, 7),
(8, 8),
(9, 9),
(10, 10);

INSERT INTO sponsorisations (id_sponsor, id_event) VALUES 
(1, 1),
(2, 2),
(3, 3),
(4, 4),
(5, 5),
(6, 6),
(7, 7),
(8, 8),
(9, 9),
(10, 10);
