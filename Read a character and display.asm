.MODEL SMALL
.STACK 100H
.DATA
    ;VARIABLES WILL  BE DECLARED HERE
.CODE
    
    MAIN PROC
        
        MOV AH, 1      ;INPUT
        INT 21H
        MOV BL, AL
        
        ;PRINT A NEW LINE HERE
        
        MOV AH, 2
        MOV DL, BL     ;OUTPUT
        INT 21H 
        
        
        
        MOV AH,4CH  
        INT 21H   
        
    MAIN ENDP

    ;OTHER PROCEDURES (IF ANY)

END MAIN