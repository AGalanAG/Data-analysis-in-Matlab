function cod = conv_encoder(entrada)
main=[0 0 0];

for k = 1:length(entrada)
if k>length(entrada)
    In=0;
else
In = entrada(k);
end

u1 = bitxor((bitxor(In,main(2))),main(3));
u2 = bitxor(In,main(3));

cod((2*k)-1) = u1;
cod(2*k) = u2;

main(3)=main(2);
main(2)=In;
end