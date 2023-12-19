function ShowImageBW3(A,T)
%show IMAGE in B/W
% with axes !!!
% 
%A=uint8(A);
%la=double(min(A(:))); ha=double(max(A(:)));
fs='\fontsize{24}\bf\color{red}';
%fs='\fontsize{32}\bf\color{black}';
subplot(1,1,1),...
 subimage(A),title([fs,T])
    set(gcf,'Color','w')
    set(gca,'TickDir','out'), 
    set(gca,'XColor','k','YColor','k','fontsize',12,'fontweight','b')
end

