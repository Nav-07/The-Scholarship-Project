# Nav 2020
# This Port Scanner is Shit, Will certainly update it before the actual test.
import sys
import socket
from datetime import datetime

# Get the Input Arguments
if len(sys.argv) == 2:
	target = socket.gethostbyname(sys.argv[1])
else:
	print('Invalid Arguments Supplied')
	sys.exit()

print('-' * 50)
print('Scanning Target: '+target)
print('Time Started: ' + str(datetime.now()))
print('-' * 50)

try: 
	for port in range(50,85):
		s = socket.socket(socket.AF_INET, socket.SOCK_STREAM)
		socket.setdefaulttimeout(1) 
		result = s.connect_ex((target, port))
		if result == 0:
			print('Port {} is open.'.format(port))
		s.close()

except KeyboardInterrupt:
	print('\nExiting')
	sys.exit()

except socket.gaierror:
	print('Cannot Resolve Host Name')
	sys.exit()

except socket.error:
	print('Cannot Connect to Server')
	sys.exit()
