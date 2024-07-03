use project;
drop table registration;

CREATE table registration(
    id INT AUTO_INCREMENT PRIMARY KEY,
	name VARCHAR(100) NOT NULL,
    Username VARCHAR(100) NOT null,
    Email varchar(100) , 
    Password varchar(20), 
    age varchar(10) NOT NULL,
    gender VARCHAR(10) NOT NULL
    );
    
select * from registration;



