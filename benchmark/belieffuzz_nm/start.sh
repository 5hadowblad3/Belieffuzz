./afl-fuzz -m none -p -r -d -c ./edge_potential.txt  -i fuzz_in -o fuzz_out_$(date +%m%d%H%M) -- ./fuzz_bin/nm-new-belieffuzz -C -a -l --synthetic @@
