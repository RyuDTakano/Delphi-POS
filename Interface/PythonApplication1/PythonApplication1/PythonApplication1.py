
import socket
import threading
import sys
from receipt import Receipt
from time import sleep
global current
current = []

def Clear():
	global current
	current = []

def recv_msg():
    while True:
        Name = s.recv(256)
        sleep(0.05);
        Price = s.recv(256)
        sleep(0.05);
        Quntity = s.recv(256)
        sleep(0.05);
        Name = Name.decode()
        Price = Price.decode()
        Quntity = Quntity.decode()
        if Name =='WellDone':
         Price = int(Price)
         total = sum([p[2] for p in current])
         Receipt(current,Price)
         
         from subprocess import Popen
         Popen('report.pdf',shell=True)
         total = 0        
         Clear()
        if Name != 'WellDone': 
         print(Name)
         print(Price)  
         print(Quntity)
         if Price =='':
            Price = 0
         if Quntity =='':
             Quntity = 0
         Price = int(Price) 
         Quntity = int(Quntity)
         Price = Price * Quntity
         allpd = [Name,Quntity,Price]
         current.append(allpd)
         print(current)           
          
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
