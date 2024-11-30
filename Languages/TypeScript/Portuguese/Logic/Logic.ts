// 1. Variáveis e Tipos de Dados
// Variáveis são como "caixas" onde armazenamos informações. Cada caixa tem um tipo específico.

let idade: number = 25;            // Tipo inteiro: armazena números inteiros
let altura: number = 1.75;         // Tipo ponto flutuante: armazena números com casas decimais
let nome: string = "João";         // Tipo texto (String): armazena uma sequência de caracteres
let estudante: boolean = true;     // Tipo lógico (booleano): armazena verdadeiro ou falso

console.log("Idade: " + idade);
console.log("Altura: " + altura);
console.log("Nome: " + nome);
console.log("Estudante: " + estudante);

// 2. Operadores
// Operadores aritméticos, de comparação e lógicos.

// Operadores Aritméticos
let soma: number = 10 + 5;  // Adição
let resto: number = 10 % 3; // Módulo (resto da divisão)
console.log("Soma: " + soma); 
console.log("Resto: " + resto);

// Operadores de Comparação
let resultado: boolean = 10 > 5; // Verifica se 10 é maior que 5
let iguais: boolean = 5 == 5;    // Verifica se 5 é igual a 5
console.log("10 > 5: " + resultado);
console.log("5 == 5: " + iguais);

// Operadores Lógicos
let eCondicao: boolean = (10 > 5) && (5 < 10);  // 'E' lógico: ambas as condições precisam ser verdadeiras
let ouCondicao: boolean = (10 > 5) || (5 > 10); // 'OU' lógico: uma das condições precisa ser verdadeira
console.log("Condição E: " + eCondicao);
console.log("Condição OU: " + ouCondicao);

// 3. Estruturas Condicionais
// Condições para tomar decisões no programa.

let idadePessoa: number = 20;
if (idadePessoa >= 18) {
    console.log("Você é maior de idade.");
} else {
    console.log("Você é menor de idade.");
}

// Switch Case: alternativa ao if-else quando temos várias condições possíveis
let numero: number = 2;
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

for (let i: number = 1; i <= 5; i++) { 
    console.log(i);  // Vai imprimir 1, 2, 3, 4, 5
}

let j: number = 1;
while (j <= 5) {
    console.log(j);  // Vai imprimir 1, 2, 3, 4, 5
    j++;  // Incrementa o valor de j
}

let k: number = 1;
do {
    console.log(k);  // Vai imprimir 1, 2, 3, 4, 5
    k++;
} while (k <= 5);

// 5. Funções (Métodos)
// Funções são usadas para organizar e reutilizar blocos de código.

function saudacao(): void {
    console.log("Olá, seja bem-vindo!");
}

function soma(a: number, b: number): number {
    return a + b;  // Retorna a soma dos dois números
}

saudacao();  // Chama a função saudacao
let resultadoSoma: number = soma(5, 3);  // Chama a função soma
console.log("Resultado da soma: " + resultadoSoma);

// 6. Entrada e Saída de Dados
// Usado para interagir com o usuário, capturando entradas e exibindo saídas.

function entradaSaida(): void {
    let nome: string = prompt("Digite seu nome: ");  // Captura o nome do usuário
    console.log("Olá, " + nome);
}

// 7. Manipulação de Strings
// Strings são sequências de caracteres, úteis para trabalhar com texto.

function manipulacaoStrings(): void {
    let nome: string = "João";
    let saudacao: string = "Olá, " + nome + "!";  // Concatenando strings
    console.log(saudacao);  // Exibe: Olá, João!

    let palavra: string = "programação";
    let tamanho: number = palavra.length;  // Verifica o tamanho da string
    let contem: boolean = palavra.includes("grama");  // Verifica se a palavra contém "grama"
    console.log("Tamanho da palavra: " + tamanho);
    console.log("Contém 'grama': " + contem);
}

// 8. Arrays
// Arrays são usados para armazenar múltiplos valores do mesmo tipo em uma única variável.

function exemploArrays(): void {
    let numeros: number[] = [1, 2, 3, 4, 5];  // Declaração e inicialização de um array
    console.log("Primeiro número: " + numeros[0]);  // Acessa o primeiro valor
    console.log("Último número: " + numeros[numeros.length - 1]);  // Acessa o último valor
}

// 9. Classe e Objetos
// Criando uma classe e instanciando objetos dela.

class Pessoa {
    nome: string;
    idade: number;

    constructor(nome: string, idade: number) {
        this.nome = nome;
        this.idade = idade;
    }

    apresentar(): void {
        console.log("Olá, meu nome é " + this.nome + " e tenho " + this.idade + " anos.");
    }
}

function exemploClasseObjetos(): void {
    let pessoa1: Pessoa = new Pessoa("Nico", 30);  // Criação de um objeto da classe Pessoa
    pessoa1.apresentar();  // Chamada do método
}

// 10. Conceito de `this`
// O `this` é usado para referir-se ao objeto atual dentro de um método da classe.

function exemploThis(): void {
    class Carro {
        modelo: string;

        constructor(modelo: string) {
            this.modelo = modelo;  // 'this' faz referência ao atributo da classe
        }

        mostrarModelo(): void {
            console.log("Modelo do carro: " + this.modelo);
        }
    }

    let carro: Carro = new Carro("Fusca");
    carro.mostrarModelo();  // Exibe: Modelo do carro: Fusca
}

// 11. Herança
// Criando uma classe filha que herda de uma classe pai.

class Animal {
    nome: string;

    constructor(nome: string) {
        this.nome = nome;
    }

    fazerSom(): void {
        console.log("O animal faz um som.");
    }
}

class Cachorro extends Animal {
    fazerSom(): void {
        console.log("O cachorro late.");
    }
}

function exemploHeranca(): void {
    let cachorro: Cachorro = new Cachorro("Rex");
    cachorro.fazerSom();  // O método sobreposto é chamado
}

// 12. Encapsulamento
// Usando modificadores de acesso para proteger dados.

function exemploEncapsulamento(): void {
    class ContaBancaria {
        #saldo: number;  // Atributo privado

        constructor() {
            this.#saldo = 0;
        }

        depositar(valor: number): void {
            if (valor > 0) {
                this.#saldo += valor;
            }
        }

        getSaldo(): number {
            return this.#saldo;  // Acesso ao saldo através de um método público
        }
    }

    let conta: ContaBancaria = new ContaBancaria();
    conta.depositar(500);
    console.log("Saldo da conta: " + conta.getSaldo());
}

// 13. Exceções
// Tratamento de erros durante a execução do programa.

function exemploExcecao(): void {
    try {
        let resultado: number = 10 / 0;  // Divisão por zero
    } catch (e) {
        console.log("Erro: " + e.message);
    }
}

// 14. Trabalhando com `ArrayList`
// O ArrayList é uma coleção que pode crescer dinamicamente.

function exemploArrayList(): void {
    let lista: string[] = ["Java", "Python", "C++"];

    console.log("Tamanho da lista: " + lista.length);  // Exibe o tamanho da lista
    console.log("Primeiro item: " + lista[0]);  // Acessa o primeiro item da lista
}
