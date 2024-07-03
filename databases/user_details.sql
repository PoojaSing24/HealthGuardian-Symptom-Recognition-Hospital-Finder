use project;

CREATE table appointment(
    id INT AUTO_INCREMENT PRIMARY KEY,
     Username VARCHAR(100) NOT null,
	 Email varchar(100) ,
	name VARCHAR(100) NOT NULL,
    age varchar(10) NOT NULL,
    gender VARCHAR(10) NOT NULL ,
    date varchar(50),
    time varchar(50),
    doctor_name varchar(100) ,
    disease_name varchar(50)
    );
    
    drop table appointment;
    
    select * from appointment ;

insert into appointment(Username , Email , name,age ,gender ,  date ,time ,doctor_name ,disease_name)
values
('pooja01' , 'ransingpooja2000@gmail.com' , 'pooja ransing' ,'22','female' , '26-06-2024' , '10:30:AM' , 'Dr. Dhyey Pandya ' ,'GERD');