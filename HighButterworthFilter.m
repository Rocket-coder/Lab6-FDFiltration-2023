function D=HighButterworthFilter(N,s);
%
D=zeros(N,N);
Ox=floor(N/2)+1; Oy=Ox;
for x=1:N; 
for y=1:N; 
    d=norm([x-Ox,y-Oy])/N;  
    D(x,y)=1/(1+d)^(2*s);    
end;
end;
D=1-D;
%ShowImage(D,'D');
