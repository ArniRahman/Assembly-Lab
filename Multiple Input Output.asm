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
        MOV BH, AL
    
        INT 21H
        MOV CL, AL   
        
        INT 21H
        MOV CH, AL
        
        MOV AH,2       ;LINE FEED
        MOV DL, 0AH
        INT 21H 
        MOV DL, 0DH    ;CARRIAGE RETURN
        INT 21H
        
        
        MOV AH, 2
        MOV DL, BL
        INT 21H
        
        MOV DL, BH
        INT 21H   
        
        MOV DL, CL
        INT 21H
        
        MOV DL, CH
        INT 21H
        
        MOV AH,4CH  
        INT 21H   
        
    MAIN ENDP

    ;OTHER PROCEDURES (IF ANY)

END MAIN