use project;
drop table specialties;
show tables;

select * from specialties  ;


CREATE TABLE specialties (
    specialty_name VARCHAR(100) primary key unique
);

INSERT INTO specialties (specialty_name)
VALUES
('Arthroscopy'),
('Shoulder Surgery'),
('Breast Surgery'),
('Cardiology'),
('Cancer Surgery'),
('Cosmetic'),
('Plastic Surgery'),
('Critical Care Medicine'),
('ENT'),
('General Medicine'),
('General'),
('GI Surgery'),
('Gynecology'),
('Obstetrics'),
('Hand Surgery'),
('Intensive Care Medicine'),
('Joint Replacement Surgery'),
('Liver Surgery'),
('Nephrology'),
('Neurology'),
('Neuro Surgery'),
('Obesity Surgery'),
('Orthopedic & Joint Replacement'),
('Pain Management'),
('Pediatrics'),
('Pediatrics Gastroenterology'),
('Pediatrics Neonatology'),
('Pediatrics Surgery'),
('Psychiatry'),
('Physiotherapy'),
('Radiology'),
('Spine Surgery'),
('Urology'),
('Vascular Surgery');

INSERT INTO specialties (specialty_name)
VALUES
('Spine_Clinic') ,
 ('Neurosurgery') ,
 ('Dentistry') ,
 ('Dermatology') , 
 ('Dexa Scan '),
('Medicine') , 
('Surgery') , 
('Paediatric') ,
(' Obstetrics'),
(' Child Development Centre(TDH)') ,
 ('Transplant Surgery') ,
 ('Anaesthesia Services') ,
 ('Critical care'),
 ('Integrative Medicine'),
 ('Pregnancy care') ,
 ('Fertility treatment '),
('orthopedics' ),
( 'knee Replacement') ,
('knee joint preservation') ,
 ('Hip Replacement') , 
 ('Arthoroscopy') ,
 ('Spinr Care') ,
 ('Spine injury') ,
 ('Cell Based Therapy') ,
 ('Oncology/Oncosurgery,General Surgery/Laparoscopic Surgery') ,
 ('Rheumatology') ,
 ('Diabetes Specialist') , 
 ('Diagnostic') ,  
 ('Facio-Maxillary/Dental') , 
 ('Dietetics') , 
 ('Emergency') , 
 ('Fistula') , 
 ('piles') , 
 ('Fissures'),
('Bariatric Surgery') ,
('Cardiac sciences') ,
('Cosmetic Surgery') , 
('Infertility') , 
('Oncology') , 
('Treansplants')
('pregnancy')
('Urologist') ,
('Dermatologist'),
('Gastrointestinal Surgeon'),
('General Physician') ,
('Internal Medicine') ,
('Laparoscopic Surgeon'),
('Oncologist'),
('Pediatrician'),
('Pulmonologist'),
('Andrologist'),
('Bariatric Surgeon'),
('Gastroenterologist'),
('Neurologist'),
('Spine Surgeon'),
('Diabetologist'),
('Specialist'),
('Infectious Diseases Physician'),
('Ophthalmologist'),
('Pediatric Surgeon'),
('Psychologist'),
('Radiologist'),
('Sports Medicine Surgeon'),
 ('Bariatrics'),
 ('Breast Health') ,
 ('Cancer Surgeries') , 
 ('Physiotherapy and Rehablitation') ,
 ('Urgent Care'),
('Antenatal classes'),
('general surgeon'),
('Infertility Specialist'), 
('PAEDIATRICS NEONATOLOGY'),
('General Ortho'),
('Trauma'),
('spine'),
('laparosloric surgery'),
('pathologist'),
('chest medicine'),
('Maxillo facial surgery'),
('prosthodentist'),
('implantology'),
('anasthecia'),
('gastrologist'),
('Adult Critical Care'),
('Adult Emergency Medicine'),
('Advanced Wound Care'),
(' Stoma Care'),
('Allergy'),
('Immunology'),
('Ayurveda'),
('Bladder Clinic'),
('Paediatrics'),
('reproductive health'),
('Gynarcologist'),
('IVF'),
('Minimal Access Surgery'),
('Gynaec Oncologist'), 
('Medical Oncologist'),
('Surgical Oncologist'),
('Haematologist'),
('Nuclear Medicine Specialist'),
('Adult CTVS'),
('Cardiothoracic'),
('Acupressure'),
('SAudiologist'),
(' Speech Therapist'),
('Andrology'),
(' Sexology'), 
('Bariatric'),
(' Metabolic Surgery'),
('Neonatology'),
('Pediatric Orthopedic'),
('Robotic'),
('Endoscopic Spine Surgery'),
('Geriatric Neurologist'),
 ('Pediatric Dentist'),
 ('Therapist'),
('Clinical Psychologist'),
('Counselling Psychologist'),
('Eye Surgeon'),
('Consultant Physician'),
('Otorhinolaryngologist'),
('Radiation Oncologist'),
('Liver Transplant'),
('Multi-organ Transplant'),
(' Hepatobiliary Surgeon'),
(' Hepatobiliary Surgeon'),
('Physician'),
 ('Paediatric Cardiac Surgery'),
 ('Paediatric Endocrinology'),
 ('Pain Clinic'),
 ('Homeopathy'),
 ('Endocrinologist'),
 ('Diabetic Foot Surgeon'),
 ('Endoscopic'),
  ('chest physician'),
('pulmonogist'),
('sexology'),
('Fertility Specialist'),
('Fetal Medicine Specialist'),
('Cosmetologist'),
('Nutritionist'),
('Tuberculous'),
 ('Infectious Diseases'), 
('HIV Physician'),
('Dental Surgeon'),
('Dentist'),
('Oral'),
 ('MaxilloFacial Surgeon'),
 ('Implantologist'),
 ('Prosthodontist'),
 ('Orthodontist');

INSERT INTO specialties (specialty_name)
VALUES 
('Preventive Dentistry');

SELECT * FROM specialties ;


SELECT DISTINCT specialties.specialty_name
FROM specialties
JOIN doctor_specialties ON specialties.specialty_name = doctor_specialties.specialty_name
JOIN doctor ON doctor_specialties.doctor_id = doctor.d_id
JOIN hospital ON doctor.hospital_id = hospital.h_id
WHERE hospital.h_name = 'deccan harikar hospital';

SELECT DISTINCT specialty_name
FROM doctor_specialties
WHERE doctor_id IN (SELECT d_id FROM doctor WHERE hospital_id = (SELECT h_id FROM hospital WHERE h_name = 'deccan harikar hospital'));

SELECT DISTINCT specialty_name
FROM doctor_specialties
WHERE doctor_id IN (
    SELECT d_id
    FROM doctor
    WHERE hospital_id = (
        SELECT h_id
        FROM hospital
        WHERE h_name = 'deccan harikar hospital'
    )
);













