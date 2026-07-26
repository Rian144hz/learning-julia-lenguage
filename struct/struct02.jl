using Dates
struct atendimentos
    Data::Date
    Quantidade::Int
end

struct Feriado
    data::Date
    motivo::String
end

a1 = atendimentos(Date(2024, 1, 15),45);
f1 = Feriado(Date(2024,1,1),"Ano novo")

function descreve_atendimento(a::atendimentos)
        return "Em $(a.Data), houve $(a.Quantidade) atendimentos"
    end

    function descreve_atendimento(f::Feriado)
        return "Em $(f.data), foi feriado: $(f.motivo)"
    end
    
    println(descreve_atendimento(a1));
    println(descreve_atendimento(f1));

