
from geopy.geocoders import Nominatim
from geopy import distance
import pandas as pd
from geopy.exc import GeocoderTimedOut
import time


#import dataset
hospital_data = pd.read_csv("hospital_adress.csv")

#find lattitude and longitude to given user address
def user_location(address):
    geolocator = Nominatim(user_agent="location")
    retries = 3  #trying in 3-times
    for _ in range(retries):
        try:
            location = geolocator.geocode(address, timeout=10)
            if location:
                return location.latitude, location.longitude
        except GeocoderTimedOut:
            time.sleep(1)
            continue
    return {"error": "Location not found."}


#find near hospitals--
def find_nearby_hospitals(user_location, hospital_data, max_distance=3):
    geolocator = Nominatim(user_agent="distance_find")
    nearby_hospitals = []
    retries = 3
    for address, name in zip(hospital_data['adress'], hospital_data['name']):
        for _ in range(retries):
            try:
                h_location = geolocator.geocode(address, timeout=10)
                if h_location:
                    dist_km = distance.distance(user_location, (h_location.latitude, h_location.longitude)).km
                    if dist_km <= max_distance:
                        nearby_hospitals.append(name)
                break
            except GeocoderTimedOut:
                time.sleep(1)
                continue
            except Exception as e:
                print(f"Error geocoding address '{address}': {e}")
    return nearby_hospitals

#----------------------------------------------
# near_by_hospital funtions
# to used find hospital names near based on disease


def near_by_hospitals_based_disease(user_loc, hospitals, max_distance_km=3):
    nearby_hospitals = []
    for hospital in hospitals:
        try:
            hospital_name = hospital['h_name']
            hospital_address = hospital['h_location']
            hospital_loc = user_location(hospital_address)
            if hospital_loc:
                hospital_lat, hospital_lon = hospital_loc
                dist = distance.distance(user_loc, hospital_loc).km
                print(f"Distance to {hospital_name}: {dist} km")  
                if dist <= max_distance_km:
                    nearby_hospitals.append({'h_name': hospital_name, 'h_location': {'latitude': hospital_lat, 'longitude': hospital_lon}})
        except Exception as e:
            print(f"Error processing hospital: {hospital}, Error: {e}")
    return nearby_hospitals


