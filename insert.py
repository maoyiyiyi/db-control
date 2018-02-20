#!/usr/bin/env python3

from pymongo import MongoClient
import json 

client = MongoClient( '127.0.0.1', 27017 )
db = client['pan1']
collection = db['info']

file = json.loads(open("tamplate.json").read())
print(file)

ID = collection.insert_one(file).inserted_id
ID

print(collection.find_one())


#def add_db(DB_name):
#	DB_name = client[DB_name]

#def add_collection(DB_name,Collection_name):
#	Collection_name = DB_name[Collection_name]

