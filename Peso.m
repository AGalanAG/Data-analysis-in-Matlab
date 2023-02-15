function res = Peso(vect1,vect2)
res=0;
if vect1 == vect2
    res= 0;
else

    for i=1:1:2
        if vect1(i)~=vect2(i)
        res=res+1;
        end

    end
end

end