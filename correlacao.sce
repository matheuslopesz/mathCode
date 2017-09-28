close;
N =100;
b = rand(1,N,'n'); // criando vetor de número aleatórios 
b = sign(b); // transforma em -1 e 1
b = 0.5 * (b +1); // transformar em 0 e 1
disp(b)

r = xcorr(b)
disp(r)

