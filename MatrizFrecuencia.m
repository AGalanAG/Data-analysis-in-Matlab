clear all close all
file=fopen('unmanual2.txt');
ca=fscanf(file,'%c');
%ca=["comunicaciones"]
j=1;
for i=97:1:122
    R(j)=length(strfind(ca,i));
    j=j+1;
end
R(j)=length(strfind(ca,32));
m=1;
for o=97:1:123
    aux(1)=o;
    if o ==123
    aux(1)=32;
    end
    n=1;
    for p=97:1:123
        aux(2)=p;
        if p==123
            aux(2)=32;   
        end
        T(m,n)=length(strfind(ca,aux));   
        n=n+1;
    end
    m=m+1;
end
k=1;
for i=1:1:27
   for j=1:1:27
      F(i,j)= T(i,j)./R(k);
   end
   k=k+1;
end

%Entropia
Val=0;
for i=1:1:27
   for j=1:1:27
       if(i==11 || i==23 || j==11 || j==23)
       else
       if(F(i,j)==0)
       else 
       if(Val==0)
       Val=F(i,j)*log2(1/F(i,j));
       end
      Val=Val*(F(i,j)*log2(1/F(i,j)));
       end
       end
   end
 
end
Val
% val=fruleta(T(27,:));
% for i=1:1:580
%     val=fruleta(T(val,:));
% end
% t=["Terminado"]
disp('terminado3')