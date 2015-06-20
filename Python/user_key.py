#!/usr/bin/env python
#
# Author: Luca Francesca
# A function for key generation
#
import random
import string
import os
import binascii

def keyGen(uname, pwd):
    """Generate a password"""
    key = random.choice(string.lowercase)
    key += uname[random.randrange(1, 4):random.randrange(1, 4)]
    key += pwd[2:4] + random.choice(string.uppercase)
    key += binascii.b2a_hex(os.urandom(4)) 
    key += random.choice(string.lowercase)
    key += str(random.randint(2, 9))
    key += str(random.randrange(1, 10) * 3)
    key += random.choice(string.uppercase)
    key += random.choice(string.lowercase)
    key += str(random.randint(random.randint(1, 50), random.randint(50, 70)))
    return key


if __name__ == '__main__':
    print keyGen('luca', 'luca')
    print keyGen('marco', 'marco')
