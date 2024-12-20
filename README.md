# Assembly Segmentation Fault Bug

This repository demonstrates a common assembly language bug: a segmentation fault caused by accessing an invalid memory address. The bug arises from incorrect calculation of a memory address due to uninitialized or unexpectedly modified register values.

## Bug Description
The `mov eax, [ebx + ecx*4 + 0x10]` instruction calculates a memory address and attempts to read a value from it. If the calculated address falls outside the program's allocated memory space, a segmentation fault occurs.

## Solution
The solution involves carefully initializing and tracking the values of registers ebx and ecx to ensure that they always produce a valid memory address. Proper error handling and bounds checking can prevent this type of error.