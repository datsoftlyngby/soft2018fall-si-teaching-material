build:
	nim compile cli_avg.nim

run: build
	python call_bin.py

run-nim: build
	./cli_avg '{"matrix": [[1,2,3], [3,4,5,5]]}'

clean:
	rm -r nimcache
	rm ./cli_avg
