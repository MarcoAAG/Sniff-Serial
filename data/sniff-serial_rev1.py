import serial
import serial.tools.list_ports

class serial_connection:
    number_of_connections = 0
    def __init__(self, _port, _baudrate, _parity, _stopbits, _bytesize, _timeout):
        self.serial_connection = serial.Serial(
            port = _port,\
            baudrate = _baudrate,\
            parity = _parity,\
            stopbits = _stopbits,\
            bytesize = _bytesize,\
            timeout = _timeout\
        )
        self.alive = True
    def read(self):
        while True:
            for line in self.serial_connection.read():
                print(chr(line), end = '', flush = True)

def find_ports():
    ports_name = []
    ports = serial.tools.list_ports.comports()
    for i in ports:
        ports_name.append(i.device)
    print(ports_name)

def main():
    new_connection = serial_connection('COM5', 9600, serial.PARITY_NONE, serial.STOPBITS_ONE, serial.EIGHTBITS, 0)
    new_connection.read();

if __name__ == "__main__":
    main()
