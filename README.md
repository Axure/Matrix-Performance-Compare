# Matrix Performance Comparison


## Result

```julia
julia> include("playground/julia/matrix_square.jl")                
  2.817537 seconds (92.30 k allocations: 1.354 GB, 19.88% gc time)
  2.096800 seconds (76.75 k allocations: 924.642 MB, 5.49% gc time)
  1.478748 seconds (4 allocations: 461.439 MB, 0.05% gc time)      
  0.634318 seconds (6 allocations: 922.878 MB, 1.76% gc time)      
1-element Array{Float64,1}:                                        
 2.0161e7                                                          

julia> versioninfo()                                               
Julia Version 0.4.5                                                
Commit 2ac304d (2016-03-18 00:58 UTC)                              
Platform Info:                                                     
  System: Windows (x86_64-w64-mingw32)                             
  CPU: Intel(R) Core(TM) i5-4200H CPU @ 2.80GHz                    
  WORD_SIZE: 64                                                    
  BLAS: libopenblas (USE64BITINT DYNAMIC_ARCH NO_AFFINITY Haswell)
  LAPACK: libopenblas64_                                           
  LIBM: libopenlibm                                                
  LLVM: libLLVM-3.3                                                
```

```matlab
>> matrix_square
Loop1 :0.151757
Loop2 :0.235973
Direct:0.392878
Vectorized:0.048278
```
