#!/usr/bin/env python3

from pymongo import MongoClient
import json 

client = MongoClient( '127.0.0.1', 27017 )
db = client['pan1']
collection = db['resume']

#def insert_doc(file_name):
file = json.loads(open("resume.json").read())
ID = collection.insert_one(file).inserted_id
ID

