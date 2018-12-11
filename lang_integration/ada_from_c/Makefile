build:
	gcc -c main.c
	gnatmake -c unit1.adb
	gnatmake -c unit2.adb
	gnatbind -n unit1.ali unit2.ali
	gnatlink unit2.ali main.o -o main

clean: unit1.ali main.o unit2.o unit2.ali unit1.o
	rm *.o
	rm *.ali
	rm main

run: build
	./main