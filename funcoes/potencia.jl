function potencia(base,expoente)
    if expoente === nothing
        return base ^ 2
        else
        return base ^ expoente
    end
end
println("Resultado: ",potencia(2,3))