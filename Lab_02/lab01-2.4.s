main:

  # Coloca 10 no registrador s10
  addi s10, zero, 10

    # le um numero do teclado
  addi t0, zero, 4
  ecall   
 
  # salva o numero do a0 no s1
  add s1, zero, a0

  # subtrai 10 do numero lido 
  addi a0, a0, -10 

  # condicional de resultado positivo
  bge a0, zero, imprimepositivo

  # condicional de resultado negativo
  blt a0, zero, inverte
  
  inverte:
    sub s2, s10, s1

  # imprime o resultado
  imprimenegativo:
    addi t0, zero, 2
    addi a0, zero, 45
    ecall
    add a0, s2, zero
    addi t0, zero, 1
    ecall
    j fim

  imprimepositivo:
    addi t0, zero, 1
    ecall

  fim:
  ret