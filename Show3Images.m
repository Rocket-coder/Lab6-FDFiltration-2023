function Show3Images(A,B,C,T1,T2,T3)
%show 3 IMAGES in pseudocolours
% 
sn=256; 
la=double(min(A(:))); ha=double(max(A(:)));
lb=double(min(B(:))); hb=double(max(B(:)));
lc=double(min(C(:))); hc=double(max(C(:)));
fs='\fontsize{14}\bf\color{red}';
IS=grayslice(mat2gray(double(A),[la,ha]),sn);
subplot(1,3,1),subimage(IS,jet(sn)),...
    title([fs,T1])
    colormap(jet(sn))
    set(gcf,'Color','w')
    set(gca,'TickDir','out'), 
    set(gca,'TickDir','out'), 
    set(gca,'XColor','k','YColor','k','fontsize',11,'fontweight','b')
%
IS=grayslice(mat2gray(double(B),[lb,hb]),sn);
subplot(1,3,2),subimage(IS,jet(sn)),...
    title([fs,T2]), 
    set(gca,'TickDir','out'),
    set(gca,'XColor','k','YColor','k','fontsize',11,'fontweight','b') %
    %colorbar
%
IS=grayslice(mat2gray(double(C),[lc,hc]),sn);
subplot(1,3,3),subimage(IS,jet(sn)),...
    title([fs,T3]), 
    set(gca,'TickDir','out'),
    set(gca,'XColor','k','YColor','k','fontsize',11,'fontweight','b') 
end

