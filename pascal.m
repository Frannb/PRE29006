clc;
close all;

k = 2;
p = 1/2;

N = 10000;
pmf_prat = zeros(1, N);

%Pmf prática
for n = 1:N
  pmf_prat(n) = rand_pascal(k, p);
end
media_prat = sum(pmf_prat)/N
varia_prat = sum((pmf_prat-media_prat).^2)/N

%Pmf teórica
pmf_teor = zeros(1, 14);
for n = 2:15
  c_binom = factorial(n-1)./(factorial(k-1).*factorial((n-1)-(k-1)));
  pmf_teor(n) = c_binom.*(p^k).*((1-p).^(n-k));
end
media_teor = k/p
varia_teor = k*((1-p)/p^2)

%plots
figure 1, hold on, grid on
n = k:15;
pmf_prat = hist(pmf_prat, n)/N;
bar(n, pmf_prat, 'y');
stem(pmf_teor);