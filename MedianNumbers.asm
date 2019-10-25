.data

        # TODO: Complete these declarations / initializations

        nextNum: .asciiz "Enter the next number:\n"

        median: .asciiz "Median: "


#Text Area (i.e. instructions)
.text

main:

        # TODO: Write your code here

        li $v0, 4
        la $a0, nextNum
        syscall

        li $v0, 5
        syscall
        move $t0, $v0 #a

        li $v0, 4
        la $a0, nextNum
        syscall

        li $v0, 5
        syscall
        move $t1, $v0 #b

        li $v0, 4
        la $a0, nextNum
        syscall

        li $v0, 5
        syscall
        move $t2, $v0 #c
        #end of asking

aLessThanB:
        blt $t0, $t1, bLessThanC1
        j aLessThanC2

bLessThanC1:
        blt $t1, $t2, printB
        j aLessThanC1

aLessThanC1:
        blt $t0, $t2, printC
        j printA

aLessThanC2:
        blt $t0, $t2, printA
        j bLessThanC2

bLessThanC2:
        blt $t1, $t2, printC
        j printB


printA:
        li $v0, 1
        move $a0, $t0
        syscall
        j exit

printB:
        li $v0, 1
        move $a0, $t1
        syscall
        j exit

printC:
        li $v0, 1
        move $a0, $t2
        syscall


exit:
        # Exit
        li $v0, 10
        syscall
