import serial
import serial.tools.list_ports


def find_ports():
    ports_name = []
    ports = serial.tools.list_ports.comports()
    for i in ports:
        ports_name.append(i.device)
    print(ports_name)

class add_port:
    def __init__(self, name, port, br, sb, rb):
        self.name = name
        self.port = port
        self.br = br
        self.sb = sb
        self.rb = rb

    def read():
        pass

def main():
    find_ports()

if __name__ == "__main__":
    main()
