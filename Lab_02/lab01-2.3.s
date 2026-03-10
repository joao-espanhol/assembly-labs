
main:

  #################################
  # Le dois numeros do teclado
  addi t0, zero, 4
  ecall

  # Salva o valor lido no registrador s1
  add s1, zero, a0

  addi t0, zero, 4
  ecall

  # Salva o valor lido no registrado s2
  add s2, zero, a0
  #################################

  #################################
  # Sai do programa se algum valor lido for 0
  beq s1, zero, fim
  beq s2, zero, fim
  #################################

  bge s2, s1, imprimevalor2

  #################################
  # Labels de impressao de valores
  imprimevalor1:
  add a0, zero, s1
  addi t0, zero, 1
  ecall
  j posimpressao

  imprimevalor2:
  add a0, zero, s2
  addi t0, zero, 1
  ecall
  j posimpressao

  posimpressao:

  # Va novamente para o main e recomece a execucao
  j main
  fim:
    ret