function ShowImage2(A,T);
%show IMAGE in pseudocolours with colorbar and data
% 
A=double(A);        sn=256;
sf='\fontsize{24}\color{red}\it';
fs='\fontsize{18}\color{blue}\bf'; 
sl=min(min(A)); sh=max(max(A));  
T1=['max=',num2str(sh,'%8.3f'),...
    blanks(10),'min=',num2str(sl,'%8.3f')];
IS=grayslice(mat2gray(A,[sl,sh]),sn);
subplot(1,1,1) 
subimage(IS,jet(sn)), title({[sf,T];[fs,T1]}),...
setcolourbar(sl,sh);
end 

