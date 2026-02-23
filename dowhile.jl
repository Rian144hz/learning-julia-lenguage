numero = 0
function enquantoNaofor0()
    while true
        println("Digite qualquer número(0 encerra o programa.)")
        numero = parse(Int64, readline())
        if numero == 0
            println("Você digitou $numero")
            println("Encerrando programa....")
            break
        end
        println("Você digitou $numero")
    end
end
enquantoNaofor0()