clear all close all
matrizG=[1 1 0 1 0 0;0 1 1 0 1 0;1 0 1 0 0 1];
nuevo=[0 0 0 0 0 0];
H=[1 0 0;0 1 0; 0 0 1;1 1 0;0 1 1;1 0 1];
vector=FHuffman;
sindrome=0;
tamVector=length(vector);
while mod(tamVector,3) ~= 0
    vector(tamVector+1)=0;
    tamVector=length(vector);
end
j=1;
n=1;
for i=1:1:length(vector)

    trivector(j)=vector(i);
    j=j+1;

        if mod(i,3)==0

         for l=1:1:3
            nuevo=bitxor(trivector(l)*matrizG(l,:),nuevo);
         end
        j=1;
            for k=1:1:6
                codvect(n)=nuevo(k);
                n=n+1;
            end
        end
end
Rvect=Ruido(codvect);

a=1;
b=1;
for c=1:1:length(Rvect)

    sixvector(a)=Rvect(c);
    a=a+1;

        if mod(c,6)==0
       
                for d=1:1:6
                    sindrome=bitxor(sixvector(d).*H(d,:),sindrome);
                end
        a=1;
             if sindrome == [0 0 0] 
                
                for e=1:1:6
                corrtvect(b)=sixvector(e);
                b=b+1;
                end

             else
                erropatt=berror(sindrome);
                cod=bitxor(sixvector,erropatt);
                for e=1:1:6
                corrtvect(b)=cod(e);
                b=b+1;
                end
             end

        end
sindrome=0;
end

  mal=0;
for i=1:1:length(codvect)
    if  codvect(i)~=Rvect(i)
        mal=mal+1;
    end

end
disp('Cantidad de errores:')
mal


err=0;
for i=1:1:length(codvect)
    if  codvect(i)~=corrtvect(i)
        err=err+1;
    end

end
disp('Cantidad de errores despues de la correccion:')
err

  