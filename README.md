# 1. Introduction

BeliefFuzz is a bounded seed scheduling fuzzer based on [AFL](https://github.com/google/AFL). This directory provides the prototype of compiler and fuzzer for artifacts evaluation in the paper "Balance Seed Scheduling via Monte Carlo Planning"[[TDSC_23](https://ieeexplore.ieee.org/abstract/document/10149344)]. 


# 2. Compile

Binary recompilation is required as BeliefFuzz implements a precondition analysis and an instrumentation component based on LLVM for scheduling. You could find the BeliefFuzz compiler in the folder `belieffuzz_bin`.
During the compilation, BeliefFuzz will collect the edge information into a specified file with the FLAG `-res=$EDGE_POTENTIAL_PATH`.

A nearly-universal approach to compile the target C program would be:

```shell
$ export BELIEFFUZZ_CFLAGS="-res=$EDGE_POTENTIAL_PATH"
$ CFLAGS="$BELIEFFUZZ_CFLAGS" CC=$BELIEFFUZZ_PATH/afl-clang-fast ./configure
```

# 3. Run

You could run BeliefFuzz in each project under the folder `benchmark` by the script `./start.sh`, which contains the following command:

`./afl-fuzz -r -p -c $EDGE_POTENTIAL_PATH/edge_potential.txt -i fuzz_in -o fuzz_out -- $PROG_PATH [...]`

Here is the extra command line option for our scheduling method:

```
-r            - use MCTS model for seed selection
-p            - use Regret-based power scheduling
-c file       - load the edge weight file
```

# 4. Experimental Results

You can download the results of our experiments from [Google Drive](https://drive.google.com/file/d/1nrXFYt1j9m2WLkMMOkS_eiPrTkqem7O7/view?usp=share_link).

# 5. Publication

You can find more details in our TDSC_23 paper.

```
@ARTICLE{10149344,
  author={Huang, Heqing and Chiu, Hung-Chun and Shi, Qingkai and Yao, Peisen and Zhang, Charles},
  journal={IEEE Transactions on Dependable and Secure Computing}, 
  title={Balance Seed Scheduling via Monte Carlo Planning}, 
  year={2023},
  volume={},
  number={},
  pages={1-15},
  doi={10.1109/TDSC.2023.3285293}}
```

# 6. License

BeliefFuzz is under [Apache License](https://github.com/5hadowblad3/Belieffuzz/blob/main/LICENSE).