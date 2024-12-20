mov eax, [ebx + ecx*4 + 0x10]

This instruction attempts to access memory at an address calculated as ebx + ecx*4 + 0x10.  If the value of ebx + ecx*4 + 0x10 is outside the valid memory range accessible to the process, a segmentation fault will occur. This is a common error, but the subtle way it arises is in improperly handling the values of ebx and ecx which may have uninitialized values or values modified unexpectedly by another part of the code.