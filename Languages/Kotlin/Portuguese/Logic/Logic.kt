// 1. Variáveis e Tipos de Dados
// Variáveis são como "caixas" onde armazenamos informações. Cada caixa tem um tipo específico.

val idade = 25             // Tipo inteiro: armazena números inteiros
val altura = 1.75          // Tipo ponto flutuante: armazena números com casas decimais
val nome = "João"          // Tipo texto (String): armazena uma sequência de caracteres
val estudante = true       // Tipo lógico (Boolean): armazena verdadeiro ou falso

println("Idade: $idade")
println("Altura: $altura")
println("Nome: $nome")
println("Estudante: $estudante")

// 2. Operadores
// Operadores aritméticos, de comparação e lógicos.

// Operadores Aritméticos
val soma = 10 + 5        // Adição
val resto = 10 % 3       // Módulo (resto da divisão)
println("Soma: $soma")
println("Resto: $resto")

// Operadores de Comparação
val resultado = 10 > 5    // Verifica se 10 é maior que 5
val iguais = 5 == 5       // Verifica se 5 é igual a 5
println("10 > 5: $resultado")
println("5 == 5: $iguais")

// Operadores Lógicos
val eCondicao = (10 > 5) && (5 < 10)  // 'E' lógico: ambas as condições precisam ser verdadeiras
val ouCondicao = (10 > 5) || (5 > 10) // 'OU' lógico: uma das condições precisa ser verdadeira
println("Condição E: $eCondicao")
println("Condição OU: $ouCondicao")

// 3. Estruturas Condicionais
// Condições para tomar decisões no programa.

val idadePessoa = 20
if (idadePessoa >= 18) {
    println("Você é maior de idade.")
} else {
    println("Você é menor de idade.")
}

// Switch Case: alternativa ao if-else quando temos várias condições possíveis
val numero = 2
when (numero) {
    1 -> println("É um")
    2 -> println("É dois")
    else -> println("Outro número")
}

// 4. Laços de Repetição (Loops)
// Usados quando queremos repetir um bloco de código várias vezes.

for (i in 1..5) {
    println(i)  // Vai imprimir 1, 2, 3, 4, 5
}

var j = 1
while (j <= 5) {
    println(j)  // Vai imprimir 1, 2, 3, 4, 5
    j++         // Incrementa o valor de j
}

var k = 1
do {
    println(k)  // Vai imprimir 1, 2, 3, 4, 5
    k++
} while (k <= 5)

// 5. Funções (Métodos)
// Funções são usadas para organizar e reutilizar blocos de código.

fun saudacao() {
    println("Olá, seja bem-vindo!")
}

fun soma(a: Int, b: Int): Int {
    return a + b  // Retorna a soma dos dois números
}

saudacao()  // Chama a função saudacao
val resultadoSoma = soma(5, 3)  // Chama a função soma
println("Resultado da soma: $resultadoSoma")

// 6. Entrada e Saída de Dados
// Usado para interagir com o usuário, capturando entradas e exibindo saídas.

fun entradaSaida() {
    print("Digite seu nome: ")
    val nome = readLine()  // Captura o nome do usuário
    println("Olá, $nome")
}

// 7. Manipulação de Strings
// Strings são sequências de caracteres, úteis para trabalhar com texto.

fun manipulacaoStrings() {
    val nome = "João"
    val saudacao = "Olá, $nome!"  // Concatenando strings
    println(saudacao)  // Exibe: Olá, João!

    val palavra = "programação"
    val tamanho = palavra.length  // Verifica o tamanho da string
    val contem = palavra.contains("grama")  // Verifica se a palavra contém "grama"
    println("Tamanho da palavra: $tamanho")
    println("Contém 'grama': $contem")
}

// 8. Arrays
// Arrays são usados para armazenar múltiplos valores do mesmo tipo em uma única variável.

fun exemploArrays() {
    val numeros = arrayOf(1, 2, 3, 4, 5)  // Declaração e inicialização de um array
    println("Primeiro número: ${numeros[0]}")  // Acessa o primeiro valor
    println("Último número: ${numeros[numeros.size - 1]}")  // Acessa o último valor
}

// 9. Classe e Objetos
// Criando uma classe e instanciando objetos dela.

class Pessoa(val nome: String, val idade: Int) {
    fun apresentar() {
        println("Olá, meu nome é $nome e tenho $idade anos.")
    }
}

fun exemploClasseObjetos() {
    val pessoa1 = Pessoa("Nico", 30)  // Criação de um objeto da classe Pessoa
    pessoa1.apresentar()  // Chamada do método
}

// 10. Conceito de `this`
// O `this` é usado para referir-se ao objeto atual dentro de um método da classe.

fun exemploThis() {
    class Carro(val modelo: String) {
        fun mostrarModelo() {
            println("Modelo do carro: $modelo")
        }
    }

    val carro = Carro("Fusca")
    carro.mostrarModelo()  // Exibe: Modelo do carro: Fusca
}

// 11. Herança
// Criando uma classe filha que herda de uma classe pai.

open class Animal(val nome: String) {
    open fun fazerSom() {
        println("O animal faz um som.")
    }
}

class Cachorro(nome: String) : Animal(nome) {
    override fun fazerSom() {
        println("O cachorro late.")
    }
}

fun exemploHeranca() {
    val cachorro = Cachorro("Rex")
    cachorro.fazerSom()  // O método sobreposto é chamado
}

// 12. Encapsulamento
// Usando modificadores de acesso para proteger dados.

fun exemploEncapsulamento() {
    class ContaBancaria {
        private var saldo = 0  // Atributo privado

        fun depositar(valor: Int) {
            if (valor > 0) {
                saldo += valor
            }
        }

        fun getSaldo(): Int {
            return saldo  // Acesso ao saldo através de um método público
        }
    }

    val conta = ContaBancaria()
    conta.depositar(500)
    println("Saldo da conta: ${conta.getSaldo()}")
}

// 13. Exceções
// Tratamento de erros durante a execução do programa.

fun exemploExcecao() {
    try {
        val resultado = 10 / 0  // Divisão por zero
    } catch (e: ArithmeticException) {
        println("Erro: ${e.message}")
    }
}

// 14. Trabalhando com ArrayList
// O ArrayList é uma coleção que pode crescer dinamicamente.

fun exemploArrayList() {
    val lista = arrayListOf("Java", "Python", "C++")

    println("Tamanho da lista: ${lista.size}")  // Exibe o tamanho da lista
    println("Primeiro item: ${lista[0]}")      // Acessa o primeiro item da lista
}
