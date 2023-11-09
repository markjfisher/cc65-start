    .export   _main

    .import   _cgetc
    .import   _cputs
    ; in a pure asm application (or where main is in asm, not sure...)
    ; this is required for the APPLE2 target, doesn't harm the atari
    .forceimport    __STARTUP__

_main:
    ; write a string to the screen
    lda   #<hello_msg
    ldx   #>hello_msg
    jsr   _cputs

    jsr   _cgetc
    rts

.data
hello_msg:    .byte "Hello, World!", 0