function D=LowGaussFilter(N,s);
%
D=zeros(N,N);
%e=0.0001;
Ox=floor(N/2)+1; Oy=Ox;
%s=3.7; 
d=s*sqrt(2)/N;
for x=1:N; 
for y=1:N; 
   D(x,y)=exp(-(d^2)*((x-Ox)^2+(y-Oy)^2)); 
end;
end; 
% R=N/2;
% for r=0:Ox-1;
%     if D(Ox-r,Ox)<e; R=r; break; end;
% end
% D=D.*annulus2(N,R,0,0,0)/255;
%ShowImage(D,'D');
