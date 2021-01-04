"""A module to interact with any MySQL database in a simplified way.
You open a connection using open(), queries data with query() and when 
your're done, close the connection with close(). The connection is auto-committed.

If there's any exception, it will be stored in the global exception variable.
"""
import MySQLdb, MySQLdb.cursors

def open(host, user, passwd, db):
	"""Open a connection. Return 1 if success, 0 otherwise"""
	try:
		global conn
		conn = MySQLdb.connect(host, user, passwd, db, cursorclass = MySQLdb.cursors.DictCursor)
		conn.autocommit(1) 
		return 1
	except MySQLdb.DatabaseError, e:
		global exception
		exception = e
		return 0

def query(statement):
	"""Execute a query. Return the result set if success, 0 otherwise"""
	try:
		cur = conn.cursor()
		cur.execute(statement)
		rs = cur.fetchall()
		cur.close()
		return rs
	except MySQLdb.DatabaseError, e:
		global exception
		exception = e
		return 0

def close():
	conn.close()
	
