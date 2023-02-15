clear all close all
%[1 1 0 1 0 1 0 0 0 1]
recv=[1 1 0 1];

dim= length(recv);
tam= dim/2;
j=1;
k=1;
   state=[0 0];
   state2=[0 0];
for i=1:1:tam

   cod(i,k)=0;
   peso(i,k)=Peso([recv(j) recv(j+1)],state);
   state(2)=state(1);
   state(1)=cod(i);
   
   cod(i,k+1)=1;
   peso(i,k+1)=Peso([recv(j) recv(j+1)],state2);
   state2(2)=state2(1);
   state2(1)=cod(i,k+1);
   
   j=j+2;

end


