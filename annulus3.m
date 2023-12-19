function A = annulus3(N,D,d,a,b)
%Annulus 
A=zeros(N,N); v=255;
Ox=floor(N/2)+1; Oy=Ox; O=[Ox-a,Oy-b];
for x=1:N; for y=1:N; 
    P=[x,y];  
    if (norm(P-O)<=D/2)&&(norm(P-O)>=d/2);
        A(x,y)=v; 
    end;    
end;end;       
end

