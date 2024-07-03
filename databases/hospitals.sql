show databases;
use project;
show tables;


select * from hospital; 

drop table doctor;
drop table hospital;

create table hospital( h_id int primary key auto_increment,  
h_name varchar(100) not null , 
h_location varchar(100) ,  
contact varchar(150) , 
website varchar(100),
lattitude varchar(100),
longitude varchar(100));

  insert into hospital values(101 , 
  "MJM hospital" ,
  "1202/2, Ghole Rd, Pune, Maharashtra 411005" ,
  "WhatsApp: +91 8530310999 ,
   Telephone : +(91)-20-414 99 999
                +(91)-20- 255 35 869 ",
  "https://www.mjmhospital.com" , 
  '18.5229223',
  '73.8478223');
  
  
 insert into hospital values(102 , 
  "deccan harikar hospital" ,
  "1160/61, University Road, Shivajinagar, Pune, Maharashtra 41100",
  "Telephone : +91-20-41095000 | +91-20-41095002
   whatsApp : +91-7757964091" , 
  "https://deccanhospital.in/" , 
  '18.5383453',
  '73.8343381'); 
  
 insert into hospital values(103 , 
  "KEM hospital" ,
  "KEM Hospital, Jawaharlal Nehru Marg, Somwar Peth, Pune" ,
  "Telephone : 02066037300" , 
  " https://kemhospitalpune.org/" , 
  " 18.5205122",
  "73.8675947 "); 
  
insert into hospital values(104 , 
  "Gupte Hospital" ,
  " V. D. Ghate Path, Deccan Gymkhana, Pune" ,
   "WhatsApp : +91 95119 02554" , 
  " https://guptehospital.com/" , 
  "18.519719", 
  "73.8396515"); 
  
insert into hospital values(105, 
  " apollo spectra " ,
  " Sadashiv Peth, Pune, " ,
  "WhatsApp: +91 6366530173" , 
  "https://www.apollospectra.com/" , 
  " 18.5107764" ,
  "73.8502149"); 
  
  insert into hospital values(106, 
  " MediCtrl Apple Hospital " ,
  " Wakad Road, Gulmohar colony, Vishal Nagar, Pimpri-Chinchwad, Haveli, Pune ",
  "08888746777" ,
  " https://medictrl.com/" , 
  "18.5885306" , 
  "73.7810649"); 
  

 insert into hospital values(107, 
  "rubby hall hospital " ,
  "Boat Club Road, Pune" ,
  "Appointment : 02066455100" ,
  "https://rubyhall.com/" , 
  "18.5393656" , 
  "73.878263");
  

  insert into hospital values(108, 
  "rubby hall hospita" ,
  "RELA INSTITUTE - RUBY HALL CLINIC, 40, Rajarshi Shahu Maharaj Path, Somwar Peth, Pune " ,
  "Telephone : 02066455100 " ,
  "https://rubyhall.com/" , 
  "18.5338589", 
  "73.8771398");



insert into hospital values(109, 
  "oyster and pearl hospital" ,
  " 1671-75,ganeshkhind road ,shivajinagar , pune " ,
  "Appointment : 02067216600" ,
  "https://onphospitals.com/" , 
  "18.532948349999998",
  "73.84681756269053");
  
   insert into hospital values(110, 
  "jehangir hospital " ,
  "Jehangir Hospital, Bund Garden Road, Somwar Peth, Pune" ,
  "02066819999" ,
  "http://www.jehangirhospital.com/" , 
  "18.53034355",
  "73.87665054967444");
  
  insert into hospital values(111, 
  " mothercare hospital ivf centre" ,
  "Somwar Peth, Pune",
  "Telephone : 020 2426 1182" ,
  "https://www.doctorsada.com/" ,
  "18.5219205",
  "73.8582903");
  
insert into hospital values(112, 
"Pai Urology Clinic" ,
"Sheshadri, 1, Paud Road, Rambaug Colony, Kothrud, Pune",
"not mentioned" ,
"not mentioned" ,
"18.5109303",
"73.81702892520593");

insert into hospital values(113, 
" Kulkarni Hospital" ,
"Guruwar Peth, Pune",
"Phone number: 020 7117 7321" ,
" https://www.practo.com/pune/clinic/kulkarni-hospital-shukrawar-peth/doctors" ,
"18.5113589" ,
"73.8576197");  

insert into hospital values(114, 
"Lokmanya Hospital " ,
"314 / B Chinchwad Gaon Road, Pune",
"Phone number: 098819 85453" ,
"lokmanyahospitals.in" ,
"18.6218573" , 
"73.7825976)"); 

insert into hospital values(115, 
"Sahyadri Hospital " ,
"Sahyadri Hospital, Karve Road, Deccan Gymkhana, Pune",
"Phone number:  020 6727 1111" ,
"sahyadrihospital.com" ,
"18.5129731",
"73.839248352997"); 

insert into hospital values(116, 
"Jupiter Hospital " ,
"19, Balewadi High Street, Dasar, Baner, Pune",
"Phone number:  020 2799 2799" ,
"jupiterhospital.com" ,
"18.5703289 " , 
"73.7744816");

insert into hospital values(117, 
"Indian Red Cross Hospital " ,
" Chai Cafe, Dastur Meher Road, Pune Cantonment, Pune",
"Phone number:  020 2606 8974" ,
"indianredcross.org" ,
" 18.5159748", 
"73.87710172951937"); 

insert into hospital values(118, 
"National Aids Research Institute" ,
"MIDC Bhosari, Bhosari, Pimpri-Chinchwad, Haveli, Pune",
"Phone number:  020 2733 1200" ,
"nari-icmr.res.in" ,
"18.618668749999998", 
"73.8383211271024");

insert into hospital values(119, 
"ESI Hospital" ,
"Aundhgaon - Aundh Dmart Road, Aundh, Pune",
"Phone number:  020 2728 0985" ,
"esic.gov.in" ,
"18.5650947",
"73.8091401");

insert into hospital values(120, 
"Dwarka Hospital" ,
"Lane 1C, Anupam Park, Bavdhan, Mulshi, Pune",
"Phone number:020 6529 8855" ,
"none" ,
"18.5096574",
"73.7786964");

insert into hospital values(121, 
"Chellaram Diabetes Institute" ,
"Lane 1C, Anupam Park, Bavdhan, Mulshi, Pune",
"Phone number:  098210 74411" ,
"cdi.org.in" ,
"18.5096574",
"73.7786964");

insert into hospital values(122, 
"Gastrohub Hospital" ,
"Shantiniketan Society, Vishal Nagar, Pimpri-Chinchwad, Haveli, Pune",
"Phone number:  078238 25875" ,
"gastrohubhospital.com" ,
"18.5901851",
"73.7848756");

insert into hospital values(123, 
"Shreyas Hospital" ,
"Dr. NarenDr. a G. Patwardhan, Deccan Gymkhana Road, Deccan Gymkhana, Pune",
"099757 78797" ,
"shreyashospital.com" ,
"18.5158392", 
"73.8418507");

insert into hospital values(124, 
"Sanjivan Hospital" ,
"Karve Road, Erandwana, Pune",
"020 2711 8066" ,
"sanjeevanhospitalpune.com" ,
"18.5052987", 
"73.8238103");

insert into hospital values(125, 
"Global Hospital" ,
"Dattawadi, Pune, Pune District",
" 020 2452 2452 " ,
"globalhospitalpune.com" ,
"18.5006978", 
"73.8430106");

insert into hospital values(126, 
"Apurva Homeopathy Clinic" ,
"Pune, Pune District, Maharashtra, 411045, India",
" Telephone : 092262 84352 " ,
"None" ,
"18.521428", 
"73.8544541");

insert into hospital values(127, 
"CIMET's Inamdar Multispeciality Hospital" ,
"Dr. Qaedjohar Dhariwal, S no 15, 54/1, Fatima Nagar, Pune",
" Telephone : 020 6681 2288 " ,
" inamdarhospital.com" ,
"18.5032016", 
"73.8998432");

insert into hospital values(128, 
" Deshpande Hospital" ,
" Deshpande Hospital, Late Vitthalrao Namdeo Shivarkar Road, Fatima Nagar, Pune",
" Telephone : 094220 23971 " ,
"None" ,
"18.5049909", 
"73.9022358");

insert into hospital values(129, 
"Sri Sai Hospital" ,
"Keshav Nagar, Pune, Pune",
" Telephone :098228 40204" ,
"None" ,
"18.5322658",
"73.9383844");

insert into hospital values(130, 
"Aditya Birla Memorial Hospital" ,
"Aditya Birla Memorial Hospital Blood Bank, Aditya Birla Hospital Marg, Mulshi, Pune",
" Telephone :020 3071 7500",
"adityabirlahospital.com" ,
"18.6256736", 
"73.7748617");

insert into hospital values(131, 
"Ashakiran jhc Hospital" ,
"Pimple Gurav, Pimpri-Chinchwad, Haveli, Pune District, Maharashtra, 411012, India",
" Telephone :+91 20 6073 3331 ",
"ashakiranhospital.com" ,
" 18.5840816",
"73.8159141");

insert into hospital values(132, 
"Dhanashree Hospital" ,
"Vinayak Nagar, Juni Sangvi, Pimpri-Chinchwad, Haveli, Pune",
" Telephone : 094220 31544 ",
"none" ,
"18.584317",
"73.815494");

insert into hospital values(133, 
"Cloudnine Hospital - Shivajinagar" ,
"Kalyani Nagar, Pune, Pune District, Maharashtra, 411037, India",
" Telephone : 099728 99728",
"cloudninecare.com" ,
"18.5444651", 
"73.9056677");

insert into hospital values(134, 
"Horizon Hospital" ,
"Kharadi, Pune, Pune District, Maharashtra, 411014, India",
" Telephone : 098603 11362",
"horizonhospitalpune.com" ,
"18.555631", 
"73.9338656");

insert into hospital values(135, 
"Kalyani Hospital" ,
"Kharadi, Pune, Pune District, Maharashtra, 411014, India",
" Telephone : 080806 47264",
"kalyanihospital.co.in" ,
"18.555631", 
"73.9338656");

insert into hospital values(136, 
"Dr Sanjay Kolte - General, Hernia & Laparoscopic Surgeon" ,
"Shiv Sagar,Ramchandra Gayakwad Path, Marutrao Gaikwad nagar,Aundh, Pune",
" Telephone : 098220 09490",
"Website: drsanjaykolte.in" ,
" 18.560219",
"73.805634");

insert into hospital values(137, 
"Dharmadhikari Ayurveda Clinic & Research Center" ,
"Vasudev Balvant Phadke Path, Sadashiv Peth,pune",
" Telephone : 073504 45566",
"Website: dharmadhikariayurved.com" ,
"18.5128117",
" 73.8502778");
insert into hospital values(138, 
"Pungaliya Hospital" ,
" Wagholi, Pune, Pune District, Maharashtra, 411006, India",
" Telephone : 020 2705 1464",
"none" ,
"18.5806299",
"73.9833099");

insert into hospital values(140, 
"Prudent Clinics "  ,
"Pride supermarket,00,Lane 5,Suyojan Society, Ghorpuri,Pune,Pune District,Maharashtra,411001,India",
" Telephone :07721986000",
"none" ,
"18.53980245",
"73.89868284789321");

insert into hospital values(142, 
"Dr Wagholikar's Gastro Clinic"  ,
"Paan shop, Gopal Hari Deshmukh Marg, Balewadi Phata, Baner, Pune",
" Telephone : 020 7117 7303",
" drwagholikar.com" ,
"18.5645201",
"73.7747709");

insert into hospital values(143, 
"Ashirwad Clinic"  ,
"Juni Sangvi, Pimpri-Chinchwad, Haveli, Pune",
" Telephone : 020 2727 0010",
"none" ,
"18.574108",
"73.8203773");

insert into hospital values(144, 
"Madhavbaug Clinic "  ,
"Pimple Gurav, Pimpri-Chinchwad, Haveli, Pune District, Maharashtra, 411012, India",
" Telephone : +91 7020118466",
"madhavbaug.org" ,
" 18.5840816",
"73.8159141");

insert into hospital values(145, 
"Kulkarni Clinic"  ,
"Vishrantwadi - Airport Road, Ward 3, Pune, Pune District, Maharashtra, 411015, India",
" Telephone : 098603 12537",
"Website: hivclinicpune.in" ,
"18.5743791",
"73.8933748");

insert into hospital values(146, 
"Pandharkar Chest Clinic"  ,
"Kharadi Bypass, Kharadi, Pune, Pune District, Maharashtra, 411036, India",
" Telephone : 091584 50788",
"none" ,
"18.5500575", 
"73.9368445");

insert into hospital values(147, 
"Om Clinic"  ,
"Juni Sangvi, Pimpri-Chinchwad, Haveli, Pune",
" Telephone : 088882 96532",
"none" ,
"18.574108",
"73.8203773");

insert into hospital values(149, 
"Omkar Khalane Hospital"  ,
"Aundh Ravet Road, Kalewadi, Pimpri-Chinchwad, Haveli, Pune",
" Telephone : 096077 71119",
"none",
"18.5998352",
"73.7801683");

insert into hospital values(150, 
"Lifeberries Healthcare Diagnostics Dental Clinic"  ,
"Phoenix Marketcity, 207, Viman Nagar Road, Ward 12, Pune, Pune District, Maharashtra, 411014, India",
" Telephone :  020 2663 3223",
"none",
"18.5620429",
"73.91666301427271");

select * from hospital;
  
 SELECT hospital.h_name
    FROM hospital
    INNER JOIN doctor ON hospital.h_id = doctor.hospital_id
    INNER JOIN doctor_specialties ON doctor.d_id = doctor_specialties.doctor_id
    INNER JOIN specialties ON doctor_specialties.specialty_name = specialties.specialty_name
    INNER JOIN specility_disease ON specialties.specialty_name = specility_disease.specility_name
    INNER JOIN disease ON specility_disease.disease_name = disease.Disease_name
    WHERE disease.Disease_name = 'fungal infection';