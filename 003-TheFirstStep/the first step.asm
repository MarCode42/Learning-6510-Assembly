;*** variables
SCREEN  = $0400         ;start of screen memory
CHAR    = $41           ;spade character for output

;*** start address, BASIC line
*=$0801
        !byte $0c,$08,$e2,$07,$9e,$20,$32,$30,$36,$32,$00,$00,$00

;*** start of assembly program
        lda #CHAR       ;load character into A
        ldx #$ff        ;loop counter

loop
        sta SCREEN-1,x  ;output A to screen
        dex           
        bne loop
        rts