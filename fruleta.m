function sal= fruleta(R)
fileID = fopen('ruleta2.txt','a'); 
R;
total=sum(R);
esp=sum(R)-(R(length(R)));

    sub=R(1);
    n=randi([1 total]);
    k=2;
    for i=97:1:121
     
            if n>=1 && n<R(1)
            fprintf(fileID,'%c',i);
            sal =1;
            break
                elseif n>=sub && n<=(sub+R(k))
                fprintf(fileID,'%c',i+1);
               sal = k;
               break   
            end
           
        
             sub=sub+R(k);
            k=k+1;
        
     end

     if n>esp
        if n>sub && n<=total 
            fprintf(fileID,' ');
            sal = 27;
            
        else
            disp('Error')
        end
     else
        %disp('terminado2')
     end
        n;
        %disp('terminado')


fclose(fileID);


end

