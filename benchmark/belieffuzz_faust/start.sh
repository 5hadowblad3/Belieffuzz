./afl-fuzz -m none -p -r -d -c ./edge_potential.txt  -i fuzz_in -o fuzz_out_$(date +%m%d%H%M) -- ./fuzz_bin/faust-belieffuzz -lang ocpp -e -lcc -exp10 -lb -rb -mem -sd @@
