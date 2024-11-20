#!/usr/bin/env python3
# By Apie, 20241120
import random
import socket
import os.path

try:
    with open(os.path.expanduser('~/greetings.txt')) as f:
        greets = f.read().split('\n\n')
except OSError:
    greets = ['<TEXT>']

greet = random.choice(greets)

hostname = socket.gethostname()
# bold hostname
greeting_text = f"Welcome to \x1b[1m{hostname}\x1b[0m."

for line in greet.split('\n'):
    if not line:
        continue
    print(line.replace('<TEXT>', greeting_text))
