function desc = descodificador_Conv(entrada)
codf1=entrada;
j=1;
i=1;
while i<length(codf1)
    cod(1)=codf1(i);
    cod(2)=codf1(i+1);
        if i==1
            if cod == [0 0]
                desc(j)=0;
                state= [0 0];
            elseif cod == [1 1]
                desc(j)=1;
                state=[1 0];
            end
            j=j+1;
           
        else
            if state == [0 0]
                if cod==[0 0]
                    desc(j)=0;
                else
                    desc(j)=1;
                end
            elseif state == [1 0]
                if cod==[1 0]
                    desc(j)=0;
                elseif cod == [0 1]
                    desc(j)=1;
                end
            elseif state == [0 1]
                if cod==[1 1]
                    desc(j)=0;
                elseif cod == [0 0]
                    desc(j)=1;
                end
            elseif state == [1 1]
                if cod==[0 1]
                    desc(j)=0;
                elseif cod == [1 0]
                    desc(j)=1;
                end
            end
        state(2)=state(1);
        state(1)=desc(j);
        j=j+1;
        end
    i=i+2;
end