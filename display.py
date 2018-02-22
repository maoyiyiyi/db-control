#!/usr/bin/env python3

from pymongo import MongoClient
import json 
from pprint import pprint

client = MongoClient( '127.0.0.1', 27017 )
db = client['pan1']
collection = db['resume']


for document in collection.find():
    pprint(document)


