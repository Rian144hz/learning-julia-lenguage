function area(lado::Number)

    return lado^2                     #area do quadrado
end

function area(base::Number,altura::Number)

    return base*altura                   #area do retângulo
end

function area(raio::Number, ::Val{:circulo})
                                        # área do círculo
    return pi*raio^2
end

println("Quadrado: ",area(4)) #quadrado
println("Retângulo: ",area(3,5)) #retângulo
println("Raio: ",area(2, Val(:circulo))) #raio

