function sal = FHuffman
file=fopen('unmanual2.txt');
ca=fscanf(file,'%c');
symbols = 1:27; 
p = vectorF;
n=[2,3,5,6,20,27];

j=1;T=0;
for i=1:1:length(ca)
   for j=97:1:122
        if ca(i)==j
            Nca(i)=j-96;
        end
   end

   if ca(i)==32
        Nca(i)=27;
   end

end

dict = huffmandict(symbols,p);
inputSig = randsrc(100,1,[symbols;p]);
code = huffmanenco(Nca,dict);
sal=code;
end