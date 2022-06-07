CXX = gcc

all: originalServer myServer Client

originalServer: original_server.o
	$(CXX) original_server.o -o originalServer

myServer: OS3_Server.o
	$(CXX) OS3_Server.o -o myServer

Client: client.o
	$(CXX) client.o -o Client

original_server.o: original_server.c
	$(CXX) original_server.c -c

OS3_Server.o: OS3_Server.c
	$(CXX) OS3_Server.c -c

client.o: client.c
	$(CXX) client.c -c

clean:
	rm -f *.o myServer originalServer Client