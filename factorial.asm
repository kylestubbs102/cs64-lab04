.data

        # TODO: Write your initializations here
         enterNumber: .asciiz "Enter the number:\n"
         factorial: .asciiz "Factorial is:\n"
         newLine: .asciiz "\n"

#Text Area (i.e. instructions)
.text
main:

        # TODO: Write your code here

        li $v0, 4
        la $a0, enterNumber
        syscall

        li $v0, 5
        syscall
        move $t0, $v0 #n

        li $t1, 1 #fn
        li $t2, 2 #x

        j loop

loop:
        ble $t2, $t0, printFactorial

        mult $t2, $t1
        mflo $t1

        addiu $t2, $t2, 1

        j loop


printFactorial:
        li $v0, 4
        la $a0, factorial
        syscall

        li $v0, 1
        move $a0, $t1
        syscall

        li $v0, 4
        la $a0, newLine
        syscall

        j exit

exit:
        # Exit
        li $v0, 10
        syscall
