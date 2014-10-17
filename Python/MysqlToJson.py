#!/usr/bin/env python
import MySQLdb
import json
import cgi

host = "xxxx"
uname = "xxxx"
pwd = "xxxx"
dbname = "xxxx"
db = MySQLdb.connect(host, uname, pwd, dbname)
cur = db.cursor()
form = cgi.FieldStorage()
cmd = "select * from Notes where text like '%"
cmd += form.getvalue('text')
cmd += "%';"

content = {}

try:
   cur.execute(cmd)
except:
   content['status'] = 'failed'

for row in cur.fetchall():
   content[row[0]] = row[1]

print json.dumps(content, ensure_ascii=False)
db.close()
