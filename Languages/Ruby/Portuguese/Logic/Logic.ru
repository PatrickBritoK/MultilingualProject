# 1. Variáveis e Tipos de Dados
# Variáveis são como "caixas" onde armazenamos informações. Cada caixa tem um tipo específico.

idade = 25            # Tipo inteiro: armazena números inteiros
altura = 1.75         # Tipo ponto flutuante: armazena números com casas decimais
nome = "João"         # Tipo texto (String): armazena uma sequência de caracteres
estudante = true      # Tipo lógico (booleano): armazena verdadeiro ou falso

puts "Idade: #{idade}"
puts "Altura: #{altura}"
puts "Nome: #{nome}"
puts "Estudante: #{estudante}"

# 2. Operadores
# Operadores aritméticos, de comparação e lógicos.

# Operadores Aritméticos
soma = 10 + 5  # Adição
resto = 10 % 3 # Módulo (resto da divisão)
puts "Soma: #{soma}"
puts "Resto: #{resto}"

# Operadores de Comparação
resultado = 10 > 5  # Verifica se 10 é maior que 5
iguais = 5 == 5     # Verifica se 5 é igual a 5
puts "10 > 5: #{resultado}"
puts "5 == 5: #{iguais}"

# Operadores Lógicos
e_condicao = (10 > 5) && (5 < 10)  # 'E' lógico: ambas as condições precisam ser verdadeiras
ou_condicao = (10 > 5) || (5 > 10) # 'OU' lógico: uma das condições precisa ser verdadeira
puts "Condição E: #{e_condicao}"
puts "Condição OU: #{ou_condicao}"

# 3. Estruturas Condicionais
# Condições para tomar decisões no programa.

idade_pessoa = 20
if idade_pessoa >= 18
    puts "Você é maior de idade."
else
    puts "Você é menor de idade."
end

# Switch Case: alternativa ao if-else quando temos várias condições possíveis
numero = 2
case numero
when 1
    puts "É um"
when 2
    puts "É dois"
else
    puts "Outro número"
end

# 4. Laços de Repetição (Loops)
# Usados quando queremos repetir um bloco de código várias vezes.

(1..5).each do |i|
    puts i  # Vai imprimir 1, 2, 3, 4, 5
end

j = 1
while j <= 5
    puts j  # Vai imprimir 1, 2, 3, 4, 5
    j += 1  # Incrementa o valor de j
end

k = 1
begin
    puts k  # Vai imprimir 1, 2, 3, 4, 5
    k += 1
end while k <= 5

# 5. Funções (Métodos)
# Funções são usadas para organizar e reutilizar blocos de código.

def saudacao
    puts "Olá, seja bem-vindo!"
end

def soma(a, b)
    a + b  # Retorna a soma dos dois números
end

saudacao  # Chama a função saudacao
resultado_soma = soma(5, 3)  # Chama a função soma
puts "Resultado da soma: #{resultado_soma}"

# 6. Entrada e Saída de Dados
# Usado para interagir com o usuário, capturando entradas e exibindo saídas.

def entrada_saida
    print "Digite seu nome: "
    nome = gets.chomp  # Captura o nome do usuário
    puts "Olá, #{nome}"
end

# 7. Manipulação de Strings
# Strings são sequências de caracteres, úteis para trabalhar com texto.

def manipulacao_strings
    nome = "João"
    saudacao = "Olá, #{nome}!"  # Concatenando strings
    puts saudacao  # Exibe: Olá, João!

    palavra = "programação"
    tamanho = palavra.length  # Verifica o tamanho da string
    contem = palavra.include?("grama")  # Verifica se a palavra contém "grama"
    puts "Tamanho da palavra: #{tamanho}"
    puts "Contém 'grama': #{contem}"
end

# 8. Arrays
# Arrays são usados para armazenar múltiplos valores do mesmo tipo em uma única variável.

def exemplo_arrays
    numeros = [1, 2, 3, 4, 5]  # Declaração e inicialização de um array
    puts "Primeiro número: #{numeros[0]}"  # Acessa o primeiro valor
    puts "Último número: #{numeros[-1]}"  # Acessa o último valor
end

# 9. Classe e Objetos
# Criando uma classe e instanciando objetos dela.

class Pessoa
    def initialize(nome, idade)
        @nome = nome
        @idade = idade
    end

    def apresentar
        puts "Olá, meu nome é #{@nome} e tenho #{@idade} anos."
    end
end

def exemplo_classe_objetos
    pessoa1 = Pessoa.new("Nico", 30)  # Criação de um objeto da classe Pessoa
    pessoa1.apresentar  # Chamada do método
end

# 10. Conceito de `this`
# O `this` em Ruby é substituído por `self` para referir-se ao objeto atual dentro de um método da classe.

def exemplo_self
    class Carro
        def initialize(modelo)
            @modelo = modelo  # 'self' faz referência ao atributo da classe
        end

        def mostrar_modelo
            puts "Modelo do carro: #{@modelo}"
        end
    end

    carro = Carro.new("Fusca")
    carro.mostrar_modelo  # Exibe: Modelo do carro: Fusca
end

# 11. Herança
# Criando uma classe filha que herda de uma classe pai.

class Animal
    def initialize(nome)
        @nome = nome
    end

    def fazer_som
        puts "O animal faz um som."
    end
end

class Cachorro < Animal
    def fazer_som
        puts "O cachorro late."
    end
end

def exemplo_heranca
    cachorro = Cachorro.new("Rex")
    cachorro.fazer_som  # O método sobreposto é chamado
end

# 12. Encapsulamento
# Usando modificadores de acesso para proteger dados.

def exemplo_encapsulamento
    class ContaBancaria
        def initialize
            @saldo = 0
        end

        def depositar(valor)
            @saldo += valor if valor > 0
        end

        def saldo
            @saldo  # Acesso ao saldo através de um método público
        end
    end

    conta = ContaBancaria.new
    conta.depositar(500)
    puts "Saldo da conta: #{conta.saldo}"
end

# 13. Exceções
# Tratamento de erros durante a execução do programa.

def exemplo_excecao
    begin
        resultado = 10 / 0  # Divisão por zero
    rescue StandardError => e
        puts "Erro: #{e.message}"
    end
end

# 14. Trabalhando com `ArrayList`
# Em Ruby, usamos Arrays para uma estrutura de lista dinâmica.

def exemplo_array_list
    lista = ["Java", "Python", "C++"]

    puts "Tamanho da lista: #{lista.length}"  # Exibe o tamanho da lista
    puts "Primeiro item: #{lista[0]}"  # Acessa o primeiro item da lista
end
