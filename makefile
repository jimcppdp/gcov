all: cov run
	@echo Coverage ...
	gcov cov.c
	@echo Done
	cat cov.c.gcov

cov: cov.c
	@echo Compiling ...
	gcc -o $@ -Wall -fprofile-arcs -ftest-coverage $^
	@echo Done

run: 
	@echo Run ...
	cov
	@echo Done

clean:
	@echo Clean ...
	rm *.gcno
	rm *.gcda
	rm *.gcov
	rm cov.exe
	@echo Done
