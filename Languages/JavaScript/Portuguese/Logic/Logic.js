// 1. Variáveis e Tipos de Dados
// Variáveis são como "caixas" onde armazenamos informações. Cada caixa tem um tipo específico.

let idade = 25;            // Tipo inteiro: armazena números inteiros
let altura = 1.75;         // Tipo ponto flutuante: armazena números com casas decimais
let nome = "João";         // Tipo texto (String): armazena uma sequência de caracteres
let estudante = true;      // Tipo lógico (booleano): armazena verdadeiro ou falso

console.log("Idade: " + idade);
console.log("Altura: " + altura);
console.log("Nome: " + nome);
console.log("Estudante: " + estudante);

// 2. Operadores
// Operadores aritméticos, de comparação e lógicos.

// Operadores Aritméticos
let soma = 10 + 5;  // Adição
let resto = 10 % 3; // Módulo (resto da divisão)
console.log("Soma: " + soma); 
console.log("Resto: " + resto);

// Operadores de Comparação
let resultado = 10 > 5; // Verifica se 10 é maior que 5
let iguais = 5 == 5;    // Verifica se 5 é igual a 5
console.log("10 > 5: " + resultado);
console.log("5 == 5: " + iguais);

// Operadores Lógicos
let eCondicao = (10 > 5) && (5 < 10);  // 'E' lógico: ambas as condições precisam ser verdadeiras
let ouCondicao = (10 > 5) || (5 > 10); // 'OU' lógico: uma das condições precisa ser verdadeira
console.log("Condição E: " + eCondicao);
console.log("Condição OU: " + ouCondicao);

// 3. Estruturas Condicionais
// Condições para tomar decisões no programa.

let idadePessoa = 20;
if (idadePessoa >= 18) {
    console.log("Você é maior de idade.");
} else {
    console.log("Você é menor de idade.");
}

// Switch Case: alternativa ao if-else quando temos várias condições possíveis
let numero = 2;
switch (numero) {
    case 1:
        console.log("É um");
        break;
    case 2:
        console.log("É dois");
        break;
    default:
        console.log("Outro número");
}

// 4. Laços de Repetição (Loops)
// Usados quando queremos repetir um bloco de código várias vezes.

for (let i = 1; i <= 5; i++) { 
    console.log(i);  // Vai imprimir 1, 2, 3, 4, 5
}

let j = 1;
while (j <= 5) {
    console.log(j);  // Vai imprimir 1, 2, 3, 4, 5
    j++;  // Incrementa o valor de j
}

let k = 1;
do {
    console.log(k);  // Vai imprimir 1, 2, 3, 4, 5
    k++;
} while (k <= 5);

// 5. Funções (Métodos)
// Funções são usadas para organizar e reutilizar blocos de código.

function saudacao() {
    console.log("Olá, seja bem-vindo!");
}

function soma(a, b) {
    return a + b;  // Retorna a soma dos dois números
}

saudacao();  // Chama a função saudacao
let resultadoSoma = soma(5, 3);  // Chama a função soma
console.log("Resultado da soma: " + resultadoSoma);

// 6. Entrada e Saída de Dados
// Usado para interagir com o usuário, capturando entradas e exibindo saídas.

function entradaSaida() {
    let nome = prompt("Digite seu nome: ");  // Captura o nome do usuário
    console.log("Olá, " + nome);
}

// 7. Manipulação de Strings
// Strings são sequências de caracteres, úteis para trabalhar com texto.

function manipulacaoStrings() {
    let nome = "João";
    let saudacao = "Olá, " + nome + "!";  // Concatenando strings
    console.log(saudacao);  // Exibe: Olá, João!

    let palavra = "programação";
    let tamanho = palavra.length;  // Verifica o tamanho da string
    let contem = palavra.includes("grama");  // Verifica se a palavra contém "grama"
    console.log("Tamanho da palavra: " + tamanho);
    console.log("Contém 'grama': " + contem);
}

// 8. Arrays
// Arrays são usados para armazenar múltiplos valores do mesmo tipo em uma única variável.

function exemploArrays() {
    let numeros = [1, 2, 3, 4, 5];  // Declaração e inicialização de um array
    console.log("Primeiro número: " + numeros[0]);  // Acessa o primeiro valor
    console.log("Último número: " + numeros[numeros.length - 1]);  // Acessa o último valor
}

// 9. Classe e Objetos
// Criando uma classe e instanciando objetos dela.

class Pessoa {
    constructor(nome, idade) {
        this.nome = nome;
        this.idade = idade;
    }

    apresentar() {
        console.log("Olá, meu nome é " + this.nome + " e tenho " + this.idade + " anos.");
    }
}

function exemploClasseObjetos() {
    let pessoa1 = new Pessoa("Maria", 30);  // Criação de um objeto da classe Pessoa
    pessoa1.apresentar();  // Chamada do método
}

// 10. Conceito de `this`
// O `this` é usado para referir-se ao objeto atual dentro de um método da classe.

function exemploThis() {
    class Carro {
        constructor(modelo) {
            this.modelo = modelo;  // 'this' faz referência ao atributo da classe
        }

        mostrarModelo() {
            console.log("Modelo do carro: " + this.modelo);
        }
    }

    let carro = new Carro("Fusca");
    carro.mostrarModelo();  // Exibe: Modelo do carro: Fusca
}

// 11. Herança
// Criando uma classe filha que herda de uma classe pai.

class Animal {
    constructor(nome) {
        this.nome = nome;
    }

    fazerSom() {
        console.log("O animal faz um som.");
    }
}

class Cachorro extends Animal {
    fazerSom() {
        console.log("O cachorro late.");
    }
}

function exemploHeranca() {
    let cachorro = new Cachorro();
    cachorro.fazerSom();  // O método sobreposto é chamado
}

// 12. Encapsulamento
// Usando modificadores de acesso para proteger dados.

function exemploEncapsulamento() {
    class ContaBancaria {
        #saldo;  // Atributo privado

        constructor() {
            this.#saldo = 0;
        }

        depositar(valor) {
            if (valor > 0) {
                this.#saldo += valor;
            }
        }

        getSaldo() {
            return this.#saldo;  // Acesso ao saldo através de um método público
        }
    }

    let conta = new ContaBancaria();
    conta.depositar(500);
    console.log("Saldo da conta: " + conta.getSaldo());
}

// 13. Exceções
// Tratamento de erros durante a execução do programa.

function exemploExcecao() {
    try {
        let resultado = 10 / 0;  // Divisão por zero
    } catch (e) {
        console.log("Erro: " + e.message);
    }
}

// 14. Trabalhando com `ArrayList`
// O ArrayList é uma coleção que pode crescer dinamicamente.

function exemploArrayList() {
    let lista = ["Java", "Python", "C++"];

    console.log("Tamanho da lista: " + lista.length);  // Exibe o tamanho da lista
    console.log("Primeiro item: " + lista[0]);  // Acessa o primeiro item da lista
}
