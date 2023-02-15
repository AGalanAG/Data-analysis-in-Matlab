function sal= Ruido(R)

vector=R;

nuevo=0;
for i=1:6:length(vector)
   
    
        
       if vector(i) == 1
           
          vector(i) = 0;
       
       else
       vector(i)= 1;
       end
          

    

end

sal = vector;