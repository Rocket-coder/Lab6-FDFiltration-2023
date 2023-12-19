function GN=normalize(G);
%
mi=min(min(G)); ma=max(max(G)); r=ma-mi;
GN=G-mi;
if ma>0; GN=floor(GN*255/r); end;
GN=uint8(GN);
end

