
main:
  # Le um caracter do teclado e armazena em a0
  addi t0, zero, 5
  ecall

  # Salva o valor lido no registrador s0
  add s0, zero, a0
  ori s0, s0, 32


  # Imprima o valor de a0 na tela
  add a0, zero, s0
  addi t0, zero, 2
  ecall
  
ret