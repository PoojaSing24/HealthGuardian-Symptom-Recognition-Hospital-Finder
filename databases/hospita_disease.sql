use project;
select * from specility_disease;

drop table specility_disease;

CREATE TABLE specility_disease (
    disease_name VARCHAR(50),
	specility_name VARCHAR(50),
    FOREIGN KEY (disease_name) REFERENCES disease(Disease_name),
    FOREIGN KEY (specility_name) REFERENCES specialties(specialty_name)
    );

INSERT INTO specility_disease (disease_name , specility_name)
VALUES
('Acne' , 'Dermatologist'),
('Acne' , 'Dermatology'),
('Acne' , 'Cosmetic'),
('Acne' , 'General Medicine'),
('Acne' , 'Internal Medicine'),
('Acne' , 'Endocrinologist'),
('AIDS' , 'Infectious Diseases'),
('AIDS' , 'Internal Medicine'),
('AIDS' , 'HIV Physician'),
('AIDS' , 'Immunology'),
('AIDS' , 'Infectious Diseases Physician'),
('Alcoholic hepatitis' , 'Gastroenterologist'),
('Alcoholic hepatitis' , 'Liver Transplant'),
('Alcoholic hepatitis' , 'Internal Medicine'),
('Alcoholic hepatitis', 'Hepatobiliary Surgeon'),
('Arthritis', 'Allergy'),
 ('Allergy ', 'Allergy'), 
('Allergy ', 'General Medicine'),
('Arthritis' , 'Rheumatology'),
('Arthritis' , 'orthopedics'),
('Arthritis' , 'Joint Replacement Surgery'),
('Bronchial Asthma','chest medicine'),
('Bronchial Asthma','Pulmonologist'),
('Cervical spondylosis','Spine Surgeon'),
('Cervical spondylosis','Spine Surgery'),
('Cervical spondylosis','orthopedics'),
('Cervical spondylosis','Orthopedic & Joint Replacement'),
('Chicken pox' , 'Dermatologist'),
('Chicken pox' , 'Pediatrics'),
('Chicken pox' , 'Pediatrician'),
('Chicken pox' , 'Pediatrics Gastroenterology'),
('Chicken pox' , 'Pediatrics Neonatology'),
('Chicken pox' , 'Infectious Diseases'),
('Chicken pox' , 'Infectious Diseases Physician'),
('Chicken pox' , 'Pediatrics Surgery'),
('Chronic cholestasis', ' Hepatobiliary Surgeon'),
('Chronic cholestasis', 'Gastroenterologist'),
('Chronic cholestasis', 'Gastrointestinal Surgeon'),
('Chronic cholestasis', 'General Surgeon'),
('Chronic cholestasis', 'Liver Surgery'),
('Chronic cholestasis', 'Liver Transplant'),
('Common Cold' , 'General Medicine'),
('Common Cold' , 'General Physician'),
('Common Cold' , 'Internal Medicine'),
('Common Cold' , 'Pediatrics'),
('Common Cold' , 'Infectious Diseases Physician'),
('Common Cold' , 'Pulmonologist'),
('Common Cold' , 'ENT'),
('Common Cold' , 'Allergy'),
('Dengue' , 'Infectious Diseases'),
('Dengue' , 'Infectious Diseases Physician'),
('Dengue' , 'Internal Medicine'),
('Dengue' , 'Pediatrics'),
('Dengue' , 'Critical Care Medicine'),
('Dengue' , 'Emergency'),
('Diabetes ' , 'Diabetes Specialist'),
('Diabetes ' , 'Diabetologist'),
('Diabetes ' , 'Endocrinologist'),
('Diabetes ' , 'Internal Medicine'),
('Diabetes ' , 'General Medicine'),
('Diabetes ' , 'General Physician'),
('Dimorphic hemmorhoids(piles)' , 'general surgeon'),
('Drug Reaction', 'Allergy'),
('Drug Reaction', 'Dermatologist'),
('Drug Reaction', 'Dermatology'),
('Drug Reaction', 'Immunology'),
('Fungal infection', 'Dermatologist'),
('Fungal infection', 'Dermatology'),
('Fungal infection', 'Infectious Diseases'),
('Fungal infection', 'Infectious Diseases Physician'),
('Gastroenteritis', 'Gastroenterologist'),
('Gastroenteritis', 'General Physician'),
('Gastroenteritis', 'General Medicine'),
('Gastroenteritis', 'Pediatrics Gastroenterology'),
('Gastroenteritis', 'Infectious Diseases'),
('Gastroenteritis', 'Internal Medicine'),
('Gastroenteritis', 'Infectious Diseases Physician'),
('GERD', 'Gastroenterologist'),
('GERD', 'General Physician'),
('GERD', 'General Medicine'),
('GERD', 'Internal Medicine'),
('Heart attack', 'Cardiology'),
('Heart attack', 'Cardiothoracic'),
('Heart attack', 'Cardiovascular and Thoracic Surgery (CVTS)'),
('Heart attack', 'General Medicine'),
('Heart attack', 'General Physician'),
('Heart attack', 'Emergency'),
('Heart attack', 'Critical Care Medicine'),
('hepatitis A', 'Gastroenterologist'),
('hepatitis A', 'Infectious Diseases'),
('hepatitis A', 'Infectious Diseases Physician'),
('hepatitis A', 'General Medicine'),
('hepatitis A', 'General Physician'),
('Hepatitis B', 'Gastroenterologist'),
('Hepatitis B', 'Infectious Diseases'),
('Hepatitis B', 'Infectious Diseases Physician'),
('Hepatitis B', ' Hepatobiliary Surgeon'),
('Hepatitis B', 'General Medicine'),
('Hepatitis B', 'General Physician'),
('Hepatitis C', 'Gastroenterologist'),
('Hepatitis C', ' Hepatobiliary Surgeon'),
('Hepatitis C', 'Infectious Diseases'),
('Hepatitis C', 'Infectious Diseases Physician'),
('Hepatitis C', 'Internal Medicine'),
('Hepatitis D', ' Hepatobiliary Surgeon'),
('Hepatitis D', 'Infectious Diseases'),
('Hepatitis D', 'Infectious Diseases Physician'),
('Hepatitis D', 'Gastroenterologist'),
('Hepatitis D', 'Liver Surgery'),
('Hepatitis D', 'Liver Transplant'),
('Hepatitis E', 'Internal Medicine'),
('Hepatitis E', 'Infectious Diseases'),
('Hepatitis E', 'Infectious Diseases Physician'),
('Hepatitis E', 'Gastroenterologist'),
('Hypertension ' , 'Cardiology'),
('Hypertension ' , 'Internal Medicine'),
('Hypertension ' , 'Nephrology'),
('Hyperthyroidism' ,'Internal Medicine'),
('Hyperthyroidism' ,'Endocrinologist'),
('Hypoglycemia' ,'Endocrinologist'),
('Hypoglycemia' ,'Internal Medicine'),
('Hypoglycemia' ,'Diabetologist'),
('Hypoglycemia' ,'Diabetes Specialist'),
('Hypothyroidism' ,'Endocrinologist'),
('Hypothyroidism' ,'Internal Medicine'),
('Impetigo' , 'Dermatologist'),
('Impetigo' , 'Dermatology'),
('Jaundice' , ' Hepatobiliary Surgeon'),
('Malaria' , 'Infectious Diseases'),
('Malaria' , 'Infectious Diseases Physician'),
('Migraine' , 'Neuro Surgery'),
('Migraine' , 'Neurologist'),
('Migraine' , 'Neurosurgery'),
('Migraine' , 'Neurology'),
('Osteoarthristis' ,'Orthopedic & Joint Replacement'),
('Paralysis (brain hemorrhage)' ,'Neuro Surgery'),
('Paralysis (brain hemorrhage)' ,'Neurologist'),
('Paralysis (brain hemorrhage)' ,'Neurosurgery'),
('Paralysis (brain hemorrhage)' ,'Neurology'),
('Paralysis (brain hemorrhage)' ,'Spine Surgeon'),
('Paralysis (brain hemorrhage)' ,'Spine Surgery'),
('Peptic ulcer diseae' ,'Gastrointestinal Surgeon'),
('Peptic ulcer diseae' ,'Gastroenterologist'),
('Peptic ulcer diseae' ,'General Medicine'),
('Peptic ulcer diseae' ,'General Physician'),
('Peptic ulcer diseae' ,'general surgeon'),
('Peptic ulcer diseae' ,'Internal Medicine'),
('Pneumonia' , 'chest medicine'),
('Pneumonia' , 'Pulmonologist'),
('Pneumonia' , 'Critical Care Medicine'),
('Pneumonia' , 'Infectious Diseases'),
('Pneumonia' , 'Infectious Diseases Physician'),
('Pneumonia' , 'Internal Medicine'),
('Psoriasis' ,'Dermatologist') ,
('Psoriasis' ,'Dermatology') ,
('Psoriasis' ,'Immunology') ,
('Psoriasis' ,'Rheumatology'),
('Tuberculosis' ,'chest medicine'),
('Tuberculosis' ,'Pulmonologist'),
('Tuberculosis' ,'Infectious Diseases'),
('Tuberculosis' , 'Internal Medicine'),
('Tuberculosis' ,'Infectious Diseases Physician'),
('Typhoid' ,'Internal Medicine'),
('Typhoid' ,'Infectious Diseases'),
('Urinary tract infection' , 'Urologist'),
('Urinary tract infection' , 'Urology'),
('Varicose veins' ,'Vascular Surgery'),
('Allergy ', 'General Medicine'),
('Allergy ', 'General');

INSERT INTO specility_disease (disease_name, specility_name)
VALUES
('Allergy ', 'Allergy'),
('Allergy ', 'Immunology');



