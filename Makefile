CFLAGS= -Wall -Ofast -pthread  -I.  
LDLIBS= -lm -pthread 

acarsserv:	acarsserv.o dbmgn.o cJSON.o
	$(CC) -Ofast acarsserv.o dbmgn.o cJSON.o -o $@ -lsqlite3

cJSON.o:	cJSON.c cJSON.h
acarsserv.o:	acarsserv.c acarsserv.h
dbmgm.o:	dbmgm.c acarsserv.h

clean:
	@\rm -f *.o acarsserv
