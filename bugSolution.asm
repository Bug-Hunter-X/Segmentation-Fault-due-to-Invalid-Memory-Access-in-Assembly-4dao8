mov ebx, valid_base_address
mov ecx, valid_index
mov eax, [ebx + ecx*4 + 0x10] ;Now access is valid

;Ensure valid_base_address and valid_index are properly initialized and within bounds
;Add checks to handle cases where index is out of bounds or address is invalid