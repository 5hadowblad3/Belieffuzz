./afl-fuzz -m none -p -r -d -c ./edge_potential.txt  -i fuzz_in -o fuzz_out_$(date +%m%d%H%M) -- ./fuzz_bin/fig2dev-belieffuzz -L pdf -G .25:1cm -j -m 2 -N -P -x 3 -y 4 @@
