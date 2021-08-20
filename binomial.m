% K ∼ Binom(10, 1/10)
n = 10;
p = 1/10;
K = zeros(1, (n+1));

for ii = 0:n
  c_binom = factorial(n)/(factorial(ii)*factorial(n - ii));
  K(ii+1) = c_binom*(p^ii)*((1-p)^(n-ii));
end

figure 1, hold on, grid on
bar(K, 'y');                                %Função massa teórica
media_teor = sum(K);                        %Média teórica
varia_teor = n*p*(1-p);                     %Variância teórica
title("K ∼ Binom(10, 1/10)");
xlabel("K");
ylabel("P(k)");

N = 10000;
K = zeros(1, N);
for ii = 1:N
  K(ii) = rand_binom(n, p);                 %Função massa prática
end


media_prat = sum(K)/N;                      %Média prática  
varia_prat = sum((K - media_prat).^2)/N;    %Variância prática
x = 0:n;
K = hist(K, x)/N;                           
stem(K, 'r');

printf("\n  K ∼ Binom(10, 1/10 )\n");
printf("  Média teórica: %d\n", media_teor);
printf("  Média prática: %d\n", media_prat);
printf("  Variância teórica: %d\n", varia_teor);
printf("  Variância prática: %d\n", varia_prat);

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

% K ∼ Binom(50, 1/4)
n = 50;
p = 1/4;
K = zeros(1, (n+1));

for ii = 0:n
  c_binom = factorial(n)/(factorial(ii)*factorial(n - ii));
  K(ii+1) = c_binom*(p^ii)*((1-p)^(n-ii));
end

figure 2, hold on, grid on
bar(K, 'y');                                %Função massa teórica
media_teor = n*p;                           %Média teórica
varia_teor = n*p*(1-p);                     %Variância teórica
title("K ∼ Binom(50, 1/4)");
xlabel("K");
ylabel("P(k)");

N = 10000;
K = zeros(1, N);
for ii = 1:N
  K(ii) = rand_binom(n, p);                 %Função massa prática
end


media_prat = sum(K)/N;                      %Média prática  
varia_prat = sum((K - media_prat).^2)/N;    %Variância prática
x = 0:n;
K = hist(K, x)/N;                           
stem(K, 'r');

printf("\n  K ∼ Binom(50, 1/4 )\n");
printf("  Média teórica: %d\n", media_teor);
printf("  Média prática: %d\n", media_prat);
printf("  Variância teórica: %d\n", varia_teor);
printf("  Variância prática: %d\n", varia_prat);
  