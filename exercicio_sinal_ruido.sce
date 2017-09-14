N =1e5;
b = rand(1,N,'n'); // criando vetor de número aleatórios 
b = sign(b); // transforma em -1 e 1
b = 0.5 * (b +1); // transformar em 0 e 1
n = rand(1,N,'n'); // cria outro vetor aleatório
n = n - mean(n); // deixa a média de n = 0
n =sqrt(0.1) * n; 
bn = b + n; erro = 0; bd = 0*b;
for k=1:N
    if bn(k)>0.5 then bd (k) = 1; endw //decodifica o sinal
end
erros = sum(abs(b-bd)); // faz a diferença entre os erros e o sinal inicial
taxa = erros/N; // descobre a taxa de erros
disp(taxa);
