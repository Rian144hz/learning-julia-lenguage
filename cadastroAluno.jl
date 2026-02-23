
struct Aluno
    matricula::Int
    nome::String
    nota1::Float64
    nota2::Float64
    nota3::Float64
    qtd_faltas::Int
end
function calcularMedia(aluno::Aluno)
    return(aluno.nota1+aluno.nota2+aluno.nota3)/3
end  

function cadastrarAlunos()
    opcao = 0
    alunos = Aluno[]
    



    while true
        println("1-Cadastrar Aluno \n 2-Obter o aluno com a maior média\n 3-Obter o aluno com a menor média\n 4-Obter o aluno com maior quantidade de faltas\n 5-Obter o aluno com menor quantidade de faltas\n 6- Listar todos os alunos\n 0- sair")
        print("Opção: ")
        opcao = parse(Int64, readline())

        
        if opcao == 1
           
                println("Casdastrar aluno: ")

                print("Matricula: ")
                matricula = parse(Int, readline())

                print("Nome: ")
                nome = readline()

                print("Nota 1: ")
                nota1 = parse(Float64, readline())

                print("Nota 2: ")
                nota2 = parse(Float64, readline())

                print("Nota 3: ")
                nota3 = parse(Float64, readline())

                print("Quantidade de faltas: ")
                qtd_faltas = parse(Int, readline())

                novo = Aluno(matricula, nome, nota1, nota2, nota3, qtd_faltas)
                push!(alunos, novo)

                println("================================")
                println("Aluno cadastrado com sucesso!")
                println("================================")
        
        
    elseif opcao == 2

        if length(alunos) == 0
        println("=====================================")
            println("Nenhum aluno cadastrado")
            println("================================")
            else
            maior = alunos[1]
            for a in alunos
            if calcularMedia(a) > calcularMedia(maior)
                maior = a
            end

            end
            println("=====================================")
            println("Aluno com maior media: ",maior.nome)
            println("Média: ",calcularMedia(maior))
            println("=====================================")
        end

    elseif opcao == 3
        menor = alunos[1]
            for a in alunos
            if calcularMedia(a) < calcularMedia(menor)
                menor = a
            end

            end
            println("=====================================")
            println("Aluno com menor media: ",menor.nome)
            println("Média: ",calcularMedia(menor))
            println("=====================================")
        

    elseif opcao == 4
      if length(alunos) == 0
        println("=====================================")
            println("Nenhum aluno cadastrado")
            println("================================")
            else
            maior = alunos[1]
            for a in alunos
            if a.qtd_faltas > maior.qtd_faltas
                maior = a
            end

            end
      end
       println("=====================================")
            println("Aluno com maior quantidades de faltas: ",maior.nome)
            println("Quantidade de faltas: ",maior.qtd_faltas)
            println("=====================================")


    elseif opcao == 5
      if length(alunos) == 0
        println("=====================================")
            println("Nenhum aluno cadastrado")
            println("================================")
            else
            menor = alunos[1]
            for a in alunos
            if a.qtd_faltas < menor.qtd_faltas
                menor = a
            end

            end
      end
      
       println("=====================================")
            println("Aluno com menor quantidades de faltas: ",menor.nome)
             println("Quantidade de faltas: ",menor.qtd_faltas)
            println("=====================================")

    elseif opcao == 6
    if length(alunos) == 0

        println("================================")
            println("Nenhum aluno cadastrado")
            println("================================")
            else
            for a in alunos
                println("=============== Alunos cadastrados =================")
            println("Nome: ", a.nome)
            println("Matrícula: ", a.matricula)
            println("Média: ", calcularMedia(a))
            println("Faltas: ", a.qtd_faltas)
            end
       end

    elseif opcao == 0
        println("Encerrando...")
        break
    end
end
end
cadastrarAlunos()