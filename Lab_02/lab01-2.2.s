main:
  addi s11, zero, 10
  bge s1, s11, fim
  # Imprime e incrementa o contador do programa
  add a0, zero, s1
  addi t0, zero, 1
  ecall
  addi s1, s1, 1


  # Va novamente para o main e recomece a execucao
  bne s1, zero, main
  fim:
    ret