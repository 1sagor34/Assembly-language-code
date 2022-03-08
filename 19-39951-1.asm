
MOV CX ,5; feild level
SAGOR DW 52d; word variable initialized to 52 decimal
SaAGOR DW 1001b; word variable initialized to 1001 binary
SAggOR DW 12h; word variable initialized to 12 hexadecimal
SgOR DB 12h; byte variable initialized to 12 hex, range of DB - 8byte
SAGOR_ARRAY DB 25h,30d,54h;  array created 
SGOR_ARRAY DW 292,332;   array with DW, range of DW = 16byte
SAGOR_Letter DB 'alpha', 'beta'; character string 
SAGOR_MSG DB 'dredd', 0Ah, 0Dh, '$'; combination string
MSG EQU 'I am SAGOR' ;   no memory allocated for EQU
mov bx, 1234h 
mov cx, 5678h 
add bx, cx