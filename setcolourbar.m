function setcolourbar(sl,sh);
%set colourbar parameters
%n=7; 
nf='%8.2f';
%colorbar('delete'), 
%set(gca,'YTick',YT),
%hcb=colorbar('YTick',YT,'YTickLabel',S,'fontsize',12,'fontweight','b');
%hcb=colorbar('YTickLabel',S,'fontsize',12,'fontweight','b');
%hcb=colorbar('fontsize',12,'fontweight','b');
hcb=colorbar;
n=size(get(hcb,'YTick'),2);
step=(sh-sl)/(n-1); 
s1=num2str(sl,nf); 
S={s1}; %YT=[0];
for m=1:(n-1);
    S=[S, num2str(sl+m*step,nf)];
    %YT=[YT, 10*m];
end;    
set(hcb,'YTickMode','manual')
set(hcb,'YTickLabel',S,'fontsize',12,'fontweight','b')
%set(hcb,'CLimMode','manual')
%set(hcb,'CLim',[0.0,6.0])
%set(hcb,'TickDir','out')
end

