# Implementation-and-Optimization-of-AES-on-FPGA

As a part of my minor project, I implemented the Advanced Encryption Standard (AES) on a Xilinx Artix-7 xc7a200tfbg676-2 FPGA. 
Vivado High Level Synthesis (HLS) tool converted the C code to RTL design. Various optimization techniques were used like:

- Unrolling Loops
- Pipelining
- Reducing loop iterations


## Results

After various levels of optimization, we got a high frequency (244 MHz) and throughput (30.48 Gpbs). The optimized implementation
also consumes lower BRAMs and area.

![Result-Table](https://i.ibb.co/mHyyfRT/AES-Result.png)

- [14] G. P. Saggese, A. Mazzeo, N. Mazzocca, and A. G. Strollo, “An fpga-based performance analysis of the
unrolling, tiling, and pipelining of the aes algorithm,” in International Conference on Field Programmable
Logic and Applications, pp. 292–302, Springer, 2003.
- [16] A. Hodjat and I. Verbauwhede, “A 21.54 gbits/s fully pipelined aes processor on fpga,” in 12th Annual IEEE
Symposiumon Field-Programmable Custom ComputingMachines, pp. 308–309, IEEE, 2004.
- [24] S. Thangarajan and V. K. Bhaaskaran, “High speed and low power implementation of aes for wireless sensor
networks,” Procedia computer science, vol. 143, pp. 736–743, 2018.
- [25] D. Smekal, J. Hajny, and Z.Martinasek, “Comparative analysis of different implementations of encryption
algorithms on fpga network cards,” IFAC-PapersOnLine, vol. 51, no. 6, pp. 312–317, 2018.

## Report

[Report](https://drive.google.com/file/d/1yZDXCIJg57YZvKzyUOGTiTkIG3qslpMF/view?usp=sharing)
