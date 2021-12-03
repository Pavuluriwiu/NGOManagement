CREATE DATABASE IF NOT EXISTS ngo DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci;
USE ngo;


CREATE TABLE donation (
  donation_id int(10) NOT NULL,
  member_id int(10) NOT NULL,
  amount float(10,2) NOT NULL,
  donation_date date NOT NULL,
  purpose varchar(30)
);


CREATE TABLE member (
  member_id int(10) NOT NULL,
  email_id varchar(30) NOT NULL,
  password varchar(30) NOT NULL,
  member_name varchar(30) NOT NULL,
  member_address varchar(30),
  contact_number varchar(15) NOT NULL
);


CREATE TABLE participate (
  participate_id int(10) NOT NULL,
  campaign_name varchar(30) NOT NULL,
  member_id int(10) NOT NULL,
  participate_date date
);


CREATE TABLE refer (
  refer_id int(10) NOT NULL,
  member_id int(10) NOT NULL,
  name varchar(30) NOT NULL,
  contact_number varchar(20),
  email_id varchar(30),
  comments varchar(50),
  status varchar(30)
);


ALTER TABLE donation
  ADD PRIMARY KEY (donation_id);

ALTER TABLE member
  ADD PRIMARY KEY (member_id);

ALTER TABLE participate
  ADD PRIMARY KEY (participate_id);


ALTER TABLE refer
  ADD PRIMARY KEY (refer_id);
COMMIT;
