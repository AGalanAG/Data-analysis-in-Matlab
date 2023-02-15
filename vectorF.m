function sal= vectorF

file=fopen('unmanual2.txt');
ca=fscanf(file,'%c');
j=1;T=0;
for i=97:1:122
    R(j)=length(strfind(ca,i));
    T=R(j)+T;
    j=j+1;
end
R(j)=length(strfind(ca,32));
T=R(j)+T;
v=R./T;
sal=v;
