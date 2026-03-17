main:
  # Le um caracter do teclado e armazena em a0
  addi t0, zero, 5
  ecall

  # Salva o valor lido no registrador s0
  add s0, zero, a0

  # Menor caractere letra no s1
  addi s1, zero, 65
  # Maior caractere letra no s2
  addi s2, zero, 123


  # Verifica se o caractere nao e uma letra
  blt s0, s1, impressao
  bge s0, s2, impressao

  # Maior letra maiuscula no s1
  addi s1, zero, 91
  # Menor letra minuscula no s2
  addi s2, zero, 97

  # Modifica o caractere se for letra maiuscula
  blt s0, s1, transforma_para_minuscula

  # Modifica o caractere ser for letra minuscula
  bge s0, s2, transforma_para_maiuscula

  # Se nao for letra (intervalo entre letras)
  j impressao
  
  # Troca de caractere maiusculo - minusculo
  transforma_para_maiuscula:
    andi s0, s0, 223
    j impressao

  transforma_para_minuscula:
    ori s0, s0, 32
    j impressao

  # Imprima o valor de a0 na tela
  impressao:
    add a0, zero, s0
    addi t0, zero, 2
    ecall


  
ret