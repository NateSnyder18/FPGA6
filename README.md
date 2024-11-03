# FPGA6
For the SR Latch, I used gate-level modeling to recreate the logic diagram in Verilog. For the Flip-Flop, all I added was a clock. As you can see with the waveform, both operate according to the truth table, with the Latch being asynchronous and the Flip Flop being synchronous.

For the DFF, I map the output q to the input d at the positive edge of each clock cycle. There is also an rstn variable that will override d and set q to 0 if rstn is 0. The difference between the asynchronous and synchronous DFFs is that the asynchronous will immediately put q to 0 if rstn goes to 0, regardless of the current clock status.

For the counter, I utilized a TFF module that toggles the output if the input is 1 at the positive edge of the clock cycle. By chaining three of these together, I can toggle the three digits of a three bit binary number. In the testbench I count from 0 to 7 several times by simply initializing the counter module and letting it run.

For the clock divider, I use a counter (although not one that uses TFFs) to count from 0 to 3. Each clock cycle it increments by one. Therefore, if I oscillate the clock only when the count is at 0, I can successfully divide the frequency by 4. In the testbench, I display both clocks on the waveform, and the output clock cycles once for every 4 input clock cycles.
