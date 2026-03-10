main:
  # Le um numero do teclado e armazena em a0
  addi t0, zero, 4
  ecall

  # Salva o valor lido no registrador s0
  addi s0, zero, 0
  add s0, zero, a0
  

  addi t1, zero, 31
  for:
    beq t1, zero, done
    # Verifica se o ultimo bit e 1
    addi s1, zero, 0
    addi s1, zero, 1
    and s2, s0, s1

    # Imprime o ultimo bit
    add a0, zero, s2
    addi t0, zero, 1
    ecall

    # Desloca um BIT
    srl s0, s0, s1

    # Itera
    sub t1, t1, s1
  j for
  done:

  ret