# An example script to connect to Google using socket
# programming in Python
import socket
s = socket.socket(socket.AF_INET, socket.SOCK_STREAM)
print ("Socket successfully created")
# default port for socket
port=80
host_ip = socket.gethostbyname('www.juniv.edu')
# connecting to the server
s.connect((host_ip, port))
print ('IP of www.juniv.edu',host_ip)
