clear all close all
file=fopen('unmanual2.txt');
ca=fscanf(file,'%c');
j=1;
for i=97:1:122
    R(j)=length(strfind(ca,i));
    j=j+1;
end
R(j)=length(strfind(ca,164));
j=j+1;
R(j)=length(strfind(ca,32));
fileID = fopen('ruleta.txt','w');
R
total=sum(R)
esp=sum(R)-(R(length(R)))
for x=1:1:total
    sub=R(1);
    n=randi([1 total]);
    k=2;
    for i=97:1:122
        if n>=1 && n<=R(1) 
            fprintf(fileID,'%c',i);
            break
        elseif n>=sub && n<= (sub+R(k)) 
               fprintf(fileID,'%c',i+1);
               break   
        end
            sub=sub+R(k);
            k=k+1;
     end

     if n>esp
        if n>sub && n<=total 
            fprintf(fileID,' ');
        else
            disp('Error')
        end
     else
        %disp('terminado2')
     end
        n;
        %disp('terminado')
end
fclose(fileID);
disp('Original')
frec("unmanual2.txt")
disp('Nueva')
frec("ruleta.txt")
disp('terminado')