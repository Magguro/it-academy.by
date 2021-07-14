import socket
import time

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
            con.sendall(b"Echo server reply: ")
            con.sendall(data)
            if not data:
                break
        con.close()
