import socket
import threading
import sys
from receipt import Receipt

global current
current = []
total  = 0
def Clear():
	global current
	current = []
def recv_msg():
    while True:
        Name = s.recv(1024)
        Price = s.recv(1024)
        Name = Name.decode()
        Price = Price.decode()
        print(Name)
        print(Price)  
        Price = int(Price)         
        total = total+(price*1)
        allpd = [Name,1,Price]
        current.append(allpd)
        print(current)           
        if Name =='Done':
         from subprocess import Popen
         Popen('report.pdf',shell=True)
         total = 0   

def send_msg():
    while True:
        SendBarcode = input(str("Enter message: "))
        SendBarcode = SendBarcode.encode()
        s.send(SendBarcode)
        print(SendBarcode)

	
	
host = '192.168.99.10'
port = 65432
s=socket.socket(socket.AF_INET, socket.SOCK_STREAM) 
s.connect((host, port))

t = threading.Thread(target=recv_msg)
t.start()

send_msg()
