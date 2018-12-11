build:
	g++ -c -fPIC code.cpp
	swig -c++ -python code.i
	g++ -c -fPIC code_wrap.cxx  -I/usr/include/python2.7 -I/usr/lib/python2.7
	g++ -shared -Wl,-soname,_code.so -o _code.so code.o code_wrap.o

run: build
	python cli_avg.py

clean: code_wrap.cxx _code.so code.o code_wrap.o code.py code.pyc
	rm code_wrap.cxx _code.so code.o code_wrap.o code.py code.pyc