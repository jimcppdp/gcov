all: cov run
	@echo Coverage ...
	gcov cov.cpp
	@echo Done
	cat cov.cpp.gcov

cov: cov.cpp
	@echo Compiling ...
	g++ -o $@ -Wall -fprofile-arcs -ftest-coverage $^
	@echo Done

ccov: cov.c
	@echo Compiling c version ...
	gcc -o cov -Wall -fprofile-arcs -ftest-coverage $^
	@echo Done

c: ccov run coverage

run: 
	@echo Run ...
	cov
	@echo Done

coverage: 
	@echo Coverage c version...
	gcov cov.c
	@echo Done
	cat cov.c.gcov

clean:
	@echo Clean ...
	rm *.gcno
	rm *.gcda
	rm *.gcov
	rm cov.exe
	@echo Done
