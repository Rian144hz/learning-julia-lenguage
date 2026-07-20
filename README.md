# Aprendendo Julia

Repositório destinado ao estudo progressivo da linguagem **Julia**, cobrindo desde conceitos fundamentais até manipulação de dados, computação de alto desempenho e visualização. O objetivo é estabelecer uma base prática para futuras aplicações em métodos numéricos, simulações e modelagem matemática.

---

## 1. Objetivos do Repositório

- **Sintaxe e Idiomas da Linguagem:** Domínio da sintaxe nativa e de boas práticas em Julia.
- **Eficiência Executiva:** Escrita de código sem variáveis globais, fatiamento dinâmico e uso de macros de análise de desempenho (`@time`).
- **Análise e Manipulação de Dados:** Utilização de ecossistemas externos (`DataFrames.jl`, `CSV.jl` e `Plots.jl`) para engenharia e visualização de dados.
- **Preparação Acadêmica:** Construção de base técnica para disciplinas de Métodos Numéricos, Teoria da Computação e Análise de Dados.

---

## 2. Conteúdo e Tópicos Abordados

### Sintaxe e Estruturas Fundamentais
- Variáveis, tipos de dados e inferência de tipos.
- Fluxo de controle: estruturas condicionais (`if/else`) e laços de repetição (`for`, `while`).
- Indexação e coleções: vetores, matrizes, indexação base 1, fatiamento (*slicing*) e funções mutáveis (`push!`).

### Paradigmas e Desempenho
- **Broadcasting (Operador `.`):** Operações vetorizadas elemento a elemento para alta performance.
- **Encapsulamento em Funções:** Promoção de estabilidade de tipos e otimização do compilador JIT.
- **Multiple Dispatch (Despacho Múltiplo):** Definição de múltiplos comportamentos de funções com base nos tipos dos argumentos.
- **Medição de Desempenho:** Avaliação de alocação de memória e tempo de execução via `@time`.

### Ecossistema de Dados e Visualização
- **DataFrames.jl:** Construção de tabelas, criação de colunas derivadas e filtragem condicional vetorizada.
- **CSV.jl:** Leitura e persistência de dados em disco.
- **Plots.jl:** Geração programática de gráficos (barras, linhas e séries temporais).

---

## 3. Estrutura dos Módulos Práticos

O repositório contém implementações cobrindo os seguintes algoritmos e exercícios:

- **Algoritmos Básicos:** Cálculo de média, verificação de paridade, fatorial e sequência de Fibonacci.
- **Operações em Vetores:** Busca de extremos (máximo e mínimo) e ordenação.
- **Processamento de Dados:** Filtros condicionais em conjuntos de dados e exportação de relatórios tabulares.
- **Visualização:** Scripts para renderização gráfica de métricas e distribuições.

---

## 4. Tecnologias e Ferramentas

- **Linguagem:** Julia (v1.x)
- **Bibliotecas:** `DataFrames.jl`, `CSV.jl`, `Plots.jl`
- **Ambiente de Desenvolvimento:** Linux (Ubuntu), Git, VS Code

---

## 5. Instruções de Execução

### Pré-requisitos
Certifique-se de ter o ambiente do Julia instalado na máquina.
- Download oficial: [julialang.org/downloads](https://julialang.org/downloads/)

### Instalação e Execução

1. Clone o repositório:
```bash
git clone [https://github.com/rian144hz/julia-exercicios.git](https://github.com/rian144hz/julia-exercicios.git)
cd julia-exercicios
