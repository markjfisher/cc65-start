    .export   _main

    .import   _cgetc
    .import   _cputs

_main:

    ; write a string to the screen
    lda   #<hello_msg
    ldx   #>hello_msg
    jsr   _cputs

    jsr   _cgetc
    rts

.data
hello_msg:    .byte "Hello, World!", 0