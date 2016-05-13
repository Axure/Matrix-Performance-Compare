function test()
    A=rand(7777,7777);

    @time bench_loop1(A)
    @time bench_loop2(A)
    @time bench_sum(A)
    @time bench_vec(A)
end

function bench_loop1(A)
    v=0
    ~,N=size(A)
    @simd for i in 1:N
        @inbounds v=v+A[:,i].^2
    end
    s=sum(v)
    return s
end

function bench_loop2(A)
    s=0
    ~,N=size(A)
    @simd for i in 1:N
        @inbounds s=s+sum(A[:,i].^2)
    end
    return s
end

function bench_sum(A)
    s=sum(sum(A.^2))
    return s
end

function bench_vec(A)
  return A[:]'*A[:]
end

test()
