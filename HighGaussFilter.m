function D=HighGaussFilter(N,s);
%
D=zeros(N,N);
Ox=floor(N/2)+1; Oy=Ox;
d=s*sqrt(2)/N;
for x=1:N; 
for y=1:N; 
   D(x,y)=1-exp(-(d^2)*((x-Ox)^2+(y-Oy)^2)); 
end;
end; 
%ShowImage(D,'D');
