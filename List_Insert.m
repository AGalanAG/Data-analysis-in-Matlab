%Método para insertar un nuevo elemento
%Recibimos un objeto que contiene la matriz, free, heap, x
%tambien recibimos la posición de X y el valor a insertar
%retornamos un objeto con una matriz, free, heap y x
function listasI=List_Insert(L,x,val)
listasI=L;
%Método Allocate Object
if(listasI.free==0)
disp(‘Error’);
else
x=listasI.free;
listasI.free=listasI.A(1,x);
listasI.x=x;
end
%Método Insert
listasI.A(1,x)=listasI.heap;
if(listasI.heap~=0)
listasI.A(3,listasI.heap)=x;
end
listasI.heap=x;
listasI.A(3,x)=0;
listasI.A(2,x)=val;
end
%Método que elimina un registro
%Recibimos un objeto con una matriz, free, heap y x.
%también recibimos la posición del elemento a eliminar (x)
%retornamos un objeto con una matriz modificada, free, heap y
x.
function listasD=List_Delete(L,x)
if(x~=0)
listasD=L;
if(listasD.A(3,x)~=0)
temp=listasD.A(3,x);
listasD.A(1,temp)=listasD.A(1,x);
else
listasD.heap=listasD.A(1,x);
end
if (listasD.A(1,x)~=0)
temp2=listasD.A(1,x);
listasD.A(3,temp2)=listasD.A(3,x);
end

%Inicia metodo free object
listasD.A(1,x)=listasD.free;
listasD.free=x;
else
disp(‘Error Numero no encontrado’);
end
end
%Método para buscar un elemento
%Recibimos un objeto y el elemento a buscar dentro de la matriz
del objeto
%Retornamos la posición donde hallemos el objeto
function x=List_Search(L,k)
A=L;
x=length(A);
while(x~=0 & A(2,x)~=k)
x=x-1;
end
end
%Author: Pérez Calzada Luigi
%Date: 18-05-11 at 10:24
%Interfaz para comprobar que funcione el programa
lista.x=1; %x inicia en la posición 1
lista.free=1; %free apunta a la posición 1
lista.heap=0; %heap inicia como nulo (0)
lista.A=[2 3 4 5 6 7 8 0; 0 0 0 0 0 0 0 0; 0 0 0 0 0 0 0 0];
%declaramos nuestra matriz.
listaB=List_Insert(lista,lista.free,4); %Metodo que inserta un
elemento
listaB=List_Insert(listaB,listaB.free,18); %enviamos el objeto,
la posición de free, y el valor a insertar
listaB=List_Insert(listaB,listaB.free,5);%y lo almacenamos en
una nueva lista
listaB.A%mostramos nuestra matriz al insertar 3 elementos
s=List_Search(listaB.A,18); %buscamos primero si existe el
elemento
listaB=List_Delete(listaB,s); %lo eliminamos
listaB.A %mostramos nuestra matriz después de la primera
eliminación
listaB=List_Insert(listaB,listaB.free,9);
listaB=List_Insert(listaB,listaB.free,12);
listaB.A%mostramos matriz después de insertar 2 elementos
s=List_Search(listaB.A,9);
listaB=List_Delete(listaB,s);%eliminamos un elemento
listaB.A%mostramos matriz final