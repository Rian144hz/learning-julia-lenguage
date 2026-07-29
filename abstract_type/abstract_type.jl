abstract type Animal end

struct Cachorro <: Animal
    nome::String
end

struct Gato <: Animal
    nome::String
end

function fazerSom(a::Animal)
    println("Som genérico de qualquer animal")
end

fazerSom(c::Cachorro) = println("$(c.nome) faz: Au au!")
fazerSom(g::Gato) = println("$(g.nome) faz: Miauu!")


fazerSom(Cachorro("Rex"))
fazerSom(Gato("Mimi"))