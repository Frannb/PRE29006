function jogadas = rand_pascal(k, p)

  jogadas = 0;
  sucessos = 0;

  while sucessos ~= k
    D = rand();
    jogadas++;
    if D <= p
      sucessos++;
    end
  end

end