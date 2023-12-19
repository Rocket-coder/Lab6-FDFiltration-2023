function Show3ImagesBW(A,B,C,T1,T2,T3)
%show 3 IMAGES in BW
sn=256; 
%la=double(min(A(:))); ha=double(max(A(:)));
%lb=double(min(B(:))); hb=double(max(B(:)));
%lc=double(min(C(:))); hc=double(max(C(:)));
fs='\fontsize{14}\bf\color{red}';
subplot(1,3,1),subimage(A),...
    title([fs,T1])
    set(gcf,'Color','w')
    set(gca,'TickDir','out'), 
    set(gca,'TickDir','out'), 
    set(gca,'XColor','k','YColor','k','fontsize',11,'fontweight','b')
%
subplot(1,3,2),subimage(B),...
    title([fs,T2]), 
    set(gca,'TickDir','out'),
    set(gca,'XColor','k','YColor','k','fontsize',11,'fontweight','b') %
%
subplot(1,3,3),subimage(C),...
    title([fs,T3]), 
    set(gca,'TickDir','out'),
    set(gca,'XColor','k','YColor','k','fontsize',11,'fontweight','b') 
end

