function B=RGB2BW2(A);
% To transform an RGB-image to BW-image
%--------------------------------------
c=[0.3;0.59;0.11]; %as in Photoshop
if     size(A,3)==3; 
       B=uint8(round(c(1)*A(:,:,1)+c(2)*A(:,:,2)+c(3)*A(:,:,3)));   
elseif size(A,3)==1; 
       B=A;
else   error('Wrong dimensions');
end;    
end

