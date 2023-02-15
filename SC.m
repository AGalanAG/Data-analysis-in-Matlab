function sal= SC(R)

vector=R;
k=1;
sig=0.1;
 
for i=1:1:length(vector)
                 if mod(i,length(vector)/2)== 0
                    r=randn;
                 else
                    r=1;
                 end
      
    if(vector(i)==1)
        
        for j=1:1:10

        nvector(k)=1*(r*sig);
        k=k+1;
        end
    else
        
        for j=1:1:10

        nvector(k)=-1*(r*sig);
        k=k+1;
        end
    end

end
%figure
%plot(nvector)

[b,a] = butter(1,1/10);
%freqz(b,a)
fvector=filter(b,a,nvector);
%figure 
%plot(fvector)
m=1;
  for j=1:10:length(fvector)
        if(j==1)
            if (fvector(5)>0)
                rvector(m)=1;
            elseif (fvector(5)<0)
                rvector(m)=0;
            end
        else
             if (fvector(j+5)>0)
                rvector(m)=1;
             elseif (fvector(j+5)<0)
                rvector(m)=0;
            end
        end

        m=m+1;
  end
  mal=0;
for i=1:1:length(vector)
    if  vector(i)~=rvector(i)
        mal=mal+1;
        disp('Posicion:')
        i
    end

end
disp('Cantidad de errores:')
mal
length(vector)-mal
mal/length(vector)

sal=rvector;