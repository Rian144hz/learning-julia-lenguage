using Dates

abstract type EventoDoDia end

struct Atendimento <: EventoDoDia 
    data::Date
    quantidade::Int
end

struct Feriado <: EventoDoDia
    motivo::String
    data::Date
end

function descricao(e::Atendimento)
    data_str = Dates.format(e.data, "dd/mm/yyyy")
    println("Atendimento em $data_str: $(e.quantidade) atendimentos.")
end

function descricao(e::Feriado)
    data_str = Dates.format(e.data, "dd/mm/yyyy")
    println("Feriado ($(e.motivo)) dia $data_str!")
end

descricao(Atendimento(Date(2026, 7, 28), 15))
descricao(Feriado("Aniversário da cidade", Date(2026, 7, 28)))