

#import libraries--
import numpy as np
import pandas as pd
import matplotlib.pylab as plt
import seaborn as snb
from statistics import mode
from sklearn.metrics import roc_curve, auc ,roc_auc_score
from sklearn.metrics import accuracy_score , confusion_matrix, f1_score
from sklearn.preprocessing import LabelEncoder
from sklearn.model_selection import train_test_split, cross_val_score
from sklearn.preprocessing import StandardScaler
from sklearn.svm import SVC 
from sklearn.naive_bayes import GaussianNB 
from sklearn.ensemble import RandomForestClassifier 
from sklearn.tree import DecisionTreeClassifier
from sklearn.metrics import  classification_report


#*************************************************

# Load the dataset and preprocess it
train_data = pd.read_csv('Training.csv')
test_data = pd.read_csv('Testing.csv')

#***********************************************

#in this training dataset one column is extra so i will remove it 
train_data = pd.read_csv("Training.csv").dropna(axis = 1) 

#**********************************************************

# Encoding the target value for training.dataset-- 
encoder = LabelEncoder()
train_data["prognosis"] = encoder.fit_transform(train_data["prognosis"])
#find dependent and independet variable for train dataset--
x_train = train_data.drop('prognosis' , axis = 1)
y_train = train_data['prognosis']

#***********************************************************

# Encoding the target value for testing  dataset--
test_data["prognosis"] = encoder.fit_transform(test_data["prognosis"])
#find dependent and independet variable for test dataset--
x_test = test_data.drop('prognosis', axis=1)
y_test = test_data['prognosis']

#*******************************************************
# Initializing Models 
models = { 
    "Gaussian NB":GaussianNB(), 
    "Random Forest":RandomForestClassifier (),
    "Decision Tree": DecisionTreeClassifier()
} 
  
#cross validation score for the models 
for model_name in models: 
    model = models[model_name] 
    scores = cross_val_score(model, x_train, y_train, cv = 5)
     
    #print("  ")
    #print(model_name) 
    #print(f"Scores: {scores}") 
    #print(f"Mean Score: {np.mean(scores)}")  #this is final output of cross validation method

#************************************************************

# Train the models
#Naive_byes model
nb_model = GaussianNB()
nb_model.fit(x_train, y_train) 

#Random forest
rf_model =  RandomForestClassifier(random_state=18) 
rf_model.fit(x_train, y_train) 

#decision tree
dt_model =  DecisionTreeClassifier()
dt_model.fit(x_train, y_train) 


#prediction on testing data
dt_preds = dt_model.predict(x_test) 
nb_preds = nb_model.predict(x_test) 
rf_preds = rf_model.predict(x_test) 

#*******************************************************
#Combining predictions from all classifiers
final_preds = [mode([i,j,k ]) for i,j,k in zip(nb_preds, rf_preds, dt_preds)]

#*************************************************************

import warnings

# Ignore warnings related to feature names
warnings.filterwarnings("ignore", category=UserWarning, message="X does not have valid feature names")


#*******************************************************
#symptom_name = {k: v for v, k in enumerate(x_train.columns)}
symptom_name= {'Itching': 0, 'Skin rash': 1, 'Nodal skin eruptions': 2, 'Continuous sneezing': 3, 'Shivering': 4, 'Chills': 5, 'Joint pain': 6, 'Stomach pain': 7, 'Acidity': 8, 'Ulcers on tongue': 9, 'Muscle wasting': 10, 'Vomiting': 11, 'Burning micturition': 12, 'Spotting  urination': 13, 'Fatigue': 14, 'Weight gain': 15, 'Anxiety': 16, 'Cold hands and feets': 17, 'Mood swings': 18, 'Weight loss': 19, 'Restlessness': 20, 'Lethargy': 21, 'Patches in throat': 22, 'Irregular sugar level': 23, 'Cough': 24, 'High fever': 25, 'Sunken eyes': 26, 'Breathlessness': 27, 'Sweating': 28, 'Dehydration': 29, 'Indigestion': 30, 'Headache': 31, 'Yellowish skin': 32, 'Dark urine': 33, 'Nausea': 34, 'Loss of appetite': 35, 'Pain behind the eyes': 36, 'Back pain': 37, 'Constipation': 38, 'Abdominal pain': 39, 'Diarrhoea': 40, 'Mild fever': 41, 'Yellow urine': 42, 'Yellowing of eyes': 43, 'Acute liver failure': 44, 'Fluid overload': 45, 'Swelling of stomach': 46, 'Swelled lymph nodes': 47, 'Malaise': 48, 'Blurred and distorted vision': 49, 'Phlegm': 50, 'Throat irritation': 51, 'Redness of eyes': 52, 'Sinus pressure': 53, 'Runny nose': 54, 'Congestion': 55, 'Chest pain': 56, 'Weakness in limbs': 57, 'Fast heart rate': 58, 'Pain during bowel movements': 59, 'Pain in anal region': 60, 'Bloody stool': 61, 'Irritation in anus': 62, 'Neck pain': 63, 'Dizziness': 64, 'Cramps': 65, 'Bruising': 66, 'Obesity': 67, 'Swollen legs': 68, 'Swollen blood vessels': 69, 'Puffy face and eyes': 70, 'Enlarged thyroid': 71, 'Brittle nails': 72, 'Swollen extremeties': 73, 'Excessive hunger': 74, 'Extra marital contacts': 75, 'Drying and tingling lips': 76, 'Slurred speech': 77, 'Knee pain': 78, 'Hip joint pain': 79, 'Muscle weakness': 80, 'Stiff neck': 81, 'Swelling joints': 82, 'Movement stiffness': 83, 'Spinning movements': 84, 'Loss of balance': 85, 'Unsteadiness': 86, 'Weakness of one body side': 87, 'Loss of smell': 88, 'Bladder discomfort': 89, 'Foul smell of urine': 90, 'Continuous feel of urine': 91, 'Passage of gases': 92, 'Internal itching': 93, 'Toxic look (typhos)': 94, 'Depression': 95, 'Irritability': 96, 'Muscle pain': 97, 'Altered sensorium': 98, 'Red spots over body': 99, 'Belly pain': 100, 'Abnormal menstruation': 101, 'Dischromic  patches': 102, 'Watering from eyes': 103, 'Increased appetite': 104, 'Polyuria': 105, 'Family history': 106, 'Mucoid sputum': 107, 'Rusty sputum': 108, 'Lack of concentration': 109, 'Visual disturbances': 110, 'Receiving blood transfusion': 111, 'Receiving unsterile injections': 112, 'Coma': 113, 'Stomach bleeding': 114, 'Distention of abdomen': 115, 'History of alcohol consumption': 116, 'Fluid overload.1': 117, 'Blood in sputum': 118, 'Prominent veins on calf': 119, 'Palpitations': 120, 'Painful walking': 121, 'Pus filled pimples': 122, 'Blackheads': 123, 'Scurring': 124, 'Skin peeling': 125, 'Silver like dusting': 126, 'Small dents in nails': 127, 'Inflammatory nails': 128, 'Blister': 129, 'Red sore around nose': 130, 'Yellow crust ooze': 131}



result = {
    "symptom_name": symptom_name,
    "predictions_classes": encoder.classes_
}

def preprocess_symptoms(symptom_string):
    input_symptoms = symptom_string.split(",")
    input_data = np.zeros(len(result["symptom_name"]))
    for symptom in input_symptoms:
        symptom = symptom.strip()
        if symptom in result["symptom_name"]:
            input_data[result["symptom_name"][symptom]] = 1
    return np.array(input_data).reshape(1, -1)

def predict_disease(input_data):
    predictions = {}
    models = {
        "Random Forest": rf_model,
        "Naive Bayes": nb_model,
        "Decision Tree": dt_model
    }

    for model_name, model in models.items():
        pred_index = model.predict(input_data)[0]
        prediction = result["predictions_classes"][pred_index]
        predictions[model_name] = prediction

    prediction_counts = {}
    for pred in predictions.values():
        if pred in prediction_counts:
            prediction_counts[pred] += 1
        else:
            prediction_counts[pred] = 1

    final_prediction = max(prediction_counts, key=prediction_counts.get)
    predictions["Final Prediction"] = final_prediction
    return final_prediction


