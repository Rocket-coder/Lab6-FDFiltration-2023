function AN=normalize2(A);
%
mi=min(min(A)); ma=max(max(A)); 
r=ma-mi;
AN=A-mi;
if ma>0; AN=AN/r; end;
end

