%FFTLOWFILTRATION;
%------ Prepare image -------------------------
% Name='elaine512.tiff';
Name='Rock1024.png';
B=imread(Name);
BW=RGB2BW2(B);               % transform to BW if RGB
[M,N]=size(BW);
if M>=N; A=BW(1:N,1:N); K=N; % to make the image square 
else     A=BW(1:M,1:M); K=M;
end;  
N=K;
ShowImageBW3(A,['Square BW-image ',Name]);pause
%-------- Parameters -------------------------
g=3.5;
b=1.5;
R2=150;
%---------------------------------------------
G=LowGaussFilter(N,g);       %pause
B=LowButterworthFilter(N,b); %pause
C=annulus3(N,R2,0,0,0)/255;
TG='LF-Gaussin filter';
TC='LF-circular filter';
TB='LF-Butterworth filter';
TS=['Original ',int2str(N),'x',int2str(N)];
TGR=[TG,': s=',number2str(g,9,2)];
TBR=[TB,': s=',number2str(b,9,2)];
TCR=[TC,': r=',int2str(round(R2/2))];
Show3Images(G,B,C,TGR,TBR,TCR); pause
G=ifftshift(G); B=ifftshift(B); C=ifftshift(C);
%-------------------------------------------------
F=fft2(A);  
FC=F.*C;    FB=F.*B;   FG=F.*G;    
Show3Images(fftshift(log(1+abs(FG))),...
            fftshift(log(1+abs(FB))),...
            fftshift(log(1+abs(FC))),...
            TGR,TBR,TCR);           pause
AC=normalize(real(ifft2(FC)));  
AB=normalize(real(ifft2(FB)));
AG=normalize(real(ifft2(FG)));  
%--------------------------------------------------------
Show3ImagesBW(AC,AG,AB,TC,TG,TB); pause
ShowImageBW(AC,TCR); pause
Show2ImagesBW(AB,AG,TBR,TGR); pause
Show2ImagesBW(A,AG,TS,TGR); pause
Show2ImagesBW(A,AB,TS,TBR); %pause

