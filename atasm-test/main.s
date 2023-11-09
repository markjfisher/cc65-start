        *= $0340
IOCB
ICHID   *= *+1    ; device handler
ICDNO   *= *+1    ; Device Number
ICCOM   *= *+1    ; I/O command
ICSTA   *= *+1    ; I/O status
ICBADR  *= *+2    ; Buffer Address
ICPUT   *= *+2    ; DH Put Routine (ADR-1)
ICBLEN  *= *+2    ; Buffer Len
ICAUX1  *= *+1    ; Aux bytes
ICAUX2  *= *+1
ICAUX3  *= *+1
ICAUX4  *= *+1
ICAUX5  *= *+1
ICAUX6  *= *+1

IOCBLEN = *-IOCB

COPN    =   3     ;OPEN
CGBINR  =   7     ;GET BINARY RECORD
CGTXTR  =   5     ;GET TEXT RECORD
CPBINR  =   11    ;PUT BINARY RECORD
CPTXTR  =   9     ;PUT TEXT RECORD
CCLOSE  =   12    ;CLOSE 
CSTAT   =   13    ;GET STATUS

; Aux 1 values for OPEN
OPIN    =   4     ;OPEN INPUT
OPOUT   =   8     ;OPEN OUTPUT
OPUPD   =   12    ;OPEN UPDATE
OPAPND  =   9     ;OPEN APPEND
OPDIR   =   6     ;OPEN DIRECTORY

; Misc
CIO     =   $E456 ;CIO ENTRY ADR
EOL     =   $9B   ; END OF LINE CHAR


    * = $600

main
      cld
      ldx   #0

      ; Open Append mode
      lda   #OPAPND
      sta   ICCOM

      ; buffer address
      lda   #<hello_msg
      sta   ICBADR
      lda   #>hello_msg
      sta   ICBADR+1

      ; message length
      lda   #$ff
      sta   ICBLEN
      lda   #$00
      sta   ICBLEN+1

      ; do it!
      jsr   CIO
      rts

hello_msg
      .byte "Hello, World!", EOL
