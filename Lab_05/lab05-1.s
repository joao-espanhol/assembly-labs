.data
vetor: 
    .word 10, 20, 30
.text
main:
    la s0, vetor
    lw t0, 0(s0)
    addi t1, zero, 4
    addi t2, zero, 3
    addi t3, zero, 0

    loop:
        add t3, t3, t0
        addi s0, s0, 4
        lw t0, 0(s0)
        addi t2, t2, -1
        bne t2, zero, loop

    addi a0, zero, 1  # Seletor da ecall (1) para imprimir um número 
    add a1, zero, t3  # Parâmetro da ecall (a1) com o número a ser impresso
    ecall
    addi a0, zero, 10
    ecall   # Encerra a execução do programa