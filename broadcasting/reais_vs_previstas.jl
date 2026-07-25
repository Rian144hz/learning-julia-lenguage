using Statistics

notas_reais = [5.5, 7.0, 3.5, 9.0, 6.0];
notas_previstas = [6.0, 6.5, 4.0, 8.0, 6.5];

diferencas = notas_reais .- notas_previstas;

erros_absolutos = abs.(diferencas);


mae = mean(erros_absolutos);


println(mae)