use project;
drop table doctor_specialties;

select * from doctor_specialties;

CREATE TABLE doctor_specialties (
    doctor_id varchar(50),
    specialty_name varchar(100),
    PRIMARY KEY (doctor_id, specialty_name),
    FOREIGN KEY (doctor_id) REFERENCES doctor(d_id),
    FOREIGN KEY (specialty_name) REFERENCES specialties(specialty_name)
);

insert into doctor_specialties(doctor_id , specialty_name)
values
('D1' , 'gastrointestinal surgeon'),
('D1' , 'general surgeon'),
('D2', 'GYNECOLOGY'),
('D2', 'OBSTETRICS'),
('D2', 'Infertility Specialist'),
('D3', 'GYNECOLOGY'),
('D3', 'OBSTETRICS'),
('D4', 'PHYSIOTHERAPY'),
('D5', 'PAEDIATRICS NEONATOLOGY'),
('D6', 'PAEDIATRICS NEONATOLOGY'),
 ('D7', 'PAEDIATRICS NEONATOLOGY'),
 ('D8', 'Urology'),
 ('D9', 'Urology'),
('D10', 'GYNECOLOGY'),
('D10' , ' OBSTETRICS'),
('D11', 'General Ortho'),
('D11' , 'Trauma'),
 ('D12', 'General Ortho'),
('D12' , 'Trauma'),
('D13', 'General Ortho'),
('D13' , 'Trauma'),
('D14', 'General Ortho'),
('D14' , 'Trauma'),
('D15', 'General Ortho'),
('D15' , 'Trauma'),
('D15' , 'joint replacement surgery'),
('D16', 'General Ortho'),
('D16' , 'Trauma'),
('D16' , 'joint replacement surgery'),
('D16' , 'Arthroscopy'),
('D17', 'General Ortho'),
('D17' , 'Trauma'),
('D17' , 'spine'),
 ('D18', 'joint replacement surgery'),
('D18', 'spine'),
('D19', 'joint replacement surgery'),
('D19', 'Arthroscopy'),
('D20', 'spine'),
('D21', 'spine'),
('D22', 'spine'),
 ('D23', 'Arthroscopy'),
('D24', 'General'),
('D24', 'laparosloric surgery'),
('D25', 'General'),
('D25', 'laparosloric surgery'),
 ('D26', 'Vascular Surgery'),
('D27', 'Neurology'),
('D28', 'Oncologist'),
('D29', 'General Medicine'),
('D30', 'General Medicine'),
('D31', 'General Medicine'),
('D32', 'pathologist'),
('D33', 'chest medicine'),
('D34', 'chest medicine'),
('D35', 'Radiology'),
('D36', 'Radiology'),
('D37', 'Urology'),
('D38', 'Urology'),
('D39', 'Cardiology'),
('D40', 'Cardiology'),
('D41', 'Cardiology'),
('D42', 'Maxillo facial surgery'),
('D43', 'prosthodentist'),
('D43', 'implantology'),
('D44', 'Rheumatology'),
('D45', 'Plastic Surgery'),
('D46', 'Dermatology'),
('D47', 'anasthecia'),
('D48', 'anasthecia'),
('D49', 'anasthecia'),
('D50', 'anasthecia'),
('D51', 'anasthecia'),
('D52', 'pathologist'),
('D53', 'pathologist'),
('D54', 'Nephrology'),
('D55', 'Nephrology'),
('D56', 'Nephrology'),
('D57', 'Neuro Surgery'),
('D58', 'Neuro Surgery'),
('D59', 'Psychiatry'),
('D60', 'gastrologist');

INSERT INTO doctor_specialties (doctor_id, specialty_name)
VALUES('D61', 'Adult Critical Care'),
('D62', 'Adult Critical Care'),
('D63', 'Adult Critical Care'),
('D64', 'Adult Critical Care'),
('D65', 'Adult Critical Care'),
('D66', 'Adult Critical Care'),
('D67', 'Adult Critical Care'),
('D68', 'Adult Critical Care'),
('D69', 'Adult Critical Care'),
('D70', 'Adult Critical Care'),
('D71', 'Adult Critical Care'),
('D72', 'Adult Critical Care'),
('D73', 'Adult Emergency Medicine'),
('D73', 'Anaesthesia Services'),
('D74', 'Adult Emergency Medicine'),
('D75' , 'Paediatrics'),
('D76' , 'Anaesthesia Services'),
('D77' , 'Anaesthesia Services'),
('D78' , 'Anaesthesia Services'),
('D79' , 'Anaesthesia Services'),
('D79' , 'Pain Management');

INSERT INTO doctor_specialties (doctor_id, specialty_name)
VALUES
('D80' , 'Anaesthesia Services'),
('D81' , 'Anaesthesia Services'),
('D82' , 'Anaesthesia Services'),
('D83' , 'Anaesthesia Services'),
('D84' , 'Anaesthesia Services'),
('D85' , 'Anaesthesia Services'),
('D86' , 'Anaesthesia Services'),
('D87' , 'Anaesthesia Services'),
('D88' , 'Ayurveda'),
('D89' , 'Ayurveda'),
('D90' , 'Bariatric Surgeon'),
('D91' , 'Bariatric Surgeon'),
('D92' , 'General Medicine' ),
('D92' , 'Nephrology'),
('D93' , 'General Medicine' ),
('D93' , 'Nephrology'),
('D94' , 'Nephrology'),
('D95' , 'reproductive health'),
('D95', 'urology'),
('D95', 'transplant surgery'),
('D96' ,'Nephrology'),
('D97' , 'Paediatrics'),
('D97' , 'Nephrology'),
('D98' , 'Nephrology'),
('D99' , 'Nephrology'),
('D100' , 'Vascular Surgery'),
('D101' , 'Vascular Surgery'),
('D102' , 'Vascular Surgery'),
('D103' , 'urology'),
('D103' , 'Transplant Surgery'),
('D104' , 'Gynarcologist'),
('D105' , 'Gynarcologist'),
('D105' , 'Infertility Specialist'),
('D105' , 'Obstetrics'),
('D105' , 'IVF'),
('D106' , 'Gynarcologist'),
('D107' , 'Gynarcologist'),
('D107' , 'Obstetrics'),
('D108' , 'Gynarcologist'),
('D109' , 'Obstetrics'),
('D109' , 'Gynarcologist'),
('D110' , 'IVF'),
('D110' , 'reproductive health'),
('D111' , 'Gynarcologist'),
('D112' , 'Gynarcologist'),
('D113' , 'Gynarcologist'),
('D114' , 'Gynarcologist'),
('D115' , 'Gynarcologist'),
('D115' , 'Obstetrics'),
('D116' , 'Obstetrics'),
('D116' , 'Gynarcologist'),
('D117' , 'Gynarcologist'),
('D117' , 'Obstetrics'),
('D118' , 'Obstetrics'),
('D118' , 'Gynarcologist'),
('D119' , 'Gynarcologist'),
('D120' , 'Gynarcologist'),
('D121' , 'Gynarcologist'),
('D122' , 'Gynarcologist');

INSERT INTO doctor_specialties (doctor_id, specialty_name)
VALUES
('D123' , 'Plastic Surgery'),
('D124' , 'Obstetrics'),
('D124' , 'Gynarcologist'),
('D125' ,'general surgeon'),
('D126' , 'Obstetrics'),
('D126' , 'Gynarcologist'),
('D127' , 'spine'),
('D128' , 'orthopedics'),
('D129' , 'Internal Medicine'),
('D130' , 'ENT'),
('D131' , 'ENT'),
('D132' , 'orthopedics'),
('D133' , 'orthopedics'),
('D134','Radiology'),
('D135' , 'Plastic Surgery'),
('D136', 'urology'),
('D137', 'urology'),
('D138', 'urology'),
('D139' , 'orthopedics'),
('D140' , 'general surgeon'),
('D140','Laparoscopic Surgeon'),
('D140','Minimal Access Surgery'),
('D141' , 'orthopedics'),
('D142' , 'orthopedics');

INSERT INTO doctor_specialties (doctor_id, specialty_name)
VALUES('D143' , 'Neurologist'),
('D144','Anaesthesia Services'),
('D145','Gynaec Oncologist'), 
('D145','Medical Oncologist'),
('D146','Breast Surgery'),
('D146','Surgical Oncologist'),
('D147','Medical Oncologist'),
('D148','Anaesthesia Services'),
('D149','Anaesthesia Services'),
('D150','Breast Surgery'),
('D151' ,'Haematologist'),
('D152' ,'Internal Medicine'),
('D153' , 'Plastic Surgery'),
('D153' , 'Cosmetic'),
('D154' , 'Cardiology'),
('D155' , 'Psychologist'),
('D156' , 'Adult CTVS'),
('D157' , 'Vascular Surgery'),
('D157' , 'Cardiothoracic'),
('D158' , 'Cardiology'),
('D159' , 'ENT'),
('D160' , 'Dermatologist'),
('D161' ,'Acupressure'),
('D162','Anaesthesia Services'),
('D163','Anaesthesia Services'),
('D164','Anaesthesia Services'),
('D165','Anaesthesia Services'),
('D166','SAudiologist'),
('D167','SAudiologist'),
('D168','Andrology'),
('D168',' Sexology'),
('D169','Bariatric'),
('D169',' Metabolic Surgery'),
('D170','Bariatric'),
('D170',' Metabolic Surgery');


INSERT INTO doctor_specialties (doctor_id, specialty_name)
VALUES
('D171' , 'Gynarcologist'),
('D171' , 'Obstetrics'),
('D171' , 'IVF'),
('D171','Laparoscopic Surgeon'),
('D172' ,'Paediatrics'),
('D172' ,'Neonatology'),
('D173' , 'Gynarcologist'),
('D173' , 'Obstetrics'),
('D173' , 'IVF'),
('D173','Laparoscopic Surgeon'),
('D174' , 'Gynarcologist'),
('D174' , 'Obstetrics'),
('D175' , 'Pediatric Orthopedic'),
('D176' , 'General Physician'),
('D176' , 'Internal Medicine'),
('D177' , 'General Physician'),
('D177' , 'Internal Medicine'),
('D178' , 'General Physician'),
('D178' , 'Internal Medicine'),
('D179' , 'orthopedics'),
('D179' , 'Robotic'),
('D179' , 'Joint Replacement Surgery'),
('D180' , 'orthopedics'),
('D180' , 'Joint Replacement Surgery'),
('D181' , 'Spine Surgeon'),
('D182' , 'Endoscopic Spine Surgery'),
('D183' , 'Neurologist'),
('D183' , 'Geriatric Neurologist'),
('D184' , 'urology'),
('D185' , 'Pediatric Dentist'),
('D186' , 'Oncology'),
('D186' , 'Laparoscopic Surgeon'),
('D187' , 'Obstetrics'),
('D187' , 'Gynecology'),
('D188' , 'Pediatric Surgeon'),
('D189' , 'Spine Surgeon'),
('D190' , 'Endoscopic Spine Surgery'),
('D191' , 'Nephrology');

INSERT INTO doctor_specialties (doctor_id, specialty_name)
VALUES
('D192' , 'Vascular Surgery'),
('D193' , 'orthopedics'),
('D193' , 'Sports Medicine Surgeon'),
('D194','Radiology'),
('D195','Therapist'),
('D195','Clinical Psychologist'),
('D195','Counselling Psychologist'),
('D196' , 'Plastic Surgery'),
('D197' , 'Pediatric Surgeon'),
('D198','Eye Surgeon'),
('D198','Ophthalmologist'),
('D199', 'Consultant Physician'),
('D200' ,'Otorhinolaryngologist'),
('D200' , 'ENT'),
('D201' , 'orthopedics'),
('D201' , 'Spine Surgeon'),
('D202' , 'orthopedics'),
('D202' , 'Spine Surgeon'),
('D203' , 'Neurologist'),
('D204' , 'Neurologist'),
('D205','Gastroenterologist'),
('D206','Gastroenterologist'),
('D206' , 'general surgeon'),
('D207' , 'orthopedics'),
('D208' , 'general surgeon'),
('D209' , 'general surgeon'),
('D209','Breast Surgery'),
('D210' , 'general surgeon');

INSERT INTO doctor_specialties (doctor_id, specialty_name)
VALUES
('D211' , 'Gynecology'),
('D211' , 'Laparoscopic Surgeon'),
('D211','Infertility Specialist');

INSERT INTO doctor_specialties (doctor_id, specialty_name)
VALUES('D212' , 'Urologist');

INSERT INTO doctor_specialties (doctor_id, specialty_name)
VALUES('D213' , 'Pediatrician');

INSERT INTO doctor_specialties (doctor_id, specialty_name)
VALUES('D214' , 'Oncologist'),
('D215' , 'Radiation Oncologist'),
('D216' , 'orthopedics');

INSERT INTO doctor_specialties (doctor_id, specialty_name)
VALUES('D217' , 'Neurosurgery'),
('D217' , 'Neuro Surgery'),
('D218' , 'Neurosurgery'),
('D219' , 'Neurosurgery'),
('D220' , 'Neurosurgery'),
('D221','Liver Transplant'),
('D221','Multi-organ Transplant'),
('D221',' Hepatobiliary Surgeon'),
('D222','Multi-organ Transplant'),
('D222',' Hepatobiliary Surgeon'),
('D223','Multi-organ Transplant'),
('D223',' Hepatobiliary Surgeon'),
('D224' , 'Haematologist'),
('D225' , 'Haematologist'),
('D226' , 'Haematologist'),
('D227' , 'Cardiology'),
('D228' , 'Cardiology'),
('D229' ,'Neurology'),
('D229' ,'Neuro Surgery'),
('D230' ,'Neurology'),
('D230' ,'Physician'),
('D230','Internal Medicine'),
('D231' ,'orthopedics'),
('D231' ,'Joint Replacement Surgery'),
('D232' ,'orthopedics'),
('D232' ,'Joint Replacement Surgery'),
('D233' , 'Oncologist'),
('D234' , 'Oncologist');

INSERT INTO doctor_specialties (doctor_id, specialty_name)
VALUEs
('D235' , 'Breast Surgery'),
('D236' , 'Breast Surgery'),
('D237', 'general surgeon'),
('D237' , 'Bariatric Surgery'),
('D238', 'general surgeon'),
('D238' , 'Bariatric Surgery'),
('D239' , 'Paediatric Cardiac Surgery'),
('D240','Cardiovascular and Thoracic Surgery (CVTS)'),
('D241' , 'Cardiology'),
('D242' , 'Cardiology'),
('D243','chest medicine'),
('D244','chest medicine'),
('D245','Dentistry'),
('D246','Dentistry'),
('D247','Dermatology'),
('D248','Dermatology'),
('D249','Paediatric Endocrinology'),
('D250','Paediatric Endocrinology'),
('D251' , 'ENT'),
('D252' , 'ENT'),
('D253' , 'Gastroenterologist'),
('D254' ,'general surgeon'),
('D255' , 'general surgeon'),
('D254' , 'Bariatric Surgeon'),
('D255' , 'Bariatric Surgeon'),
('D256' , 'Haematologist'),
('D257' , 'Haematologist'),
('D258' , 'Pain Clinic'),
('D259' , 'Pain Management'),
('D260','orthopedics'),
('D261' ,'orthopedics'),
('D262' , 'Rheumatology'),
('D263' , 'Rheumatology'),
('D264' , 'Rheumatology');


INSERT INTO doctor_specialties (doctor_id, specialty_name)
VALUES('D265' , 'Paediatrics'),
('D266' , 'chest medicine'),
('D267' , 'anasthecia'),
('D268' , 'orthopedics'),
('D269' , 'general surgeon'),
('D270','Dermatology'),
('D271' , 'ENT'),
('D272' , 'Plastic Surgery'),
('D273','Ophthalmologist'),
('D274','Radiology'),
('D275','Psychiatry'),
('D276','pathologist'),
('D277','Dentistry'),
('D278','Ayurveda'),
('D279','Cardiology'),
('D280','Homeopathy');

INSERT INTO doctor_specialties (doctor_id, specialty_name)
VALUES('D281','Endocrinologist'),
('D281','Diabetologist'),
('D282','Physician'),
('D282','Diabetologist'),
('D283','Diabetologist'),
('D284','Cardiology'),
('D285','Cardiology'),
('D286','Cardiology'),
('D287' ,'Neurology'),
('D288' ,'Neurology'),
('D289' , 'general surgeon'),
('D289' , 'Bariatric Surgeon'),
('D290' , 'general surgeon'),
('D291' , 'general surgeon'),
('D292' , 'general surgeon'),
('D293' , 'Diabetic Foot Surgeon'),
('D294' , 'Diabetic Foot Surgeon'),
('D295','Paediatric'),
('D296','Ophthalmologist'),
('D296','Eye Surgeon'),
('D297','Ophthalmologist'),
('D297','Eye Surgeon');

INSERT INTO doctor_specialties (doctor_id, specialty_name)
VALUES
('D298','Endoscopic'),
('D299','Gastroenterologist'),
('D300','Gastroenterologist');

INSERT INTO doctor_specialties (doctor_id, specialty_name)
VALUES
('D301','Dermatologist');

INSERT INTO doctor_specialties (doctor_id, specialty_name)
VALUES
('D302','General Physician'),
('D302','Internal Medicine');

INSERT INTO doctor_specialties (doctor_id, specialty_name)
VALUES
('D304','Gynecology'),
('D303','Internal Medicine');
select * from doctor_specialties ;

INSERT INTO doctor_specialties (doctor_id, specialty_name)
VALUES
('D305','Homeopathy');

INSERT INTO doctor_specialties (doctor_id, specialty_name)
VALUES
('D306','Cardiology'),
('D307','Cardiology'),
('D308','Cardiology'),
('D309','Cardiothoracic'),
('D310','chest physician'),
('D310','Pulmonologist'),
('D311','chest physician'),
('D311','Pulmonologist'),
('D312','chest physician'),
('D312','Pulmonologist'),
('D313','Dermatology'),
('D314','Dermatology'),
('D315','Dermatology'),
('D316','Diabetologist'),
('D317','Diabetologist'),
('D318' , 'ENT'),
('D319' , 'ENT'),
('D320' , 'ENT'),
('D321' , 'Endocrinologist'),
('D322' , 'Endocrinologist'),
('D323','Gastroenterologist'),
('D324','Gastroenterologist'),
('D325' , 'general surgeon'),
('D326' , 'general surgeon'),
('D327' , 'general surgeon'),
('D328','Gynecology'),
('D329','Gynecology'),
('D330','Gynecology'),
('D328' , 'Obstetrics'),
('D329' , 'Obstetrics'),
('D330' , 'Obstetrics'),
('D331','pathologist'),
('D332','Radiology'),
('D333','Radiology'),
('D334','Vascular Surgery'),
('D335','Urology'),
('D336','Urology'),
('D337','sexology'),
('D338' , 'Plastic Surgery'),
('D339' , 'Plastic Surgery'),
('D340' , 'Psychiatry');



INSERT INTO doctor_specialties (doctor_id, specialty_name)
VALUES('D341' , 'Oncology'),
('D341' , 'Infertility Specialist'),
('D341' , 'Gynaec Oncologist'),
('D341' , 'Gynarcologist');

INSERT INTO doctor_specialties (doctor_id, specialty_name)
VALUES('D342' , 'general surgeon');

INSERT INTO doctor_specialties (doctor_id, specialty_name)
VALUES('D343' , 'Laparoscopic Surgeon'),
('D344' , 'anasthecia'),
('D345' , 'Joint Replacement Surgery'),
('D346' , 'anasthecia'),
('D347' , 'Haematopathology'),
('D347' , 'Histopathology'),
('D348' , ' Child Development Centre(TDH)'),
('D349' , 'Liver Transplant'),
('D350' , 'Radiation Oncologist'),
('D351' , 'Trauma'),
('D352' , 'orthopedics');

INSERT INTO doctor_specialties (doctor_id, specialty_name)
VALUES('D353' , 'General Medicine');

INSERT INTO doctor_specialties (doctor_id, specialty_name)
VALUES('D354' , 'orthopedics'),
('D355' , 'Joint Replacement Surgery'),
('D356' , 'General Physician'),
('D357' , 'orthopedics'),
('D357' , 'Spine Surgeon'),
('D358' , 'general surgeon'),
('D359' , 'Gynarcologist'),
('D359' , 'Obstetrics'),
('D360' , 'Infertility Specialist');

INSERT INTO doctor_specialties (doctor_id, specialty_name)
VALUES
('D361' , 'Obstetrics'),
('D361' , 'Gynecology'),
('D362' , 'Obstetrics'),
('D362' , 'Gynecology'),
('D363' , 'Fertility Specialist'),
('D364' , 'Paediatrics'),
('D365' , 'Obstetrics'),
('D365' , 'Gynecology'),
('D366' , 'Fertility Specialist'),
('D367' , 'Laparoscopic Surgeon'),
('D367' , 'Obstetrics'),
('D367' , 'Gynecology'),
('D367' , 'Infertility'),
('D368' , 'Fertility Specialist'),
('D369' , 'Paediatrics'),
('D370' , 'Paediatrics'),
('D370' , 'Neonatology'),
('D371' , 'Obstetrics'),
('D371' , 'Gynecology'),
('D372' , 'Paediatrics'),
('D372' , 'Neonatology'),
('D373' , 'Neonatology'),
('D374' , 'Fetal Medicine Specialist'),
('D375' , 'Dermatologist'),
('D375' , 'Cosmetologist'),
('D376' , 'Paediatrics'),
('D377' , 'Paediatrics'),
('D377' , 'Neonatology'),
('D378' , 'Radiologist'),
('D379' , 'General Medicine'),
('D380' , 'Fertility Specialist'),
('D378' , 'Nutritionist');


INSERT INTO doctor_specialties (doctor_id, specialty_name)
VALUES
('D382' , 'Ophthalmologist'),
('D382','Eye Surgeon'),
('D383' , 'Plastic Surgery');

INSERT INTO doctor_specialties (doctor_id, specialty_name)
VALUES
('D384','general surgeon'),
('D384' , 'Laparoscopic Surgeon');

INSERT INTO doctor_specialties (doctor_id, specialty_name)
VALUES
('D385','Ayurveda');
INSERT INTO doctor_specialties (doctor_id, specialty_name)
VALUES
('D386','Dermatologist');

INSERT INTO doctor_specialties (doctor_id, specialty_name)
VALUES
('D387','Gynecology'),
('D387','Obstetrics'),
('D387','Infertility Specialist'),
('D388','Nutritionist'),
('D388','Dietetics'),
('D39','Laparoscopic Surgeon'),
('D389','Oncologist');

INSERT INTO doctor_specialties (doctor_id, specialty_name)
VALUES
('D390','Nephrology'),
('D391','Cardiology'),
('D392','ENT'),
('D393','Oncology'),
('D394','ENT'),
('D395','Psychiatry'),
('D396','Oncology'),
('D397','ENT'),
('D398','Neurology'),
('D399','Cardiology');

INSERT INTO doctor_specialties (doctor_id, specialty_name)
VALUES
('D400','Laparoscopic Surgeon'),
('D400','Gastroenterologist'),
('D400','Gastrointestinal Surgeon');

INSERT INTO doctor_specialties (doctor_id, specialty_name)
VALUES
('D401','Homeopathy'),
('D401','Ayurveda');

INSERT INTO doctor_specialties (doctor_id, specialty_name)
VALUES
('D402','Homeopathy'),
('D402','Ayurveda');

INSERT INTO doctor_specialties (doctor_id, specialty_name)
VALUES
('D403','Pulmonologist');

INSERT INTO doctor_specialties (doctor_id, specialty_name)
VALUES
('D404','Pulmonologist'),
('D404','chest physician'),
('D404','Tuberculous');

INSERT INTO doctor_specialties (doctor_id, specialty_name)
VALUES
('D405','Internal Medicine');

INSERT INTO doctor_specialties (doctor_id, specialty_name)
VALUES
('D406','HIV Physician'),
('D406','Infectious Diseases');

INSERT INTO doctor_specialties (doctor_id, specialty_name)
VALUES
('D407','Orthopedic & Joint Replacement'),
('D407','orthopedics'),
('D407','Spine Surgeon'),
('D408','chest medicine'),
('D408','Tuberculous'),
('D409','Infertility Specialist'),
('D409','Obstetrics'),
('D410','Ayurveda'),
('D411','ENT'),
('D411','Ophthalmologist'),
('D411','Neurologist');

INSERT INTO doctor_specialties (doctor_id, specialty_name)
VALUES
('D412' , 'Endocrinologist'),
('D412' , 'Dentist'),
('D412' , 'Dental Surgeon'),
('D413' , 'Dentist'),
('D413' , 'Dental Surgeon'),
('D414' , 'Oral'),
('D414' , 'MaxilloFacial Surgeon'),
('D414' , 'Implantologist'),
('D414' , 'Dentist'),
('D415' , 'Implantologist'),
('D415' , 'Dentist'),
('D415' , 'Prosthodontist'),
('D416' , 'Prosthodontist'),
('D416' , 'Implantologist'),
('D417' , 'Orthodontist'),
('D418' ,'Cardiology'),
('D419' ,'Pediatric Dentist'),
('D419' ,'Preventive Dentistry');