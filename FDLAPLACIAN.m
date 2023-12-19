%FDLAPLACIAN;
%Imprivement of an image by the Laplacian in frequency domain
%
%------ Prepare image -------------------------
Name='Rock1024.png';
%Name='elaine512.tiff';
B=imread(Name);
BW=RGB2BW2(B);               % transform to BW if RGB
[M,N]=size(BW);
if M>=N; A=BW(1:N,1:N); K=N; % to make the image square 
else     A=BW(1:M,1:M); K=M;
end;  
N=K; 
ShowImageBW3(A,['Square BW-image ',Name]);pause
A=255*normalize2(double(A));
%-------- Parameters -------------------------
%k=4;
%k=25;
k=4*(pi^2);
%d=0.1;
d=1;
%---------------------------------------------
F=fft2(A); DC=F(1,1);
L=zeros(N);
M=floor(N/2); O=M+1;
for u=-M:M-1;
    for v=-M:M-1;
        L(u+O,v+O)=-u^2-v^2;
    end;
end;
L=k*L/(N^2);
ShowImage2(-L,['\nabla^2 for k=',number2str(k,9,2)]); pause
L=fftshift(L);
LF=L.*F;
LF(1,1)=F(1,1);
LA=real(ifft2(LF));
ALA=A-d*LA;
%----------------------------------------------
ShowImage2(LA,['\nabla^2(A) for k=',number2str(k,9,2)]); pause
Show2ImagesBW2(uint8(A),normalize(ALA),Name,...
['Corrected by Laplacian with k=',number2str(k,9,2),...
                       ' and d=',number2str(d,9,2)]);
 