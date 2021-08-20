function K = rand_binom(n, p)
  %% Entradas:
  D = rand(1, n);
  
  X = (D <= p);

  %% Saída:
  K = sum(X);
  
end
