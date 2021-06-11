.MODEL SMALL
.STACK 100H
.DATA
    ;VARIABLES WILL  BE DECLARED HERE 
    
    MSG1  DB  'HELLO WORLD!$'
    MSG2  DB  'FROM CSE 2214$'
    
.CODE
    
    MAIN PROC  
        
        MOV AX, @DATA    ;INITIALIZE DATA SEGMENT
        MOV DS, AX
        
        LEA DX, MSG1     ;LOAD THE STRING TO DX FOR PRINT
        MOV AH,9
        INT 21H
        
        
        MOV AH,2         ;NEWLINE
        MOV DL, 0DH
        INT 21H
        MOV DL, 0AH
        INT 21H
        
        
        LEA DX,MSG2      ;LOAD ANOTHER FOR PRINT
        MOV AH,9
        INT 21H
       
        
        
        
        MOV AH,4CH       ;RETURN 
        INT 21H   
        
    MAIN ENDP

    ;OTHER PROCEDURES (IF ANY)

END MAIN