#!/usr/bin/env python3

from pymongo import MongoClient
import sys

client = MongoClient( '127.0.0.1', 27017 )
db = client['pan1']
collection = db['resume']

def delete_doc(name):
    result = collection.delete_one({"name":name})
    result

#print(sys.argv[1])
delete_doc(sys.argv[1]) 
