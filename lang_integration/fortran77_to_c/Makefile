clean: GCD.c gcd
	rm GCD.c gcd

build:
	f2c GCD.f
	fort77 GCD.f -o gcd

run:
	./gcd
