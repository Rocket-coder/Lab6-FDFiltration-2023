function Show2ImagesBW2(A,B,T1,T2)
%show pair of IMAGES in pseudocolours
% 
%sn=256; 
la=double(min(A(:))); ha=double(max(A(:)));
lb=double(min(B(:))); hb=double(max(B(:)));
M1=['max=',num2str(ha,'%8.3f'),...
     blanks(10),'min=',num2str(la,'%8.3f')]; 
M2=['max=',num2str(hb,'%8.3f'),...
     blanks(10),'min=',num2str(lb,'%8.3f')];  
fs='\fontsize{16}\bf\color{red}';
fm='\fontsize{12}\bf\color{black}';
subplot(1,2,1),
 subimage(A),title({[fs,T1];[fm,M1]})
    set(gcf,'Color','w')
    set(gca,'TickDir','out'), 
    set(gca,'XColor','k','YColor','k','fontsize',12,'fontweight','b')
%
subplot(1,2,2),subimage(B), 
    title({[fs,T2];[fm,M2]})  
    set(gcf,'Color','w')
    set(gca,'TickDir','out'), 
    set(gca,'XColor','k','YColor','k','fontsize',12,'fontweight','b')
end

