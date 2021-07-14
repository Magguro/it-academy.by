<<<<<<< HEAD
import socket
import time
=======

import socket
>>>>>>> 267f777757ae1a822c56af45dc68cf6a927039c8

with socket.socket() as s:
    host = 'localhost'
    port = 8001
    s.bind((host, port))
    print(f'socket binded to {port}')
    s.listen()
    con, addr = s.accept()
    with con:
        while True:
            data = con.recv(1024)
<<<<<<< HEAD
            con.sendall(b"Echo server reply: ")
            if not data:
                break
            con.sendall(data)
        con.close()
=======
            if not data:
                break
            con.sendall(data)
>>>>>>> 267f777757ae1a822c56af45dc68cf6a927039c8
