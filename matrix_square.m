function matrix_square()
    A=rand(7777,7777);
    fprintf('Loop1 :%f\n',timeit(@()bench_loop1(A)));
    fprintf('Loop2 :%f\n',timeit(@()bench_loop2(A)));
    fprintf('Direct:%f\n',timeit(@()bench_sum(A)));
    fprintf('Vectorized:%f\n',timeit(@()bench_vec(A)));
end

function s=bench_loop1(A)
    v=0;
    [~,N]=size(A);
    for i=1:N
        v=v+A(:,i).^2;
    end
    s=sum(v);
end

function s=bench_loop2(A)
    s=0;
    [~,N]=size(A);
    for i=1:N
        s=s+sum(A(:,i).^2);
    end
end

function s=bench_sum(A)
    s=sum(sum(A.^2));
end

function s=bench_vec(A)
    s=A(:)'*A(:);
end
