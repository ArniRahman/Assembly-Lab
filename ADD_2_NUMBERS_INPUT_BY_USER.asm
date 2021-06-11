.MODEL SMALL
.STACK 100H
.DATA
    ;VARIABLES WILL  BE DECLARED HERE
.CODE
    
    MAIN PROC
        
        MOV AH, 1      ;INPUT
        INT 21H
        MOV BL, AL     ;SAVE INPUT IN BL 
        INT 21H
        MOV CL, AL
        
        
        ADD BL,CL      ;BL = BL+CL
        SUB BL,48      ;CONVERT ASCII TO DECIMAL
        
       
        
        
        MOV AH, 2
        MOV DL, BL
        INT 21H 
        
        
        
        MOV AH,4CH  
        INT 21H   
        
    MAIN ENDP

    ;OTHER PROCEDURES (IF ANY)

END MAIN