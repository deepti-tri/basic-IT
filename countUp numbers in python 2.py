#!/bin/python

import math
import os
import random
import re
import sys



# Complete the countUp function below.
def countUp(start):
    start += 1
    for i in range(1,10): 
        print(str(start) + " then", end=' '),
        start += 1
    print(start)
        

if __name__ == '__main__':
    start = int(input().strip())

    countUp(start)