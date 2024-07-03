
#import libraries-

from flask import Flask, render_template, request, redirect, jsonify, url_for, flash, session
import pymysql

#create app----
app = Flask(__name__)
app.secret_key = 'poiu!@87bv%'

#function for database connectivity---
def create_connection():
    conn = pymysql.connect(
        host='localhost',
        user='root',
        password='1234',
        database='project',
        cursorclass=pymysql.cursors.DictCursor
    )
    return conn

####################################################

# bydefault open index.html page--

@app.route("/")
def home_page():
    return render_template('index.html')

####################################################

#login page--

@app.route('/login', methods=['GET', 'POST'])
def login():
    if request.method == 'POST':
        username = request.form['Username']
        password = request.form['Password']
        
        conn = create_connection()
        cursor = conn.cursor()
        
        try:
            query = "SELECT username, password, name, email, age, gender FROM registration WHERE username = %s"
            cursor.execute(query, (username,))
            result = cursor.fetchone()
        except pymysql.MySQLError as err:
            flash("Database error", 'error')
            return redirect(url_for('login'))
        finally:
            cursor.close()
            conn.close()
        
        if result:
            #if password match then username exit in database
            db_pass = result['password']
            if db_pass == password:
                session['username'] = result['username']
                session['name'] = result['name']
                session['email'] = result['email']
                session['age'] = result['age']
                session['gender'] = result['gender']
                return redirect(url_for('user_page'))
            else:
                return render_template('login.html', error='Passwords do not match')
        else:
            #username are not exit
            flash('Username does not exist, please register.')
            return redirect(url_for('register'))
    else:
        return render_template('login.html')

####################################################

#Registration page---

@app.route('/register', methods=['GET', 'POST'])
def register():
    if request.method == 'POST':
        username = request.form['Username']
        password = request.form['Password']
        email = request.form['Email']
        repassword = request.form['repassword']
        name = request.form['Name']
        age = request.form['Age']
        gender = request.form['Gender']
        
        if password != repassword:
            flash('Passwords do not match. Please try again.', 'error')
            return redirect(url_for('register'))
        
        conn = create_connection()
        cursor = conn.cursor()
        
        try:
            #check username is already exit in databses
            query = "SELECT * FROM registration WHERE username = %s"
            cursor.execute(query, (username,))
            exist_user = cursor.fetchone()
            if exist_user:
                flash('Username already exists. Please choose a different one.', 'error')
                return redirect(url_for('register'))
            else:
                insert_query = "INSERT INTO registration (username, password, email, name, age, gender) VALUES (%s, %s, %s, %s, %s, %s)"
                cursor.execute(insert_query, (username, password, email, name, age, gender))
                conn.commit()
                flash('Registration successful.', 'success')
                return redirect(url_for('login'))
        except pymysql.MySQLError as err:
            flash("Database error", 'error')
            return redirect(url_for('register'))
        finally:
            cursor.close()
            conn.close()
    else:
        return render_template('registration.html')

####################################################

#reset password---

@app.route('/reset_password', methods=['GET', 'POST'])
def reset_password():
    if request.method == 'POST':
        username = request.form['Username']
        new_password = request.form['Password']
        
        conn = create_connection()
        cursor = conn.cursor()
        
        try:
            query = "UPDATE registration SET password = %s WHERE username = %s"
            cursor.execute(query, (new_password, username))
            conn.commit()
            cursor.close()
            conn.close()
            return redirect(url_for('login'))
        except pymysql.MySQLError as err:
            flash("Database error", 'error')
            return redirect(url_for('reset_password'))
    else:
        return render_template('reset_pass.html')
    
####################################################

#user1.html

@app.route('/user_page', methods=['GET'])
def user_page():
    if 'username' in session:
        username = session['username']
        name = session.get('name')
        email = session.get('email')
        age = session.get('age')
        gender = session.get('gender')
        
        conn = create_connection()
        cursor = conn.cursor()
        
        query = "SELECT name, email, age, gender FROM registration WHERE username = %s"
        cursor.execute(query, (username,))
        user_details = cursor.fetchone()
        cursor.close()
        conn.close()
       
        return render_template('user1.html', username=username, name=name, email=email, age=age, gender=gender)
    else:
        return redirect(url_for('login'))
    
#---------------------------------------------------
#show booking appointments--
@app.route('/appointments', methods=['POST'])
def get_appointments():
    if 'username' in session:
        username = session['username']

        conn = create_connection()
        cursor = conn.cursor()
        
        query = "SELECT * FROM appointment WHERE username = %s"
        cursor.execute(query, (username,))
        appointments = cursor.fetchall()
        cursor.close()
        conn.close()
 
        #print("appointments:" , appointments)
      
        appointment_list = [
            {
                'username': a.get('Username'),
                'email': a.get('Email'),
                'name': a.get('name'),
                'age': a.get('age'),
                'gender': a.get('gender'),
                'date': a.get('date'),
                'time': a.get('time'),
                'doctor_name': a.get('doctor_name'),
                'disease_name': a.get('disease_name')
            } for a in appointments
        ]
        
        print("appointments:", appointment_list)

        return jsonify({'appointments': appointment_list})

    else:
        return redirect(url_for('login'))

######################################################### 

@app.route('/symptoms')
def symptoms():
    return render_template('disease.html')

#--------------------------------------------------
#open disease.html form (display disease name )

from dis_pred import preprocess_symptoms, predict_disease 

@app.route('/predict', methods=['POST'])
def predict():
    data = request.get_json()
    symptoms = data['symptoms']
    if not symptoms:
        return jsonify({'prediction': None})  # Return None if no symptoms are entered
    
    input_data = preprocess_symptoms(symptoms)
    disease = predict_disease(input_data)
    session['predicted_disease'] = disease  # Store disease in session
    return jsonify({'prediction': disease})


@app.route('/disease')
def disease():
    predicted_disease = session.get('predicted_disease', None)
    if predicted_disease:
        return render_template('hospital.html', disease=predicted_disease)
    else:
        return render_template('disease.html')

#####################################################
 
#display name of hospitals (near hospitals button )

from  find_hospital import  find_nearby_hospitals ,user_location , near_by_hospitals_based_disease

#import dataset
import pandas as pd
hospital_data = pd.read_csv("hospital_adress.csv")

@app.route('/nearby_hospitals', methods=['POST'])
def nearby_hospitals():
    data = request.get_json()
    user_address = data.get('address')
    user_loc = user_location(user_address)
    
    print("user address:" , user_address )
    print("user lattitude , longitude:" ,user_loc )
    
    nearby_hospitals = find_nearby_hospitals(user_loc, hospital_data)
    
    
    print("nearby_hospitals :" , nearby_hospitals )
    
    return jsonify({'nearby_hospitals': nearby_hospitals})


# Route to serve the HTML file
#@app.route('/disease')
#def index():
#    return render_template('hospital.html')


###############################################################################

#display name of hospitals  based on disease from database(disease-orinted hospitals button)

@app.route('/nearby_hospitals_symptoms', methods=['POST'])
def nearby_hospitals_symptoms():
        #get user location
        data = request.get_json()
        user_address = data.get('address')
        
        #get disease name
        predicted_disease = session.get('predicted_disease', None)
        if not predicted_disease:
            return jsonify({'error': 'No disease predicted'})

        print("disease name:" , predicted_disease)
  
        # Get user location
        user_loc = user_location(user_address)
        if not user_loc:
            return jsonify({'error': 'Location not found'})

        print("User location:", user_loc)


         # Connect to the database
        conn = create_connection()
        cursor = conn.cursor()
        
        # SQL query to find hospitals treating the predicted disease
        query = """
        SELECT DISTINCT hospital.h_name, hospital.h_location
        FROM hospital
        INNER JOIN doctor ON hospital.h_id = doctor.hospital_id
        INNER JOIN doctor_specialties ON doctor.d_id = doctor_specialties.doctor_id
        INNER JOIN specialties ON doctor_specialties.specialty_name = specialties.specialty_name
        INNER JOIN specility_disease ON specialties.specialty_name = specility_disease.specility_name
        INNER JOIN disease ON specility_disease.disease_name = disease.Disease_name
        WHERE disease.Disease_name = %s 
        """

        
        cursor.execute(query, (predicted_disease,))
        results = cursor.fetchall()
        
        print("Fetched results:", results)

         # Close cursor and connection
        cursor.close()
        conn.close()
        
        
        # Check if hospitals is empty
        if not results:
            return jsonify({'error': 'No hospitals found for the specified disease'})
        

        print("Fetched results:", results)
        
        # store the hospital data into the correct format
        
        hospitals = []
        for row in results:
            try:
                hospital = {
                'h_name': row['h_name'],
                'h_location': row['h_location']
                }
                hospitals.append(hospital)
            except Exception as e:
                print(f"Error processing row: {row}, Error: {e}")

        print("Formatted hospitals list:", hospitals)
    
        nearby_hospitals = near_by_hospitals_based_disease(user_loc, hospitals)
    
        print("Final nearby hospitals:", nearby_hospitals)
    
        return jsonify({'nearby_hospitals': nearby_hospitals})


#####################################################

#show doctor and specialties list on hospitals-----(near by user)

@app.route('/hospital_details')
def hospitals_doctors_details():
    hospital_name = request.args.get('name', '')
    hospital_name = hospital_name.strip() #remove any leading and ending whitespaces 

    print("Value of hospital_name:", hospital_name)

    try:
        # Connect to the database
        conn = create_connection()
        cursor = conn.cursor()

        # Query to display hospital details on page
        query_hospital = "SELECT h_name, h_location, contact FROM hospital WHERE h_name = %s"

        cursor.execute(query_hospital, (hospital_name,))
        hospital_details = cursor.fetchone()

        # Query to display doctor names for the hospital
        query_doctors ="""SELECT DISTINCT doctor.d_name
        FROM doctor
        JOIN hospital ON doctor.hospital_id = hospital.h_id
        WHERE hospital.h_name = %s """

        #query_doctors ="""SELECT DISTINCT d_name
        #           FROM doctor
        #           WHERE doctor.hospital_id = (
        #          SELECT h_id
        #         FROM hospital
        #        WHERE h_name = %s"""

        cursor.execute(query_doctors, (hospital_name,))
        doctors_details = cursor.fetchall()


        # Query to display specility details for the hospital
        query_specility = """ SELECT DISTINCT specialty_name FROM doctor_specialties WHERE doctor_id IN (SELECT d_id FROM doctor WHERE hospital_id = (SELECT h_id FROM hospital WHERE h_name = %s))"""

        cursor.execute(query_specility, (hospital_name,))
        specility_details = cursor.fetchall()
        
        # display output
        #print("Query executed:", specility_details)
        #print("Hospital details fetched:", hospital_details)
        
        # Close cursor and connection
        cursor.close()
        conn.close()

        # Check if hospital_details is not None
        if hospital_details:
            return render_template('hosp_doc_details.html', hospital=hospital_details, doctors=doctors_details , specility=specility_details )
        else:
            return "Hospital details not found."

    except Exception as e:
        print("Error occurred:", str(e))
        return "An error occurred while fetching hospital details."

#####################################################
#display doctor and specility list (based on disease and near hospitals)

@app.route('/hospital_details_disease')
def hospitals_doctors_details_disease():
    hospital_name = request.args.get('name', '')
    hospital_name = hospital_name.strip()

    print("Value of hospital_name:", hospital_name)

    #store disease name in session
    predicted_disease = session.get('predicted_disease', None)
    if not predicted_disease:
        return jsonify({'error': 'No disease predicted'})

    print("disease name:" , predicted_disease)
    
    try:
        # Connect to the database
        conn = create_connection()
        cursor = conn.cursor()

        # Query to display hospital details on page
        query_hospital = "SELECT h_name, h_location, contact FROM hospital WHERE h_name = %s"
        
        cursor.execute(query_hospital, (hospital_name,))
        hospital_details = cursor.fetchone()
        #print("hospital name:" , hospital_details)

        # Query to display doctor details for the hospital
        query_doctors ="""SELECT d.d_name AS    d_name
        FROM hospital h
        JOIN doctor d ON h.h_id = d.hospital_id
        JOIN doctor_specialties ds ON d.d_id = ds.doctor_id
        JOIN specility_disease sd ON ds.specialty_name = sd.specility_name
        WHERE h.h_name = %s AND sd.disease_name = %s """

        cursor.execute(query_doctors, ( hospital_name, predicted_disease,))
        doctors_details = cursor.fetchall()
        print("doctor:" , doctors_details)

        # Query to display specility details for the hospital
        query_specility = """ SELECT DISTINCT ds.specialty_name AS specialty_name
        FROM hospital h
        JOIN doctor d ON h.h_id = d.hospital_id
        JOIN doctor_specialties ds ON d.d_id = ds.doctor_id
        JOIN specility_disease sd ON ds.specialty_name = sd.specility_name
        WHERE h.h_name = %s AND sd.disease_name = %s
        """

        cursor.execute(query_specility, ( hospital_name, predicted_disease,))
        specility_details = cursor.fetchall()
        print("specility:" ,  specility_details)
        
        # Close cursor and connection
        cursor.close()
        conn.close()

        # Check if hospital_details is not None
        if hospital_details:
            return render_template('hosp_doc_details.html', hospital=hospital_details, doctors=doctors_details , specility=specility_details )
        else:
            return "Hospital details not found."

    except Exception as e:
        print("Error occurred:", str(e))
        return "An error occurred while fetching hospital details."

#####################################################
#doctor_book.html
#display details of doctor and book appointmet--

@app.route('/doctor_book/<doctor_name>')
def doctor(doctor_name):
    doctor_name = doctor_name.strip()
    
    #Connect to the database
    conn = create_connection()
    cursor = conn.cursor()
    
    #Query to display hospital details on page
    query_doctor_details = "SELECT * from doctor where d_name = %s"
        
    cursor.execute(query_doctor_details, (doctor_name,))
    doctor_details = cursor.fetchone()    
    
    print("doctor details:" , doctor_details)
    if not doctor_details:
        return "Doctor not found"
    
    
    #display specility of given doctor--
    query_doctor_specility = """SELECT ds.specialty_name
                            FROM doctor d
                            JOIN doctor_specialties ds ON d.d_id = ds.doctor_id
                            WHERE d.d_name = %s"""
    
    cursor.execute(query_doctor_specility, (doctor_name,))
    doctor_specialties = cursor.fetchall()
    

    specialties = [specialty['specialty_name'] for specialty in doctor_specialties]
    
    # Close cursor and connection
    cursor.close()
    conn.close()
    
    #return 
    return render_template('doctor_book.html', doctor=doctor_details, specialties= specialties )

#---------------------------------------------------------------------------------------

#book apointment
@app.route('/book_appointment/<doctor_name>', methods=['POST'])
def book_appointment(doctor_name):
    username = session.get('username')
    email = session.get('email')
    name = session.get('name')
    disease_name = session.get('predicted_disease')
    doctor_name = doctor_name.strip()
    age = session.get('age')
    gender = session.get('gender')
    
    date = request.form['date']
    hour = request.form['hour']
    minute = request.form['minute']
    time_period = request.form['time_period']
    time = f"{hour}:{minute} {time_period}"

    print(username)
    print(email)
    print(name)
    print(age)
    print(gender)
    print(disease_name)
    print(doctor_name)
    
    # Connect to the database
    conn = create_connection()
    cursor = conn.cursor()
    
    query= "INSERT INTO appointment (Username, email, name, age, gender, date, time, doctor_name, disease_name) VALUES (%s, %s, %s, %s, %s, %s, %s, %s, %s)"
    cursor.execute(query, (username, email, name, age, gender, date, time, doctor_name, disease_name))
    conn.commit()
    cursor.close()
    conn.close()

    return redirect(url_for('user_page', username=username))
#---------------------------------------------

# Route to book appointment for other patients
@app.route('/book_other_appointment', methods=['POST'])
def book_other_appointment():
    disease_name = session.get('predicted_disease')
    username = session.get('username')
    
    doctor_name = request.form['doctor_name'].strip()
    other_patient_name = request.form['other_patient_name']
    other_gender = request.form['other_gender']
    other_age = request.form['other_age']
    other_email = request.form['other_email']
    other_date = request.form['other_date']
    other_hour = request.form['other_hour']
    other_minute = request.form['other_minute']
    other_time_period = request.form['other_time_period']
    other_time = f"{other_hour}:{other_minute} {other_time_period}"

    # Debug prints
    print(username)
    print(disease_name)
    print(doctor_name)

    # Connect to the database
    conn = create_connection()
    cursor = conn.cursor()
    
    query = "INSERT INTO appointment (Username, email, name, age, gender, date, time, doctor_name, disease_name) VALUES (%s, %s, %s, %s, %s, %s, %s, %s, %s)"
    cursor.execute(query, (username, other_email, other_patient_name, other_age, other_gender, other_date, other_time, doctor_name, disease_name))

    conn.commit()
    cursor.close()
    conn.close()

    return redirect(url_for('user_page', username=username))
   
#----------------------------------------------------
if __name__ == "__main__":
    app.run(debug=True)
