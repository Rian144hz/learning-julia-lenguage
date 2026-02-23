function verificar_senha()
    senhaCorreta = "12345"
    senhaDigitada = ""
    tentativas = 0
    maxtentativas = 3
    while senhaDigitada != senhaCorreta
        print("Digite sua senha: ")
        senhaDigitada = readline()
        tentativas += 1

        if senhaDigitada != senhaCorreta
            restantes = maxtentativas - tentativas
            println("Senha incorreta, você tem apenas $restantes tentativas restantes.")

        else
            println("Senha correta, acesso permitido!")
            break

        end

        if tentativas == maxtentativas
            println("Acesso bloqueado, número de tentativas excedidas!")
            break

        end
    end
end
verificar_senha()