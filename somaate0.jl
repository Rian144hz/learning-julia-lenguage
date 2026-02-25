function somaate0()
soma = 0
numero = 0
    while true
        println("Digite qualquer número(0 encerra o programa.)")
        numero = parse(Int64, readline())
        soma = soma += numero

        if numero == 0
        println("Encerrando programa...")
            break

        end
        println("Você digitou $numero")
    end
    println("A soma de todos os números é $soma")
end
somaate0()