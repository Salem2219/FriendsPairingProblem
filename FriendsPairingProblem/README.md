# Friends Pairing Problem

Given n(up to 14) friends, each one can remain single or can be paired up with some other friend. Each friend can be paired only once. Find out the total number of ways in which friends can remain single or can be paired up.

Examples :

Input  : n = 3
Output : 4

Explanation
{1}, {2}, {3} : all single
{1}, {2, 3} : 2 and 3 paired but 1 is single.
{1, 2}, {3} : 1 and 2 are paired but 3 is single.
{1, 3}, {2} : 1 and 3 are paired but 2 is single.
Note that {1, 2} and {2, 1} are considered same.

# FSMD
Basic Finite State Machine with Datapath (FSMD) example to calculate the total number of ways in which friends can remain single or can be paired up.

## Install

These examples use [ModelSim&reg; and Quartus&reg; Prime from Intel FPGA](http://fpgasoftware.intel.com/?edition=lite), [GIT](https://git-scm.com/download/win), [Visual Studio Code](https://code.visualstudio.com/download), make sure they are installed locally on your computer before proceeding.

## Usage

1. Grab a copy of this repository to your computer's local folder (i.e. C:\projects):

    ```sh
    $ cd projects
    $ git clone https://github.com/Salem22/FriendsPairingProblem.git
    ```
2. Use Visual Studio Code (VSC) to edit and view the design files:

    ```sh
    $ cd FriendsPairingProblem
    $ code .
    ```
    Click on the toplevel.vhd file in the left pane to view its contents.
    
3. From the VSC View menu, choose Terminal, in the VCS Terminal, create a "work" library:

    ```sh
    $ vlib work
    ```
    
4. Compile all the design units:

    ```sh
    $ vcom *.vhd
    ```
    
5. Simulate your design. For example, if n = 4 then y = 10:

    ```sh
    $ vsim work.tb
    ```
