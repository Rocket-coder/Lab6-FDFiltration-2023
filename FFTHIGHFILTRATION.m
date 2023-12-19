%FFTHIGHFILTRATION2;
%------ Prepare image -------------------------
Name='Rock1024.png';
%Name='Taganrog.jpg';
B=imread(Name);
BW=RGB2BW2(B);               % transform to BW if RGB
[M,N]=size(BW);
if M>=N; A=BW(1:N,1:N); K=N; % to make the image square 
else     A=BW(1:M,1:M); K=M;
end;  
N=K;
ShowImageBW3(A,['Square BW-image ',Name]);pause
%-------- Parameters -------------------------
g=10.5;
b=1.5;
R2=50;
dg=0.8;
db=0.8;
%---------------------------------------------
G=HighGaussFilter(N,g);       %pause
B=HighButterworthFilter(N,b); %pause
C=1-annulus3(N,R2,0,0,0)/255;
TG='HF-Gaussin filter';
TC='HF-circular filter';
TB='HF-Butterworth filter';
TS=['Original ',int2str(N),'x',int2str(N)];
TGR=[TG,': s=',number2str(g,9,2)];
TBR=[TB,': s=',number2str(b,9,2)];
TCR=[TC,': r=',int2str(round(R2/2))];
Show3Images(G,B,C,TGR,TBR,TCR); pause
G=ifftshift(G); B=ifftshift(B); C=ifftshift(C);
%-------------------------------------------------
F=fft2(A); DC=F(1,1);
FC=F.*C;   %FC(1,1)=DC;
FB=F.*B;   %FB(1,1)=DC;
FG=F.*G;   %FG(1,1)=DC;
Show3Images(fftshift(log(1+abs(FG))),...
            fftshift(log(1+abs(FB))),...
            fftshift(log(1+abs(FC))),...
            TGR,TBR,TCR);           pause
AC=real(ifft2(FC));  ACN=normalize(AC);
AB=real(ifft2(FB));  ABN=normalize(AB);
AG=real(ifft2(FG));  AGN=normalize(AG);
%--------------------------------------------------------
Show3ImagesBW(ACN,AGN,ABN,TC,TG,TB); pause
ShowImageBW(ACN,TCR); pause
Show2ImagesBW(ABN,AGN,TBR,TGR); pause
%Show2ImagesBW(A,AGN,TS,TGR); pause
%Show2ImagesBW(A,ABN,TS,TBR); pause
ITGR=['Improved by ',TGR,'  d=',number2str(dg,9,2)];
Show2ImagesBW(A,normalize(double(A)+dg*AG),TS,ITGR); pause
ITBR=['Improved by ',TBR,'  d=',number2str(db,9,2)];
Show2ImagesBW(A,normalize(double(A)+db*AG),TS,ITBR); %pause
