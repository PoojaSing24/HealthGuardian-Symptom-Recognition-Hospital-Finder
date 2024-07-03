show databases;
use project;
show tables;
drop table disease;

CREATE TABLE disease (
	Disease_name VARCHAR(50) primary key 
);

select * from disease;

insert into disease values('Fungal infection');
insert into disease values('Allergy ');


INSERT INTO disease (Disease_name)
VALUES
('GERD'),
('Chronic cholestasis') ,
('Drug Reaction'),
('Peptic ulcer diseae'),
('AIDS'),
('Diabetes '),
('Gastroenteritis'),
('Bronchial Asthma'),
('Hypertension ') ,
('Migraine'),
('Cervical spondylosis'),
('Paralysis (brain hemorrhage)'),
('Jaundice'),
('Malaria'),
('Chicken pox'),
('Dengue'),
('Typhoid'),
('hepatitis A'),
('Hepatitis B'),
('Hepatitis C'),
('Hepatitis D'),
('Hepatitis E'),
('Alcoholic hepatitis'),
('Tuberculosis'),
('Common Cold'),
('Pneumonia'),
('Dimorphic hemmorhoids(piles)'),
('Heart attack'),
('Varicose veins'),
('Hypothyroidism'),
('Hyperthyroidism'),
('Hypoglycemia'),
('Osteoarthristis'),
('Arthritis'),
('(vertigo) Paroymsal  Positional Vertigo'),
('Acne'),
('Urinary tract infection'),
('Psoriasis'),
('Impetigo');

select * from disease;


SELECT  hospital.h_name, hospital.h_location, hospital.contact, hospital.website FROM hospital
JOIN doctor ON hospital.h_id = doctor.hospital_id
JOIN doctor_specialties ON doctor.d_id = doctor_specialties.doctor_id
JOIN specility_disease ON doctor_specialties.specialty_name = specility_disease.specility_name
JOIN disease ON specility_disease.disease_name = disease.Disease_name
WHERE disease.Disease_name = 'GERD';

 SELECT hospital.h_name, hospital.h_location
        FROM hospital
        INNER JOIN doctor ON hospital.h_id = doctor.hospital_id
        INNER JOIN doctor_specialties ON doctor.d_id = doctor_specialties.doctor_id
        INNER JOIN specialties ON doctor_specialties.specialty_name = specialties.specialty_name
        INNER JOIN specility_disease ON specialties.specialty_name = specility_disease.specility_name
        INNER JOIN disease ON specility_disease.disease_name = disease.Disease_name
        WHERE disease.Disease_name = 'Allergy' ;
        
SELECT DISTINCT d.d_name
FROM doctor d
JOIN doctor_specialties ds ON d.d_id = ds.doctor_id
JOIN specialties s ON ds.specialty_name = s.specialty_name
JOIN specility_disease sd ON s.specialty_name = sd.specility_name
JOIN disease dis ON sd.disease_name = dis.Disease_name
WHERE dis.Disease_name = 'Acne';

SELECT DISTINCT d.d_name
FROM doctor d
JOIN doctor_specialties ds ON d.d_id = ds.doctor_id
JOIN specialties s ON ds.specialty_name = s.specialty_name
JOIN specility_disease sd ON s.specialty_name = sd.specility_name
JOIN disease dis ON sd.disease_name = dis.Disease_name
JOIN hospital h ON d.hospital_id = h.h_id
WHERE dis.Disease_name = 'Acne'
AND h.h_name = 'deccan harikar hospital';

SELECT d.d_name AS doctor_name
FROM hospital h
JOIN doctor d ON h.h_id = d.hospital_id
JOIN doctor_specialties ds ON d.d_id = ds.doctor_id
JOIN specility_disease sd ON ds.specialty_name = sd.specility_name
WHERE h.h_name = 'ESI hospital' AND sd.disease_name = 'Bronchial Asthma';

SELECT DISTINCT ds.specialty_name AS specialty
FROM hospital h
JOIN doctor d ON h.h_id = d.hospital_id
JOIN doctor_specialties ds ON d.d_id = ds.doctor_id
JOIN specility_disease sd ON ds.specialty_name = sd.specility_name
WHERE h.h_name = 'ESI hospital' AND sd.disease_name = 'Bronchial Asthma';

SELECT ds.specialty_name
FROM doctor d
JOIN doctor_specialties ds ON d.d_id = ds.doctor_id
WHERE d.d_name = 'Dr. Rahul Kendre';

SELECT DISTINCT hospital.h_name, hospital.h_location
FROM hospital
INNER JOIN doctor ON hospital.h_id = doctor.hospital_id
INNER JOIN doctor_specialties ON doctor.d_id = doctor_specialties.doctor_id
WHERE doctor_specialties.specialty_name = 'Bronchial Asthma';

SELECT DISTINCT d_name
FROM doctor
WHERE doctor.hospital_id = (
    SELECT h_id
    FROM hospital
    WHERE h_name = 'ESI hospital'
);


