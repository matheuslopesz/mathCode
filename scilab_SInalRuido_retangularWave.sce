close;
N =100;
b = rand(1,N,'n'); // criando vetor de número aleatórios 
b = sign(b); // transforma em -1 e 1
b = 0.5 * (b +1); // transformar em 0 e 1
p = ones(1,10); v = [];
var = 0.2; // determina o ruido
for k=1:N
    v = [v,p*b(k)],
end;
n = sqrt(var)*rand(v,'n' );
vn = (v+n);
figure;
subplot(2,2,1); plot (v*1.01 - 0.005);
subplot(2,2,2); plot (n);
subplot(2,1,2); plot (vn);