use project;
show tables;
drop table doctor;


select * from doctor;

create table doctor( d_id varchar(10) primary key,  
d_name varchar(100) not null , 
Qualification varchar(100), 
contact_info  varchar(150) , 
Email_id  varchar(100),
hospital_id int ,
foreign key (hospital_id) references hospital(h_id));

INSERT INTO doctor(d_id , d_name , Qualification , contact_info , Email_id , hospital_id)
VALUES
('D1',  "Dr. Mukund Joshi ", "MS, AFSA, FICS ", "Ph: 020-41499999" , "none", 101);

insert into doctor values('D2' , 
"Dr Meenal Mehendale ",
"MBBS, DNB( OBGY) ",
"Ph: 020-41499999" ,
"none",
101);

insert into doctor values('D3' , 
"Dr. Gauri Khirid Dhumke ",
"MBBS, DGO ",
"Ph: 020-41499999" ,
"none",
101);

insert into doctor values('D4' , 
"Dr Mrunmayi Vivek Avachat",
" Master of Physical Therapy, CKTP(UK), MATNI, MIAP, MMCP " ,
"Ph: 020-41499999" ,
"none",
101);
insert into doctor values('D5' , 
"Dr. Sandeep kadam",
"MBBS, MD (Ped), DM (Neonatology)" ,
"Ph: 020-41499999" ,
"none",
101);
insert into doctor values('D6' , 
"Dr. Ashwini Mehetre-Panhale",
"MBBS, DCH ,fellowship in neonatolgy(IAP) " ,
"Ph: 020-41499999" ,
"none",
101);
insert into doctor values('D7' , 
"Dr. Dhyey Pandya",
"MBBS, MD(PED), DNB (Neonatology)" ,
"Ph: 020-41499999" ,
"none",
101);
insert into doctor values('D8', 
"Dr. Devendu Laxmikant Shah",
"MBBS | Surgery DNB (Urology)" ,
"Ph: 020-41499999" ,
"none",
101);
insert into doctor values('D9', 
"Dr. Deepak Kirpekar",
"MBBS, MS (Gen.Surg), FIAS, FICS" ,
"Ph: 020-41499999" ,
"none",
101);
insert into doctor values('D10', 
"Dr. Nitin Arvind Sangamnerkar ",
"MBBs MD (OBGY)" ,
"Ph: 020-41499999" ,
"none",
101);

INSERT INTO doctor(d_id , d_name , Qualification , contact_info , Email_id , hospital_id)
VALUES
('D11',  "Dr. Sharad Hardikar", "not mentioned ", "Ph: 91-20-41095000" , "none", 102),
('D12',  "Dr. Madan Hardikar", "not mentioned ", "Ph: 91-20-41095000" , "none", 102),
('D13',  "Dr. Sriniwas Prakash", "not mentioned ", "Ph: 91-20-41095000" , "none", 102),
('D14',  "Dr. Onkar Lande", "not mentioned ", "Ph: 91-20-41095000" , "none", 102),
('D15',  "Dr. Sachin Nagapurkar", "not mentioned ", "Ph: 91-20-41095000" , "none", 102),
('D16',  " Dr. Manoj Todkar", "not mentioned ", "Ph: 91-20-41095000" , "none", 102),
('D17',  "Dr. Ranjeet Rajure", "not mentioned ", "Ph: 91-20-41095000" , "none", 102),
('D18',  "Dr. Trimbak Dapkekar", "not mentioned ", "Ph: 91-20-41095000" , "none", 102),
('D19',  " Dr. Saurabh Giri", "not mentioned ", "Ph: 91-20-41095000" , "none", 102),
('D20',  "Dr. Tushar Pisal", "not mentioned ", "Ph: 91-20-41095000" , "none", 102),
('D21',  " Dr. Nitish Agarwal", "not mentioned ", "Ph: 91-20-41095000" , "none", 102),
 ('D22',  " Dr. Sunil Nadkarni", "not mentioned ", "Ph: 91-20-41095000" , "none", 102),
 ('D23',  " Dr.Harshal Saoji", "not mentioned ", "Ph: 91-20-41095000" , "none", 102),
 ('D24',  "  Dr. Shekhar Takale", "not mentioned ", "Ph: 91-20-41095000" , "none", 102),
 ('D25',  "Dr. Ashok Lathi ", "not mentioned ", "Ph: 91-20-41095000" , "none", 102),
('D26',  "Dr. Nitin Pathak ", "not mentioned ", "Ph: 91-20-41095000" , "none", 102),
('D27',  "Dr. Amol Mahajani", "not mentioned ", "Ph: 91-20-41095000" , "none", 102),
('D28',  " Dr. Rutu Dave", "not mentioned ", "Ph: 91-20-41095000" , "none", 102),
('D29',  "Dr. Yogesh Laad ", "not mentioned ", "Ph: 91-20-41095000" , "none", 102),
('D30',  "Dr. Suprima Parkhi", "not mentioned ", "Ph: 91-20-41095000" , "none", 102),
('D31',  "Dr. Raju Manghani", "not mentioned ", "Ph: 91-20-41095000" , "none", 102),
('D32',  "Dr. V. D. Kulkarni", "not mentioned ", "Ph: 91-20-41095000" , "none", 102),
('D33',  "Dr. Rahul Kendre", "not mentioned ", "Ph: 91-20-41095000" , "none", 102),
('D34',  "Dr. Swapanil Kulkarni", "not mentioned ", "Ph: 91-20-41095000" , "none", 102),
('D35',  " Dr. Prachet Dapkekar", "not mentioned ", "Ph: 91-20-41095000" , "none", 102),
('D36',  "Dr. Akash Gavali", "not mentioned ", "Ph: 91-20-41095000" , "none", 102),
('D37',  "Dr. Sagar Bhalerao", "not mentioned ", "Ph: 91-20-41095000" , "none", 102),
('D38',  " Dr. Harshad Toshniwal", "not mentioned ", "Ph: 91-20-41095000" , "none", 102),
('D39',  "Dr. Amit Sinkar", "not mentioned ", "Ph: 91-20-41095000" , "none", 102),
('D40',  " Dr. Suraj Chavan", "not mentioned ", "Ph: 91-20-41095000" , "none", 102),
('D41',  "Dr. Naresh Munot", "not mentioned ", "Ph: 91-20-41095000" , "none", 102),
('D42',  "Dr. Laxman Malkunje", "not mentioned ", "Ph: 91-20-41095000" , "none", 102),
('D43',  " Dr. Sharika Wazir", "not mentioned ", "Ph: 91-20-41095000" , "none", 102),
('D44',  " Dr. Nagnath Khadke", "not mentioned ", "Ph: 91-20-41095000" , "none", 102),
('D45',  " Dr. Manoj Pawar", "not mentioned ", "Ph: 91-20-41095000" , "none", 102),
('D46',  " Dr. Poonam Tapasale ", "not mentioned ", "Ph: 91-20-41095000" , "none", 102),
('D47',  " Dr. Surekha Deshpande", "not mentioned ", "Ph: 91-20-41095000" , "none", 102),
('D48',  "  Dr. Yashoddhan Deshpande", "not mentioned ", "Ph: 91-20-41095000" , "none", 102),
('D49',  "  Dr. Natraj Sadaphule", "not mentioned ", "Ph: 91-20-41095000" , "none", 102),
('D50',  "  Dr. Kalyani Saoji", "not mentioned ", "Ph: 91-20-41095000" , "none", 102),
('D51',  " Dr. Neeta Bonde", "not mentioned ", "Ph: 91-20-41095000" , "none", 102),
('D52',  " Dr. Atiya Shaikh", "not mentioned ", "Ph: 91-20-41095000" , "none", 102),
('D53',  " Dr. Sushma Lad", "not mentioned ", "Ph: 91-20-41095000" , "none", 102),
('D54',  " Dr. Vipul Chakurkar", "not mentioned ", "Ph: 91-20-41095000" , "none", 102),
('D55',  "Dr. Aditya Bhabhe ", "not mentioned ", "Ph: 91-20-41095000" , "none", 102),
('D56',  " Dr. Sagar Kulkarni", "not mentioned ", "Ph: 91-20-41095000" , "none", 102),
('D57',  " Dr. Rohan Shah", "not mentioned ", "Ph: 91-20-41095000" , "none", 102),
('D57',  " Dr. Rohan Shah", "not mentioned ", "Ph: 91-20-41095000" , "none", 102),
('D58',  "  Dr. Abhinandan Magdum", "not mentioned ", "Ph: 91-20-41095000" , "none", 102),
('D59',  " Dr. Hemant Baxi", "not mentioned ", "Ph: 91-20-41095000" , "none", 102),
('D60',  " Dr. Aniket Saoji", "not mentioned ", "Ph: 91-20-41095000" , "none", 102);


INSERT INTO doctor(d_id , d_name , Qualification , contact_info , Email_id , hospital_id)
VALUES 
('D61' , 'Dr. Pradeep D’Costa' ,  'DNB (Med)' ,'02066037300' ,'none' , 103),
('D62' , 'Dr. Leena Shah' ,  'MD (Med), FCICM' ,'02066037300' ,'none' , 103),
('D63' , 'Dr. Arati Lokhande' ,  'DA' ,'02066037300' ,'none' , 103),
('D64' , 'Dr. Sachin Jagdale ' ,  'FCPS (Med), ISCCM' ,'02066037300' ,'none' , 103),
('D65' , 'Dr. Shubhangi Humbre' ,  'DNB (Anaesth), ISCCM' ,'02066037300' ,'none' , 103),
('D66' , 'Dr. Anjana Tiwari' ,  'MD (Med), PGDHHM, IDCCM' ,'02066037300' ,'none' , 103),
('D67' , 'Dr. Muddassir Sheikh' ,  'MD, IDCCM' ,'02066037300' ,'none' , 103),
('D68' , 'Dr. Asir Tamboli' ,  'DA, FNB – Critical Care Medicine' ,'02066037300' ,'none' , 103),
('D69' , 'Dr. Kalpana Shingane' ,  'MD (Anaesth), IDCCM' ,'02066037300' ,'none' , 103),
('D70' , 'Dr. Harshal Oswal' ,  'MD (General Medicine), IDCCM' ,'02066037300' ,'none' , 103),
('D71' , 'Dr. Abhishek Badave' ,  'DNB (Anaesthesiology)' ,'02066037300' ,'none' , 103),
('D72' , 'Dr. Pankaj Chendke' ,  'DNB (Anaesthesiology)' ,'02066037300' ,'none' , 103),
('D73' , 'Dr. Suchitra Mohite-Jadhav' ,  'DNB, IDCCM, EDIAC, FRCEM' ,'02066037300' ,'none' , 103),
('D74' , 'Dr. Swapnil Borade' ,  'DNB (Emerg Med)' ,'02066037300' ,'none' , 103),
('D75' , 'Dr. Bela Gandhi' ,  'MD (Paediatrics), M Sc Allergy (UK)' ,'02066037300' ,'none' , 103),
('D76' , 'Dr. Anand Bhatia' ,  'MD, DA' ,'02066037300' ,'none' , 103),
('D77' , 'Dr. Saroj Bande' ,  'MD, DNB, PDCC' ,'02066037300' ,'none' , 103),
('D78' , 'Dr. Rajshree Godbole' ,  'MD ,DNB' ,'02066037300' ,'none' , 103),
('D79' , 'Dr. Joyshankar Jana' ,  'MD , DNB' ,'02066037300' ,'none' , 103),
('D80' , 'Dr. Khandu Padwal' ,  'MD' ,'02066037300' ,'none' , 103),
('D81' , 'Dr. Shailendra Kanade' ,  ' DA, DNB (Anaesth)' ,'02066037300' ,'none' , 103),
('D82' , 'Dr. Pallavi Patil' ,  ' DNB, FCPS (Anaesth)' ,'02066037300' ,'none' , 103),
('D83' , 'Dr. Sourabh Bokil' ,  'MD (Anaesthesiology)' ,'02066037300' ,'none' , 103),
('D84' , 'Dr. Ashish Khomane' ,  'Diploma in Anaesthesiology' ,'02066037300' ,'none' , 103),
('D85' , 'Dr. Durga Borkar' ,  'MD' ,'02066037300' ,'none' , 103),
('D86' , 'Dr. Rashmi Walimbe' ,  'DA, DNB (Anaesth)' ,'02066037300' ,'none' , 103),
('D87' , 'Dr. Raju Bhukya' ,  'MD-Anaesthesiology' ,'02066037300' ,'none' , 103),
('D88' , 'Dr. Manoj Thakur' ,  'BAMS, M Phil (Ayurveda)' ,'02066037300' ,'none' , 103),
('D89' , 'Dr. Ajitkumar Mandlecha' ,  'BAMS, M Phil (Ayurveda)' ,'02066037300' ,'none' , 103),
('D90' , 'Dr. Jayashree Todkar' ,  'MS, DLS, FAIS, FIAGES, FALS, FCIS' ,'02066037300' ,'none' , 103),
('D91' , 'Dr. Jyotsna Kulkarni' ,  'MS' ,'02066037300' ,'none' , 103),
('D92' , 'Dr. Farrokh Wadia' ,  'FRCP' ,'02066037300' ,'none' , 103),
('D93' , 'Dr. Anil Godbole' ,  'MD' ,'02066037300' ,'none' , 103),
('D94' , 'Dr. Valentine Lobo' ,  'MD (Med), DNB (Nephro)' ,'02066037300' ,'none' , 103),
('D95' , 'Dr. Yogesh Sovani' ,  'DNB (Surgery), DNB (Genito Urinary Surgery)' ,'02066037300' ,'none' , 103),
('D96' , 'Dr. Jyoti Sharma' ,  'MD, DNB (Paed)' ,'02066037300' ,'none' , 103),
('D97' , 'Dr. Jyoti Singhal' ,  'MD(Paed)' ,'02066037300' ,'none' , 103),
('D98' , 'Dr. Vipul Chakurkar' ,  'MD (Med), DNB (Nephro)' ,'02066037300' ,'none' , 103),
('D99' , 'Dr. Sagar Kulkarni' ,  'MD (Med), DNB (Nephro)' ,'02066037300' ,'none' , 103) ,
('D100' , 'Dr. Shardul Date' ,  'FCPS (Surgery), DNB, FEVS' ,'02066037300' ,'none' , 103),
('D101' , 'Dr Pranjal Sawant' ,  'DNB (General Surgery), DNB (Vascular Surgery)' ,'02066037300' ,'none' , 103),
('D102' , 'Dr. Advait Kothurkar' ,  'MS (Gen surgery), DNB (Gen Surgery)' ,'02066037300' ,'none' , 103),
('D103' , 'Dr. Amol Talaulikar' ,  'MS, FICS' ,'02066037300' ,'none' , 103);

INSERT INTO doctor(d_id , d_name , Qualification , contact_info , Email_id , hospital_id)
VALUES('D104' ,'Dr.Sanjay Gupte' , 'MBBS Obstertrics and Gyanecology, FICOG ,FRCOG' , '+91 95119 02554' ,'none' , 104),
('D105' ,'Dr.Sowjanya Aggarwal' , 'MBBS MS Obstertrics and Gyanecology' , '+91 95119 02554' ,'none' , 104),
('D106' ,'Dr.Shipra Gupta' , 'MBBS MS Obstertrics and Gyanecology' , '+91 95119 02554' ,'none' , 104),
('D107' ,'Dr.K D Nayar' , 'MBBS, DGO, MD - Obstetrics & Gynaecology,' , '+91 95119 02554' ,'none' , 104),
('D108' ,'Dr.Pranita kalita' , 'MBBS, MD Obstetrics & Gynaecology, DNB Obstetrics & Gynecology' , '+91 95119 02554' ,'none' , 104),
('D109' ,'Dr.Una Pant' , 'MBBS MS Obstertrics and Minimally Invasive Surgery' , '+91 95119 02554' ,'none' , 104),
('D110' ,'preeti pandey' , 'MBBS MS Obstertrics and Gyanecology' , '+91 95119 02554' ,'none' , 104),
('D111' ,'Dr.Ragini Gupta' , 'MBBS MS ' , '+91 95119 02554' ,'none' , 104),
('D112' ,'Dr. Anjali Kumar' , 'MBBS MS Obstertrics and Gyanecology' , '+91 95119 02554' ,'none' , 104),
('D113' ,'Dr. Nutan Agarwal' , 'MBBS MS Obstertrics and Gyanecology,FICOG , FICMCH , FIMSA , FGSI' , '+91 95119 02554' ,'none' , 104),
('D114' ,'Dr. Pooja Bhatia Marwaha' , 'MBBS ,DNB Obstertrics and Gyanecology' , '+91 95119 02554' ,'none' , 104),
('D115' ,'Dr. Karishma Thariani' , 'MBBS MS Obstertrics and Gyanecology, DNB Obstetrics and Gynaecology' , '+91 95119 02554' ,'none' , 104),
('D116' ,'Dr. Chaypatil' , 'MBBS MS Obstertrics and Gyanecology' , '+91 95119 02554' ,'none' , 104),
('D117' ,'Dr. Shobha N Gudi' , 'MBBS MS Obstertrics and Gyanecology,DNB Obstetrics & Gynecology' , '+91 95119 02554' ,'none' , 104),
('D118' ,'Dr. Meena Prashanth' , 'MBBS MS Obstertrics and Gyanecology' , '+91 95119 02554' ,'none' , 104),
('D119' ,'Dr. Swati Tyagi' , 'MBBS MS Obstertrics and Gyanecology' , '+91 95119 02554' ,'none' , 104),
('D120' ,'Dr. Mukta Paul' , 'MBBS, DGO, DNB Obstetrics and Gynaecology' , '+91 95119 02554' ,'none' , 104),
('D121' ,'Dr. Aabha Gupta' , 'MBBS MS Obstertrics and Gyanecology' , '+91 95119 02554' ,'none' , 104),
('D122' ,'Dr. Sapna Raina' , 'MBBS MS Obstertrics and Gyanecology' , '+91 95119 02554' ,'none' , 104);


INSERT INTO doctor(d_id , d_name , Qualification , contact_info , Email_id , hospital_id)
VALUES
('D123' ,'Dr. Pankaj Patil' , 'MBBS MS ' , '1-860-500-2244' ,'none' , 105),
('D124' ,'Dr. Vidya Gaikwad' , 'MBBS, MD - Obstetrics & Gynaecology ' , '1-860-500-2244' ,'none' , 105),
('D125' ,'Dr. Ashish Kumar Srivastav' , 'MBBS, DNB - General Surgery ' , '1-860-500-2244' ,'none' , 105),
('D126' ,'Dr. Vinita Joshi' , 'MBBS MS(Ob & Gynae)' , '1-860-500-2244' ,'none' , 105),
('D127' ,' Dr. Anand Kavi' , 'MBBS, M.S.(ORTHO)' , '1-860-500-2244' ,'none' , 105),
('D128' ,'Dr. Nachiket Kulkarni' , 'DNB, fellow in clinical rheumotology' , '1-860-500-2244' ,'none' , 105),
('D129' ,'Dr. Sanjay Nagarkar','MD,MBBS ', '1-860-500-2244' ,'none' , 105),
('D130' ,'Dr. Shivprakash Mehta' , 'MBBS, MS (ENT)' , '1-860-500-2244' ,'none' , 105),
('D131' ,'Dr. Sushrut Deshmukh' ,' MBBS, MS (ENT) ' , '1-860-500-2244' ,'none' , 105),
('D132' ,'Dr. Sandeep Chordiya','MBBS, MS (Orthopaedics)' , '1-860-500-2244' ,'none' , 105),
('D133' ,'Dr. Sujit Kadrekar','MBBS, DNB (Orthopaedics)' , '1-860-500-2244' ,'none' , 105),
('D134' ,'Dr. Santosh Patil' ,'MBBS, DNB (Radiodiagnosis)' , '1-860-500-2244' ,'none' , 105),
('D135' ,' Dr. Pranav Thusay','MBBS, DNB (General Surgery, MCh (Plastic Surgery)' , '1-860-500-2244' ,'none' , 105),
('D136' ,' Dr. Rajeev Chaudhari','MBBS, MS (General Surgery), MCh (Urology)' , '1-860-500-2244' ,'none' , 105),
('D137' ,'Dr. Vikram Satav','MBBS, MS (Gen Surgery), DNB (Gen Surgery), DNB (Urinogenital Surgery)' , '1-860-500-2244' ,'none' , 105),
('D138' ,' Dr. Pawan Rahangdale' ,'MBBS, MS (General Surgery), MCh (Genito-urinary Surgery)' , '1-860-500-2244' ,'none' , 105),
('D139' ,'Dr. Vishwajeet Rajendra Chavan','MBBS, MS ' , '1-860-500-2244' ,'none' , 105),
('D140' ,' Dr. Ramesh Sonba Dumbre','MBBS, MS (General Surgery)' , '1-860-500-2244' ,'none' , 105),
('D141' ,'Dr. Satish Kale','MBBS, DNB (Ortho)' , '1-860-500-2244' ,'none' , 105),
('D142' ,'Dr. Prashant Bhandari' ,' MBBS, MS (Orthopaedics' , '1-860-500-2244' ,'none' , 105);

INSERT INTO doctor(d_id , d_name , Qualification , contact_info , Email_id , hospital_id)
VALUES
('D143' ,'Dr. Anant Katkar' , 'MBBS MS,DNB' , '1-860-500-2244' ,'none' , 107),
('D144' ,'Dr. Amit Dikshit' , 'MBBS, DA Anaesthesiology, DNB Anaesthesiology' , '1-860-500-2244' ,'none' , 107),
('D145' ,'Dr. Shona Nag' , 'MBBS, MD General Medicine, Fellowship in Medical Oncology' , '1-860-500-2244' ,'none' , 107),
('D146' ,'Dr. Swati Suradkar' , 'MBBS, DNB General Surgery, Fellowship in Breast Surgery ' , '1-860-500-2244' ,'none' , 107),
('D147' ,'Dr. Minish Jain' , 'MBBS, MD Internal Medicine, Fellowship In Oncology' , '1-860-500-2244' ,'none' , 107),
('D148' ,'Dr. Manisha Karmarkar' , 'MBBS, MD Anaesthesiology ' , '1-860-500-2244' ,'none' , 107),
('D149' ,'Dr. Nita D souza' , 'MBBS ' , '1-860-500-2244' ,'none' , 107),
('D150' ,'Dr. Shilpy Dolas' , 'MBBS ,MS General Surgery, Fellowship in Breast Diseases' , '1-860-500-2244' ,'none' , 107),
('D151' ,'Dr. Vijay Ramanan' , 'MBBS,MD Medicine, DM Clinical Haematology' , '1-860-500-2244' ,'none' , 107),
('D152' ,'Dr. Sathe Prachee' , 'MD General Medicine, MBBS, MD General Medicine' , '1-860-500-2244' ,'none' , 107),
('D153' ,'Dr. Sanjay Joshi' , 'MBBS, MS General Surgery, MCh Plastic Surgery' , '1-860-500-2244' ,'none' , 107),
('D154' ,'Dr. Purvez Grant' , 'MBBS, MD General Medicine, Fellowship in Cardiology' , '1-860-500-2244' ,'none' , 107),
('D155' ,'Dr. Rucha Shrikhande' , 'BA, MA Psychology' , '1-860-500-2244' ,'none' , 107),
('D156' ,'Dr. Amol Galge' , 'MBBS, DNB Nuclear Medicine ' , '1-860-500-2244' ,'none' , 107),
('D157' ,'Dr. Swapneel Karne' , 'MBBS, MS General Surgery, DNB Cardiothoracic Surgery' , '1-860-500-2244' ,'none' , 107),
('D158' ,'Dr. Rahul Patil' , 'MBBS, MD General Medicine, DNB Cardiology,' , '1-860-500-2244' ,'none' , 107),
('D159' ,'Dr. Gauri Belsare' , 'MBBS, MS General Surgery' , '1-860-500-2244' ,'none' , 107),
('D160' ,'Dr. Vaishali Kirane' , 'MBBS, Diploma in Dermatology Venerology And Leprosy, DNB Dermatology' , '1-860-500-2244' ,'none' , 107);

INSERT INTO doctor(d_id , d_name , Qualification , contact_info , Email_id , hospital_id)
VALUES
('D161' ,'Dr.Yasmeen Sethna' , 'not mentioned' , '020-66455100' ,'none' , 108),
('D162' ,'Dr. Amit Dikshit' , 'not mentioned' , '020-66455100' ,'none' , 108),
('D163' ,'Dr. Nandini Londhe' , 'not mentioned' , '020-66455100' ,'none' , 108),
('D164' ,'Dr. Nita D’souza' , 'not mentioned' , '020-66455100' ,'none' , 108),
('D165' ,'Dr. Prachi Surve' , 'not mentioned' , '020-66455100' ,'none' , 108),
('D166' ,'Dr Maitrayee Kulkarni' , 'not mentioned' , '020-66455100' ,'none' , 108),
('D167' ,'Dr Akshada Bhosale' , 'not mentioned' , '020-66455100' ,'none' , 108),
('D168' ,'Dr. Tejas Gundewar' , 'not mentioned' , '020-66455100' ,'none' , 108),
('D169' ,'Dr Neeraj Rayate' , 'not mentioned' , '020-66455100' ,'none' , 108),
('D170' ,'Dr Kedar Patil' , 'not mentioned' , '020-66455100' ,'none' , 108);

INSERT INTO doctor(d_id , d_name , Qualification , contact_info , Email_id , hospital_id)
VALUES
('D171' ,'Dr. Avinash Phadnis' , 'MBBS MD-Obstetrics & Gynaecology' , '02067216600' ,'none' , 109),
('D172' ,'Dr. Amita Phadnis','MBBS MD-Pediatrics Diploma In Child Health' , '02067216600' ,'none' , 109),
('D173' ,'Dr. Kedar Marathe' , 'not mentioned' , '02067216600' ,'none' , 109),
('D174' ,'Dr. Snehal Ponkshe' , 'not mentioned' , '02067216600' ,'none' , 109),
('D175' ,'Dr. Vivek Sodhai' , 'Not mentioned' , '02067216600' ,'none' , 109),
('D176' ,'Dr. Aniket Joshi' , 'Not mentioned' , '02067216600' ,'none' , 109),
('D177' ,'Dr. Ketan Kshirsagar' , 'Not mentioned' , '02067216600' ,'none' , 109),
('D178' ,'Dr. Piyush Gugale' , 'Not mentioned' , '02067216600' ,'none' , 109),
('D179' ,'Dr. Aashish Arbat' , 'Not mentioned' , '02067216600' ,'none' , 109),
('D180' ,'Dr. Ishan R Shevate' , 'Not mentioned' , '02067216600' ,'none' , 109),
('D181' ,'Dr. Mayur Kardile' , 'Not mentioned' , '02067216600' ,'none' , 109),
('D182' ,'Dr. Sunil Nadkarni' , 'Not mentioned' , '02067216600' ,'none' , 109),
('D183' ,'Dr. Sandeep Borse' , 'Not mentioned' , '02067216600' ,'none' , 109),
('D184' ,'Dr. Sandesh Surana' , 'Not mentioned' , '02067216600' ,'none' , 109),
('D185' ,'Dr. Ashvini Phadnis' , 'Not mentioned' , '02067216600' ,'none' , 109),
('D186' ,'Dr. Joy Ghose' , 'Not mentioned' , '02067216600' ,'none' , 109),
('D187' ,'Dr. Neena Sathe' , 'Not mentioned' , '02067216600' ,'none' , 109),
('D188' ,'Dr. Pranav Jadhav' , 'Not mentioned' , '02067216600' ,'none' , 109),
('D189' ,'Dr. Rahul Chaudhari' , 'Not mentioned' , '02067216600' ,'none' , 109),
('D190' ,'Dr. Anand Kavi' , 'Not mentioned' , '02067216600' ,'none' , 109),
('D191' ,'Dr. Sunil Khot' , 'Not mentioned' , '02067216600' ,'none' , 109);

INSERT INTO doctor(d_id , d_name , Qualification , contact_info , Email_id , hospital_id)
VALUES
('D192' ,'Dr. Nitin Pathak' , 'MBBS, DNB - General Surgery, FCPS - General Surgery, DNB - Peripheral Vascular Surgery' , '02066819999' ,'none' , 110),
('D193' ,'Dr. Nilesh Kamat' , 'DNB - Orthopedics/Orthopedic Surgery, MRCS (UK), MNAMS - Orthopaedics, MBBS' , '02066819999' ,'none' , 110),
('D194' ,'Dr. Mukul Mutatkar' , 'MBBS, Diploma in Medical Radio-Diagnosis' , '02066819999' ,'none' , 110),
('D195' ,'Ms. Smita Santosh Salunke' , 'MA - Psychology' , '02066819999' ,'none' , 110),
('D196' ,'Dr. Amit Mulay', 'MBBS, FCPS - General Surgery, DNB - General Surgery, DNB - Plastic Surgery' , '02066819999' ,'none' , 110),
('D197' ,'Dr. Abhijit Benare','MBBS, FCPS - General Surgery, DNB - General Surgery, MS - Paediatrics Surgery Pediatric Surgeon' , '02066819999' ,'none' , 110),
('D198' ,'Dr. Neeta Gadkari' , 'MS - Ophthalmology, MBBS' , '02066819999' ,'none' , 110),
('D199' ,'Dr. Piyush Ashok Chaudhari' , 'DNB - General Medicine, MBBS' , '02066819999' ,'none' , 110),
('D200' ,'Dr. Siddharth Yande' , 'MBBS, MS - ENT, DNB - Otorhinolaryngology' , '02066819999' ,'none' , 110),
('D201' ,'Dr. Rahul Chaudhari' , 'MBBS, MS - Orthopaedics' , '02066819999' ,'none' , 110),
('D202' ,'Dr. Amol Rege','MS - Orthopaedics' , '02066819999' ,'none' , 110),
('D203' ,'Dr. Sarang Rote' , 'MBBS, MS - General Surgery, MCh - Neuro Surgery' , '02066819999' ,'none' , 110),
('D204' ,'Dr. Sandeep Borse' , 'MBBS, MD - General Medicine, DNB - Neurology' , '02066819999' ,'none' , 110),
('D205' ,'Dr. Lalit Shimpi' , 'DM - Gastroenterology, MD - General Medicine, MBBS' , '02066819999' ,'none' , 110),
('D206' ,'Dr. Vidhyachandra Gandhi' , 'MBBS, DNB - General Surgery, DNB - Surgical Gastroenterology' , '02066819999' ,'none' , 110),
('D207' ,'Dr. Rahul Damle' , 'MBBS, MS - Orthopaedics, DNB - Orthopedics/Orthopedic Surgery' , '02066819999' ,'none' , 110),
('D208' ,'Dr.Pradeep Sharma' , 'MBBS, DNB - General Surgery,  MS - General Surgery, FICS' , '02066819999' ,'none' , 110),
('D209' ,'Dr.Anupama mane' , 'MBBS, DNB - General Surgery' , '02066819999' ,'none' , 110),
('D210' ,'Dr.dhanesh Kamerkar' , 'MBBS, DNB - General Surgery' , '02066819999' ,'none' , 110);

INSERT INTO doctor(d_id , d_name , Qualification , contact_info , Email_id , hospital_id)
VALUES('D211' ,'Dr.Sada Singh Chyyo' , 'MBBS, DGO, Diploma in Reproductive Medicine (Germany)' , '020 2426 1182' ,'none' , 111);

INSERT INTO doctor(d_id , d_name , Qualification , contact_info , Email_id , hospital_id)
values ('D212' ,'Dr.Ketan Pai' , 'MBBS,General Surgery, DNB - Urology/Genito - Urinary Surgery' , 'not mentioned' ,'none' , 112);

INSERT INTO doctor(d_id , d_name , Qualification , contact_info , Email_id , hospital_id)
values ('D213' ,'Dr. Sathish R Kulkarni' , 'not mentioned' , 'Phone number: 020 7117 7321' , 'none' , 113);

INSERT INTO doctor(d_id , d_name , Qualification , contact_info , Email_id , hospital_id)
values 
('D214' ,'Dr. Mahesh Pawar' , 'MBBS, DNB (Surgical Oncology)' , 'Phone number: 098819 85453' , 'none' , 114),
('D215' ,'Dr. Jagdish Shinde' , 'MBBS, DMRT, MD (Radiation oncology)' , 'Phone number:098819 85453' , 'none' , 114),
('D216' ,'Dr. Narendra Vaidya' , 'MBBS, MD' , 'Phone number: 098819 85453' , 'none' , 114);

INSERT INTO doctor(d_id , d_name , Qualification , contact_info , Email_id , hospital_id)
values 
('D217' ,'Dr.  Charudutt Apte' , 'MS (Neurosurgery)' , 'Phone number:  020 6727 1111' , 'none' , 115),
('D218' ,'Dr. Ranjeet Deshmukh' , 'DNB(Neurosurgery)' , 'Phone number:  020 6727 1111' , 'none' , 115),
('D219' ,'Dr. Jaydev Panchwagh' , 'MS (General Surgery), MCh (Neurosurgery' , 'Phone number:  020 6727 1111' , 'none' , 115),
('D220' ,'Dr. Pravin Jain' , 'DNB(Gen Surgery), DNB(Neuro Surgery)' , 'Phone number:  020 6727 1111' , 'none' , 115),
('D221' ,'Dr. Bipin Vibhute' , 'DNB, MNAMS, FMS, DHM, MBA (NIBM)' , 'Phone number:  020 6727 1111' , 'none' , 115),
('D222' ,'Dr. Anirudhha Bhosale' , 'DNB(Gen Surgery)' , 'Phone number:  020 6727 1111' , 'none' , 115),
('D223' ,'Dr. Abhijit mane' , 'BAMS' , 'Phone number:  020 6727 1111' , 'none' , 115),
('D224' ,'Dr. Shashikant Apte' , 'MD(Gen Medicine), FRCPA(Haematology)' , 'Phone number:  +91 88888 22222' , 'none' , 115),
('D225' ,'Dr. Kannan Subramanian' , 'DNB(Gen Medicine), DM(Haematology)' , 'Phone number: +91 88888 22222' , 'none' , 115),
('D226' ,'Dr. Chandrakant Lahane' , 'MBBS, MD' , 'Phone number:  +91 88888 22222' , 'none' , 115),
('D227' ,'Dr. Abhijit Palshikar' , ' MD (Gen Med), DNB (Cardiology)' , 'Phone number:  +91 88888 22222' , 'none' , 115),
('D228' ,'Dr. Priya Palimkar' , 'MD (Internal Medicine), DNB (Cardiology)' , 'Phone number:  +91 88888 22222' , 'none' , 115),
('D229' ,'Dr. Charudutt Apte' , 'MS (Neurosurgery)' , 'Phone number:  +91 88888 22222' , 'none' , 115),
('D230' ,'Dr. Pradeep Divate' , 'MD (Internal Medicine) DM (Neurology) NIMHANS' , 'Phone number: +91 88888 22222' , 'none' , 115),
('D231' ,'Dr. Sachin Tapasvi' , 'MBBS, M.S. Orthopaedics', 'Phone number: +91 88888 22222' , 'none' , 115),
('D232' ,'Dr. Sushrut Badve' , 'MS DNB (Orthopaedics)' , 'Phone number: +91 88888 22222' , 'none' , 115),
('D233' ,'Dr. Shona Nag' , 'MBBS, MD' , 'Phone number: +91 88888 22222' , 'none' , 115),
('D234' ,'Dr. Joy Ghose' , 'MBBS, MS-General Surgery, MCh Surgical Oncology ' , 'Phone number: +91 88888 22222' , 'none' , 115);

INSERT INTO doctor(d_id , d_name , Qualification , contact_info , Email_id , hospital_id)
values
('D235' ,'Dr. Pranjali Gadgil' , 'not mentioned ' , 'Phone number: +91-22 6297 5555 ' , 'none' , 116),
('D236' ,'Dr. Shilpy Dolas' , 'not mentioned' , 'Phone number: +91-22 6297 5555 ' , 'none' , 116),
('D237' ,'Dr. Neeraj Rayate' , 'not mentioned ' , 'Phone number: +91-22 6297 5555 ' , 'none' , 116),
('D238' ,'Dr. Satish Pattanshetti' , 'not mentioned ' , 'Phone number: +91-22 6297 5555 ' , 'none' , 116),
('D239' ,'Dr. Abhijeet Naik' , 'not mentioned' , 'Phone number: +91-22 6297 5555 ' , 'none' , 116),
('D240' ,'Dr. Sandeep Tadas' , 'not mentioned' , 'Phone number: +91-22 6297 5555 ' , 'none' , 116),
('D241' ,'Dr. Mangesh Danej' , 'not mentioned ' , 'Phone number: +91-22 6297 5555 ' , 'none' , 116),
('D242' ,'Dr. Rajendra Patil' , 'not mentioned' , 'Phone number: +91-22 6297 5555 ' , 'none' , 116),
('D243' ,'Dr. Sushrut Ganpule' , 'not mentioned ' , 'Phone number: +91-22 6297 5555 ' , 'none' , 116),
('D244' ,'Dr. Anjali Khalane' , 'not mentioned' , 'Phone number: +91-22 6297 5555 ' , 'none' , 116),
('D245' ,'Dr. Varsha Jain' , 'not mentioned' , 'Phone number: +91-22 6297 5555 ' , 'none' , 116),
('D246' ,'Dr. Amruta Motarwar' , 'not mentioned' , 'Phone number: +91-22 6297 5555 ' , 'none' , 116),
('D247' ,'Dr. Sapna Kamalani' , 'not mentioned' , 'Phone number: +91-22 6297 5555 ' , 'none' , 116),
('D248' ,'Dr. Jyotsna Joshi' , 'not mentioned' , 'Phone number: +91-22 6297 5555 ' , 'none' , 116),
('D249' ,'Dr. Madhura Karguppikar' , 'not mentioned' , 'Phone number: +91-22 6297 5555 ' , 'none' , 116),
('D250' ,'Dr. Sajili Mehta' , 'not mentioned' , 'Phone number: +91-22 6297 5555 ' , 'none' , 116),
('D251' ,'Dr. (Col). Inderdeep Singh' , 'not mentioned' , 'Phone number: +91-22 6297 5555 ' , 'none' , 116),
('D252' ,'Dr. Ajinkya A Kelkar' , 'not mentioned' , 'Phone number: +91-22 6297 5555 ' , 'none' , 116),
('D253' ,'Dr. Suhas Sudhakarrao Udgirkar' , 'not mentioned' , 'Phone number: +91-22 6297 5555 ' , 'none' , 116),
('D254' ,'Dr. Neeraj Rayate' , 'not mentioned' , 'Phone number: +91-22 6297 5555 ' , 'none' , 116),
('D255' ,'Dr. Satish Pattanshetti' , 'not mentioned' , 'Phone number: +91-22 6297 5555 ' , 'none' , 116),
('D256' ,'Dr. Sweta Lunkad' , 'not mentioned' , 'Phone number: +91-22 6297 5555 ' , 'none' , 116),
('D257' ,'Dr. Sandip Bartakke' , 'not mentioned' , 'Phone number: +91-22 6297 5555 ' , 'none' , 116),
('D258' ,'Dr. Hemant Kshirsagar' , 'not mentioned' , 'Phone number: +91-22 6297 5555 ' , 'none' , 116),
('D259' ,'Dr. Medha Phadke' , 'not mentioned' , 'Phone number: +91-22 6297 5555 ' , 'none' , 116),
('D260' ,'Dr. Chandrashekhar Dixit' , 'not mentioned' , 'Phone number: +91-22 6297 5555 ' , 'none' , 116),
('D261' ,'Dr. Nirmal Dhumane' , 'not mentioned' , 'Phone number: +91-22 6297 5555 ' , 'none' , 116),
('D262' ,'Dr. Ameya R Pathak' , 'not mentioned' , 'Phone number: +91-22 6297 5555 ' , 'none' , 116),
('D263' ,'Dr. Girish Kakade' , 'not mentioned' , 'Phone number: +91-22 6297 5555 ' , 'none' , 116),
('D264' ,'Dr. Vijay Viswanathan' , 'not mentioned' , 'Phone number: +91-22 6297 5555 ' , 'none' , 116);


INSERT INTO doctor(d_id , d_name , Qualification , contact_info , Email_id , hospital_id)
values
('D265' ,'Dr. Kailash Patra' , 'not mentioned' , 'Phone number: 1800-11-2526' , 'none' , 119),
('D266' ,'Dr. Sunil Patil' , 'not mentioned' , 'Phone number: 1800-11-2526' , 'none' , 119),
('D267' ,'Dr. Pradnya Jagtap' , 'not mentioned' , 'Phone number: 1800-11-2526' , 'none' , 119),
('D268' ,'Dr. Sanjay Kantharia' , 'not mentioned' , 'Phone number: 1800-11-2526' , 'none' , 119),
('D269' ,'Dr. Yatindra Kashid' , 'not mentioned' , 'Phone number: 1800-11-2526' , 'none' , 119),
('D270' ,'Dr.  Harsha Nagrale' , 'not mentioned' , 'Phone number: 1800-11-2526' , 'none' , 119),
('D271' ,'Dr. Surekha Autee' , 'not mentioned' , 'Phone number: 1800-11-2526' , 'none' , 119),
('D272' ,'Dr. Omkarnath Deshpande' , 'not mentioned' , 'Phone number: 1800-11-2526' , 'none' , 119),
('D273' ,'Dr. Neena' , 'not mentioned' , 'Phone number: 1800-11-2526' , 'none' , 119),
('D274' ,'Dr. Vidhyadhar Suryakar' , 'not mentioned' , 'Phone number: 1800-11-2526' , 'none' , 119),
('D275' ,'Dr.  Shalini Reddy' , 'not mentioned' , 'Phone number: 1800-11-2526' , 'none' , 119),
('D276' ,'Dr. Vitthal Kendre' , 'not mentioned' , 'Phone number: 1800-11-2526' , 'none' , 119),
('D277' ,'Dr Baban Tidar' , 'not mentioned' , 'Phone number: 1800-11-2526' , 'none' , 119),
('D278' ,'Dr. Ambika Shukla' , 'not mentioned' , 'Phone number: 1800-11-2526' , 'none' , 119),
('D279' ,'Dr. Amit Sanghavi' , 'not mentioned' , 'Phone number: 1800-11-2526' , 'none' , 119),
('D280' ,'Dr. Chinmayee Haldankar' , 'not mentioned' , 'Phone number: 1800-11-2526' , 'none' , 119);

INSERT INTO doctor(d_id , d_name , Qualification , contact_info , Email_id , hospital_id)
values
('D281' ,'Dr. A. G. Unnikrishnan' , 'not mentioned' , 'Phone number: 1800-11-2526' , 'none' , 121),
('D282' ,'Dr. Vedavati Purandare' , 'not mentioned' , 'Phone number: 1800-11-2526' , 'none' , 121),
('D283' ,'Dr. Manish Bothale' , 'not mentioned' , 'Phone number: 1800-11-2526' , 'none' , 121),
('D284' ,'Dr. Rajiv Sethi' , 'not mentioned' , 'Phone number: 1800-11-2526' , 'none' , 121),
('D285' ,'Dr. Rajendra Patil' , 'not mentioned' , 'Phone number: 1800-11-2526' , 'none' , 121),
('D286' ,'Dr. Abhay Khode' , 'not mentioned' , 'Phone number: 1800-11-2526' , 'none' , 121),
('D287' ,'Dr.Charan Bale' , 'not mentioned' , 'Phone number: 1800-11-2526' , 'none' , 121),
('D288' ,'Dr. Sushil Chavan' , 'not mentioned' , 'Phone number: 1800-11-2526' , 'none' , 121),
('D289' ,'Dr. Neeraj Rayate' , 'not mentioned' , 'Phone number: 1800-11-2526' , 'none' , 121),
('D290' ,'Dr. Narendra Chopde' , 'not mentioned' , 'Phone number: 1800-11-2526' , 'none' , 121),
('D291' ,'Dr. Mandar Dhamangaonkar' , 'not mentioned' , 'Phone number: 1800-11-2526' , 'none' , 121),
('D292' ,'Dr Lalit Banswal' , 'not mentioned' , 'Phone number: 1800-11-2526' , 'none' , 121),
('D293' ,'Dr. Ravindra J Panse' , 'not mentioned' , 'Phone number: 1800-11-2526' , 'none' , 121),
('D294' ,'Dr. Amrish Bidaye' , 'not mentioned' , 'Phone number: 1800-11-2526' , 'none' , 121),
('D295' ,'Kavitha K V' , 'not mentioned' , 'Phone number: 1800-11-2526' , 'none' , 121),
('D296' ,'Dr. Savita Bhat' , 'not mentioned' , 'Phone number: 1800-11-2526' , 'none' , 121),
('D297' ,'Dr. Pranav Radkar' , 'not mentioned' , 'Phone number: 1800-11-2526' , 'none' , 121);


INSERT INTO doctor(d_id , d_name , Qualification , contact_info , Email_id , hospital_id)
values
('D298' ,'Dr. Mandar Vijay Doiphode' , 'D.N.B. (Gen. Surg.), M.N.A.M.S., F.M.A.S, F.I.C.S.' , 'Phone number:917823825875' , 'none' , 122),
('D299' ,'Dr. Mahesh Rangrao Mahadik' , 'MBBS, DNB (Gastroenterology)' , 'Phone number: 7823825875' , 'none' , 122),
('D300' ,'Dr. Pankaj Ramesh Nemade' , 'DNB (GEN. SURGERY), E-FIAGES, FICS, FMAS, DMAS' , 'Phone number:917823825875' , 'none' , 122);

INSERT INTO doctor(d_id , d_name , Qualification , contact_info , Email_id , hospital_id)
values
('D301' ,'Dr. Narendra Patwardhan' , 'MBBS, DDV, MD - Skin, VD & Leprosy','number:099757 78797' , 'none' , 123);

INSERT INTO doctor(d_id , d_name , Qualification , contact_info , Email_id , hospital_id)
values
('D302' ,'Dr. Bhushan Kinholkar' , 'MBBS, MD - General Medicine','number: 080 3728 5150' , 'none' , 124);

INSERT INTO doctor(d_id , d_name , Qualification , contact_info , Email_id , hospital_id)
values
('D303' ,'Dr . Nischal yalgi' , 'MBBS, MD ','number:  020 2452 2452 ' , 'none' , 125),
('D304' ,'Dr. Shruti Mahajan' , 'MBBS, DNB, DGO','number:  020 2452 2452 ' , 'none' , 125);

INSERT INTO doctor(d_id , d_name , Qualification , contact_info , Email_id , hospital_id)
values
('D305' ,'Dr. Shalini Chaudhari' , 'BHMS, MD - Homeopathy','number: 022 7187 3695' , 'none' , 126);

INSERT INTO doctor(d_id , d_name , Qualification , contact_info , Email_id , hospital_id)
values
('D306' ,'Dr. Ajit Mehta' , 'not mentioned',' Telephone : 020 6681 2288 ' , 'none' , 127),
('D307' ,'Dr. Ganeshwala Gurav' , 'not mentioned',' Telephone : 020 6681 2288 ' , 'none' , 127),
('D308' ,'Dr. Abhay Somani' , 'not mentioned',' Telephone : 020 6681 2288 ' , 'none' , 127),
('D309' ,'Dr. Smruti Hindari' , 'not mentioned',' Telephone : 020 6681 2288 ' , 'none' , 127),
('D310' ,'Dr. Laxmikant Kaotekwar' , 'not mentioned',' Telephone : 020 6681 2288 ' , 'none' , 127),
('D311' ,'Dr. Mahendra Kawedia' , 'not mentioned',' Telephone : 020 6681 2288 ' , 'none' , 127),
('D312' ,'Dr. Vrushali Khadke Khirid' , 'not mentioned',' Telephone : 020 6681 2288 ' , 'none' , 127),
('D313' ,'Dr. Humiera Bhatt' , 'not mentioned',' Telephone : 020 6681 2288 ' , 'none' , 127),
('D314' ,'Dr. Nisha Parikh' , 'not mentioned',' Telephone : 020 6681 2288 ' , 'none' , 127),
('D315' ,'Dr. Shireen Poonawala' , 'not mentioned',' Telephone : 020 6681 2288 ' , 'none' , 127),
('D316' ,'Dr. Chandrakant Rao' , 'not mentioned',' Telephone : 020 6681 2288 ' , 'none' , 127),
('D317' ,'Dr. Yogesh Kadam' , 'not mentioned',' Telephone : 020 6681 2288 ' , 'none' , 127),
('D318' ,'Dr. Mateen Sayyed' , 'not mentioned',' Telephone : 020 6681 2288 ' , 'none' , 127),
('D319' ,'Dr. Nilesh Madkikar' , 'not mentioned',' Telephone : 020 6681 2288 ' , 'none' , 127),
('D320' ,'Dr. Prasun Mishra' , 'not mentioned',' Telephone : 020 6681 2288 ' , 'none' , 127),
('D321' ,'Dr. Sanjeev Bakshi' , 'not mentioned',' Telephone : 020 6681 2288 ' , 'none' , 127),
('D322' ,'Dr. Piyush Lodha' , 'not mentioned',' Telephone : 020 6681 2288 ' , 'none' , 127),
('D323' ,'Dr. Aditya Kulkrani' , 'not mentioned',' Telephone : 020 6681 2288 ' , 'none' , 127),
('D324' ,'Dr. Nachiket Dubale' , 'not mentioned',' Telephone : 020 6681 2288 ' , 'none' , 127),
('D325' ,'Dr. Mustafa Shakir' , 'not mentioned',' Telephone : 020 6681 2288 ' , 'none' , 127),
('D326' ,'Dr. Nelson Bardeskar' , 'not mentioned',' Telephone : 020 6681 2288 ' , 'none' , 127),
('D327' ,'Dr. Sushil Deshmukh' , 'not mentioned',' Telephone : 020 6681 2288 ' , 'none' , 127),
('D328' ,'Dr. Sucheta Talele' , 'not mentioned',' Telephone : 020 6681 2288 ' , 'none' , 127),
('D329' ,'Dr. Vijaya Chinchwade' , 'not mentioned',' Telephone : 020 6681 2288 ' , 'none' , 127),
('D330' ,'Dr. Zohara Siamwala' , 'not mentioned',' Telephone : 020 6681 2288 ' , 'none' , 127),
('D331' ,'Dr. Shirish Pophalikar' , 'not mentioned',' Telephone : 020 6681 2288 ' , 'none' , 127),
('D332' ,'Dr. Mathrani Nina' , 'not mentioned',' Telephone : 020 6681 2288 ' , 'none' , 127),
('D333' ,'Dr. Abhishek Andhare' , 'not mentioned',' Telephone : 020 6681 2288 ' , 'none' , 127),
('D334' , 'Dr. Nachiket Purandare' , 'not mentioned',' Telephone : 020 6681 2288 ' , 'none' , 127),
('D335' ,'Dr. R. K. Shimpi' , 'not mentioned',' Telephone : 020 6681 2288 ' , 'none' , 127),
('D336' ,'Dr. Shams Iqbal' , 'not mentioned',' Telephone : 020 6681 2288 ' , 'none' , 127),
('D337' ,'Dr. Vivek Billampelly' , 'not mentioned',' Telephone : 020 6681 2288 ' , 'none' , 127),
('D338' ,'Dr. Abhishek Ghosh' , 'not mentioned',' Telephone : 020 6681 2288 ' , 'none' , 127),
('D339' ,'Dr. Ravi Swaminathan' , 'not mentioned',' Telephone : 020 6681 2288 ' , 'none' , 127),
('D340' ,'Dr. Neville Misquitta' , 'not mentioned',' Telephone : 020 6681 2288 ' , 'none' , 127);

INSERT INTO doctor(d_id , d_name , Qualification , contact_info , Email_id , hospital_id)
values
('D341' ,'Dr. Renu Ranga' , 'MBBS, MD - Obstetrics & Gynaecology, DNB - Obstetrics & Gynecology',' Telephone : 022 7187 3699' , 'none' , 128);

INSERT INTO doctor(d_id , d_name , Qualification , contact_info , Email_id , hospital_id)
values
('D342' ,'Dr. Anand Jaju' , 'MBBS, MS - General Surger',' Telephone : 020 7117 7308' , 'none' , 129);

INSERT INTO doctor(d_id , d_name , Qualification , contact_info , Email_id , hospital_id)
values
('D343' ,'Dr. (Major) Kumar Raushan' , 'MBBS,MS (General Surgery),PGDGM,FMAS,EFIAGES',' Telephone : 020 7117 7308' , 'none' , 130),
('D344' ,'Dr. Aarti Chunnilal Baghele' , 'MBBS, DA, DNB (Anaesthesiology), DM (Paediatric Anaesthesiology)','Telephone :020 3071 7500' , 'none' , 130),
('D345' ,'Dr. Abhijeet Dinesh Lonari' , 'MBBS, D.Ortho, DNB (Orthopedics) , MNAMS',' Telephone :020 3071 7500' , 'none' , 130),
('D346' ,'Dr. Abhijit Shivdas Thakur' , 'MBBS, DA, DNB (Ruby Hall Pune)','Telephone :020 3071 7500' , 'none' , 130),
('D347' ,'Dr. Abraham John' , 'MBBS, MD, (PATH), PDCC (ONCOPATH)',' Telephone :020 3071 7500' , 'none' , 130),
('D348' ,'Dr. Aditi Moghe' , 'Child & Development','Telephone :020 3071 7500' , 'none' , 130),
('D349' ,'Dr. Aditya Girish Date' , 'MBBS, MS General Surgeon',' Telephone :020 3071 7500' , 'none' , 130),
('D350' ,'Dr. Ajita Pralhad Kendre' , 'M.B.B.S., D.M.R.T., D.N.B.',' Telephone :020 3071 7500' , 'none' , 130),
('D351' ,'Dr. Akash Tatiya' , 'not mentioned','Telephone :020 3071 7500' , 'none' , 130),
('D352' ,'Dr. Aman Raj Singh' , 'BDS, MDS',' Telephone :020 3071 7500' , 'none' , 130);

INSERT INTO doctor(d_id , d_name , Qualification , contact_info , Email_id , hospital_id)
values('D353' ,'Dr. Christopher Xavier' , 'MBBS',' Telephone :020 7117 7306' , 'none' , 131);

INSERT INTO doctor(d_id , d_name , Qualification , contact_info , Email_id , hospital_id)
values
('D354' ,'Dr. Rajeev Patwardhan' , 'MBBS ,  MS - Orthopaedics',' Telephone :020 7117 7306' , 'none' , 132),
('D355' ,'Dr. Patwardhan Apoorva Rajeev' , 'MBBS ,  MS - Orthopaedics',' Telephone :020 7117 7331' , 'none' , 132),
('D356' ,'Dr. Prasad Kuvalekar','MBBS, DNB - General Medicine',' Telephone :020 7117 7306' , 'none' , 132),
('D357' ,'Dr. Tushar Pisal' , 'MBBS ,  MS - Orthopaedics',' Telephone :020 7117 7306' , 'none' , 132),
('D358' ,'Dr. Pankaj Bhalerao','MBBS, MS - General Surgery',' Telephone :020 7117 7306' , 'none' , 132),
('D359' ,'Dr. Kanchan Durugkar','MBBS, MS - Obstetrics & Gynaecology',' Telephone :020 7117 7306' , 'none' , 132),
('D360' ,'Dr. Kanchan Durugkar','MBBS, MS - Obstetrics & Gynaecology',' Telephone :020 7117 7306' , 'none' , 132);

INSERT INTO doctor(d_id , d_name , Qualification , contact_info , Email_id , hospital_id) 
VALUES 
('D361' ,'Dr. Manjiri Kulkarni','MBBS, MD',' Telephone :+91 99729-99729' , 'none' , 133),
('D362' ,'Dr. Sujata Rajput','MBBS, DNB (OBGY),Diploma in Gynaec Endoscopy( Germany),Diploma in Cosmetic Gynaecology',' Telephone :+91 99729-99729' , 'none' , 133),
('D363' ,'Dr. Aarti Rapol','MBBS, D.G.O',' Telephone :+91 99729-99729' , 'none' , 133),
('D364' ,'Dr. Amit Jayasingrao Nigade','MBBS, FCPS(Child Health),MD(Peadiatrics),Clinical',' Telephone :+91 99729-99729' , 'none' , 133),
('D365' ,'Dr. Girija N Wagh','MBBS, MD, Diploma in Endoscopy, FICOG',' Telephone :+91 99729-99729' , 'none' , 133),
('D366' ,'Dr. Sandhya Meshram','MBBS, MS (obgy), Fellowship in Reproductive Medicine',' Telephone :+91 99729-99729' , 'none' , 133),
('D367' ,'Dr. Asmita Potdar','MBBS, DNB( Obs/Gyn), Masters in Reproductive Medicine and IVF ( London, UK)',' Telephone :+91 99729-99729' , 'none' , 133),
('D368' ,'Dr. Wadadekar Geeta S','M.B.B.S. Bachelor of Medicine and Surgery',' Telephone :+91 99729-99729' , 'none' , 133),
('D369' ,'Dr. Pavan Jadhav','MBBS, MD(Pediatrics)',' Telephone :+91 99729-99729' , 'none' , 133),
('D370' ,'Dr. Dhanashree Kulkarni','MBBS, DCH, Fellow in Neonatology',' Telephone :+91 99729-99729' , 'none' , 133),
('D371' ,'Dr. Prajakta Deshmukh','MBBS, M.D. Physician, Diploma in Obstetrics and Gynaecology',' Telephone :+91 99729-99729' , 'none' , 133),
('D372' ,'Dr. Karan Kapari','(D.C.H.), BACHELOR OF MEDICINE AND BACHELOR OF SURGERY (M.B.B.S.)',' Telephone :+91 99729-99729' , 'none' , 133),
('D373' ,'Dr. Manish Ramteke','MBBS, MS - Pediatric, Fellowship in Neonatology',' Telephone :+91 99729-99729' , 'none' , 133),
('D374' ,'Dr. Neha Agarwal','MBBS, DMRE, Fellowship in Fetal Medicine',' Telephone :+91 99729-99729' , 'none' , 133),
('D375' ,'Dr.Shikha Gandhi Chopade','M.B.B.S. D.V.D',' Telephone :+91 99729-99729' , 'none' , 133),
('D376' ,'Dr. Leena Srivastava','MBBS,DCH, PGD-DN (Developmental Neurology)',' Telephone :+91 99729-99729' , 'none' , 133),
('D377' ,'Dr. Bela Gandhi','MBBS, MD',' Telephone :+91 99729-99729' , 'none' , 133),
('D378' ,'Dr. Supriya Bildikar','MBBS,DNB, MD(Radiodiagnosis)',' Telephone :+91 99729-99729' , 'none' , 133),
('D379' ,'Dr. Joshi Aniket Chandrakant','MBBS, FCPS (Medicine)',' Telephone :+91 99729-99729' , 'none' , 133),
('D380' ,'Dr. Pankaj Kulkarni','MBBS, DGO',' Telephone :+91 99729-99729' , 'none' , 133),
('D381' ,'Shruti Keluskar','B.Sc. Honors in Food, Nutrition and Dietetics, M.Sc. Nutrition and Dietetics',' Telephone :+91 99729-99729' , 'none' , 133);


INSERT INTO doctor(d_id , d_name , Qualification , contact_info , Email_id , hospital_id)
values
('D382' ,'Dr. Pratibha Patil Chumbale','DNB - Ophthalmology, MBBS',' Telephone 020 4855 6137' , 'none' , 134),
('D383' ,'Dr. Pawan Chumbale','MBBS, MCh - Plastic Surger',' Telephone :022 4939 8291' , 'none' , 134);


INSERT INTO doctor(d_id , d_name , Qualification , contact_info , Email_id , hospital_id)
values
('D384' ,'Dr. Sanjay Kolte','MBBS,FCPS,DNB (General Surgery),MRCS ',' Telephone : 098220 09490' , 'none' , 136);

INSERT INTO doctor(d_id , d_name , Qualification , contact_info , Email_id , hospital_id)
values
('D385' ,'Dr, Swapnil Dharmadhikari','M.D. (Ayu) ',' Telephone : 073504 45566' , 'none' , 137);

INSERT INTO doctor(d_id , d_name , Qualification , contact_info , Email_id , hospital_id)
values
('D386' ,'Dr. Anil Patki','Dermatologist',' Telephone : 020 2544 1512' , 'none' , 139);

INSERT INTO doctor(d_id , d_name , Qualification , contact_info , Email_id , hospital_id)
values
('D387' ,'Dr. Samta B Singhania','MBBS, DNB - OBSTETRICS & GYNECOLOGY, DGO',' Telephone :07721986000' , 'none' , 140),
('D388' ,'Dr. Suhani Kumari',' MSC - NUTRITION AND DIETETICS, THERAPIST' ,' Telephone :07721986000' , 'none' , 140),
('D389' ,'Dr. Rahul Wagh', 'MCH - SURGICAL ONCOLOGY, MS-GENERAL SURGERY,MBBS SURGICAL ONCOLOGIST,' , ' Telephone :07721986000' , 'none' , 140);


INSERT INTO doctor(d_id , d_name , Qualification , contact_info , Email_id , hospital_id)
values
('D390' ,'Dr. Sachin Patil','MBBS, MD, DM',' Telephone : 09850847078' , 'none' , 141),
('D391' , 'Dr. Priya Palimkar' ,'MBBS, MD, DNB',' Telephone : 09850847078' , 'none' , 141),
('D392' ,'Dr. Parmanand Chawan','MBBS, MS',' Telephone : 09850847078' , 'none' , 141),
('D393' ,'Dr. Amol Dumbre','MBBS, DNB',' Telephone : 09850847078' , 'none' , 141),
('D394' ,'Dr. Nilima Kharade','MBBS, DNB, Diploma',' Telephone : 09850847078' , 'none' , 141),
('D395' ,'Dr. Paras Lavatre','MBBS, MD, Diploma',' Telephone : 09850847078' , 'none' , 141),
('D396' ,'Dr. Tushar Patil','MBBS, MD, DM',' Telephone : 09850847078' , 'none' , 141),
('D397' ,'Dr. Mrinal Supriya','MBBS, MS, Fellowship',' Telephone : 09850847078' , 'none' , 141),
('D398' ,'Dr. Mukund Vidhate','MBBS, MD, DM',' Telephone : 09850847078' , 'none' , 141),
('D399' ,'Dr. Sunil Agarwal','MBBS, MD, DNB',' Telephone : 09850847078' , 'none' , 141);

INSERT INTO doctor(d_id , d_name , Qualification , contact_info , Email_id , hospital_id)
values
('D400' ,'Dr. Gajanan Wagholikar','MBBS,MS-General Surgery, DNB-General Surgery',' Telephone : 020 7117 7303' , 'none' , 142);

INSERT INTO doctor(d_id , d_name , Qualification , contact_info , Email_id , hospital_id)
values
('D401' ,'Dr. Rooma Sukhwani','BHMS',' Telephone : 020 7117 7319' , 'none' , 143);

INSERT INTO doctor(d_id , d_name , Qualification , contact_info , Email_id , hospital_id)
values
('D402' ,'Dr. Kirti Sawarkar','BHMS',' Telephone : +91 7020118466' , 'none' , 144);

INSERT INTO doctor(d_id , d_name , Qualification , contact_info , Email_id , hospital_id)
values
('D403' ,'Dr. Milind M Kulkarni','DTCD (TDD), C-HIV',' Telephone : 098603 12537' , 'none' , 145);

INSERT INTO doctor(d_id , d_name , Qualification , contact_info , Email_id , hospital_id)
values
('D404' ,'Dr. Vaibhav D. Pandharkar','MBBS, DNB , Dploma in Tuberculosis and Chest Diseases',' Telephone : 091584 50788' , 'none' , 146);

INSERT INTO doctor(d_id , d_name , Qualification , contact_info , Email_id , hospital_id)
values
('D405' ,'Dr. Akshay Mohanani','Bachelor of Medicine, Bachelor of Surgery (M.B.B.S.), Medicine, M.D. Internal Medicine',' Telephone : 088882 96532' , 'none' , 147);


INSERT INTO doctor(d_id , d_name , Qualification , contact_info , Email_id , hospital_id)
values
('D406' ,'Dr. Piyush Chaudhari','MBBS, DNB Internal Medicine ( GOLD MEDALIST)','Dr. Piyush Chaudhari' , 'none' , 148);


INSERT INTO doctor(d_id , d_name , Qualification , contact_info , Email_id , hospital_id)
values
('D407' ,'Dr. Sachin Khalane','MBBS, DNB - Orthopedics/Orthopedic Surgery, Diploma in Orthopaedics', ' Telephone : 096077 71119', 'none' , 149),
('D408' ,'Dr. Anjali Khalane,','DNB - Respiratory Diseases, MBBS', ' Telephone : 096077 71119', 'none' , 149),
('D409' ,'Dr. Vishal Khalane','DNB - Obstetrics & Gynecology, DGO, MBBS', ' Telephone : 096077 71119', 'none' , 149),
('D410' ,'Dr. Manisha Dembalkar Khalane','BAMS', ' Telephone : 096077 71119', 'none' , 149),
('D411' ,'Dr. Mayur Ingale','MS - ENT, MBBS', ' Telephone : 096077 71119', 'none' , 149);

INSERT INTO doctor(d_id , d_name , Qualification , contact_info , Email_id , hospital_id)
values
('D412' ,'Dr. Surbhi Bhatia L','BDS, MDS - Conservative Dentistry & Endodontics', ' Telephone :020 2663 3223', 'none' , 150),
('D413' ,'Dr. Nootan Shukla','BDS', ' Telephone :020 2663 3223', 'none' , 150),
('D414' ,'Dr. Prannoy Kunde','BDS, MDS - Oral & Maxillofacial Surgery', ' Telephone :020 2663 3223', 'none' , 150),
('D415' ,'Dr. Madhuri Wadhwani','BDS, MDS - Prosthodontist And Crown Bridge', ' Telephone :020 2663 3223', 'none' , 150),
('D416' ,'Dr. Sumanth. S','BDS, MDS - Periodontology and Oral Implantology', ' Telephone :020 2663 3223', 'none' , 150),
('D417' ,'Dr. Sameer Makarand Phatak','BDS, MDS - Orthodontics and Dentofacial Orthopaedics', ' Telephone :020 2663 3223', 'none' , 150),
('D418' ,'Dr. Pramod Narkhede','DNB - General Medicine, MBBS, DNB - Cardiology', ' Telephone :020 2663 3223', 'none' , 150),
('D419' ,'Dr. Samiksha Agarwal','BDS, MDS - Paedodontics And Preventive Dentistry', ' Telephone :020 2663 3223', 'none' , 150);


SELECT doctor.d_name, doctor.Qualification, doctor.contact_info
FROM doctor
JOIN hospital ON doctor.hospital_id = hospital.h_id
WHERE hospital.h_name = 'deccan harikar hospital';

SELECT d_name, Qualification, contact_info
FROM doctor
WHERE hospital_id = (SELECT h_id FROM hospital WHERE h_name = 'deccan harikar hospital');

select * from doctor where d_name  = 'Dr. yogesh laad' ;

delete from  doctor where d_name = 'doctor_details';

