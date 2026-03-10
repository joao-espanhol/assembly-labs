main:
  # Le um numero do teclado e armazena em a0
  addi t0, zero, 4
  ecall

  # Salva o valor lido no registrador s1
  addi s0, zero, 0
  add s0, zero, a0

  # Testa se o valor e par ou impar
  addi s1, zero, 0
  addi s1, zero, 1

  and s2, s0, s1

  # Se 0, par, se 1, impar
  addi t0, zero, 2
  beq s2, s1, else

  addi a0, zero, 80
  ecall
  j done

  else:
    addi a0, zero, 73
    ecall

  done:

  ret