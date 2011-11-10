CLIENT=http://www.rabbitmq.com/releases/rabbitmq-java-client/v2.5.1/rabbitmq-java-client-bin-2.5.1.tar.gz
LIB=./lib

all: get-lib build

get-lib:
	bin/get-lib.sh $(CLIENT)

build:
	ant

clean:
	rm -f $(LIB)/*.jar
	ant clean
