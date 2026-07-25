v = [10,20,30,40,50,60,70];
deleteat!(v,4)
#add
push!(v,80);
pop!(v)
popfirst!(v)



#first
println(v[1])
#last
println(v[end])
#everbody, less last
println(v[1:end-1])

print(length(v))





