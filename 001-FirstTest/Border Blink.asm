!to "test.prg",cbm   ;Filename of the created C64-program
*=$0801              ;Startaddress
!BASIC               ;C64-Studio only: simplified BASIC-Start
 
main                 ;Label for loop
    inc $D020        ;increase border color by one
    jmp main         ;jump to label main