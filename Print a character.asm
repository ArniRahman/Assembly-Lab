.MODEL SMALL
.STACK 100H
.DATA
    ;VARIABLES WILL  BE DECLARED HERE   

    
    
.CODE
    
    MAIN PROC
        
        ;OUTPUT 
        MOV AH, 2      ; 1 for single key input
                       ; 2 for single character output
                       ; 9 for string output
        MOV DL, '$'
        INT 21H 
        
        
        
        MOV AH,4CH  
        INT 21H   
        
    MAIN ENDP

    ;OTHER PROCEDURES (IF ANY)

END MAIN