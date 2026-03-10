main:
  addi s0, zero, 123456        # t0 = 0 + 10000000
  addi s1, zero, 2        # t1 = 0 + 2
  add  s2, s1, s0         # t2 = t1 + t0 
  ret