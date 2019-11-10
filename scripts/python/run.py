#!/bin/python

import random
from datetime import datetime
import time

value=["Trace", "Debug", "Information", "Warning", "Erinnerung"]

while True:
    print("%s : %s  --- Unfortunatley something happened!"  % (datetime.now(), value[random.randint(0,len(value)-1)]))
