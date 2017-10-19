
close;
clear;
 //1. Amostragem
 
 
 // Frequencia de amostragem: 
 Fa=1000;
 // Periodo de amostragem:
 T=1/Fa; // 1ms
 f=1; // Hz
 m=50;
 // Frequencia discreta:
 w=2*%pi*f;
 omega=w*T;
 for i=1:m
     x(i)=sin(i/50);
 end
 
 T=10;
  ppm(1:m)=0;
 for i=1:m // onda dente de serra
     dente(i)=modulo(i,T); // eh o resto
 end
 dente=dente./10;
 larguraPulso=4;
 temp=0;
 i=1;
 while i<m // verifica quando o dente de serra passa o senoide
     if dente(i)>x(i)
         ppm(i:i+larguraPulso-1)=1;    
         i=i+T;
     else
         i=i+1;    
     end
 end

  subplot(2,3,1)  
    title('x(t)'); 
  plot(x); 
  subplot(2,3,2)   
  plot(dente);
  subplot(2,3,3) 
  title('ppm');  
  plot(ppm*1.02-0.01); 
