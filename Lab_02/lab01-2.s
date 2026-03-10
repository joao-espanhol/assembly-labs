
main:
  # Le um numero do teclado e armazena em a0
  addi t0, zero, 4
  ecall

  # Salva o valor lido no registrado s1
  addi s0, zero, 0
  add s0, zero, a0

  # Sai do programa se o valor lido for 0
  # beq s0, zero, fim

  # Soma 2 ao valor de a0
  addi a0, a0, 2

  # Imprima o valor de a0 na tela se o valor lido != de 0
  beq s0, zero, naoimprime
  addi t0, zero, 1
  ecall
  
  naoimprime:

  # Va novamente para o main e recomece a execucao
  bne s0, zero, main
  fim:
    ret