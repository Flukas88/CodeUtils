#!/usr/bin/env python
#
# Author: Luca Francesca
# A function for key generation
#

import random
import string


def keyGen(uname, pwd):
    key = random.choice(string.lowercase)
    key += uname[1:5]
    key += pwd[2:4] + random.choice(string.uppercase)
    key += random.choice(string.lowercase)
    key += str(random.randint(2,9)) 
    key += str(random.randrange(1,10+1))
    key += random.choice(string.uppercase)
    key += random.choice(string.lowercase)
    return key;


if __name__ == '__main__':
    print keyGen('prova', 'provami')