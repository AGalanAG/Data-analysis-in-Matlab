function sal= berror(R)

vector=R;

    if vector == [1 0 1]
        sal=[0 0 0 0 0 1];
    end
    if vector == [0 1 1]
        sal=[0 0 0 0 1 0];
    end
    if vector== [1 1 0]
        sal=[0 0 0 1 0 0];
    end
    if vector == [0 0 1]
        sal=[0 0 1 0 0 0];
    end
    if vector == [0 1 0]
        sal=[0 1 0 0 0 0];
    end
    if vector == [1 0 0]
        sal=[1 0 0 0 0 0];
    end
    if vector == [1 1 1]
        sal=[0 1 0 0 0 1];
    end

