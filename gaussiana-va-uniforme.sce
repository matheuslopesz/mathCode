close;
clear;
N =10000;
valores = 100;
for i=1:valores
    valor = rand(1,N,'uniform'); // criando vetor de número aleatórios 
    X(i,:) = valor;
    Y(i,:) = (X(i,:) - mean(X(i,:)))/ variance(X(i,:))     
end
Vn = zeros(N)
for i=1:valores
    Vn = Vn + Y(i,:)
end
    Vn = (Vn./sqrt(N))
    histplot(20,Vn) 
    disp(variance(Vn))
