
function res = genMatrix(n)
    res = zeros(n,n)
    for i = 1:n
        for j = 1:n
            if i==j then
                res(i,j)=0
            elseif i<j then
                res(i,j)=1/(i+j-1)
            else
                res(i,j)=-1/(i+j-1)
            end
        end
    end
    endfunction
n = input("Enter N: ")
A = grand(n,n,"uin",1,100)
B = genMatrix(n)
disp("A*B=")
disp(A*B)
