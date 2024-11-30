// 1. Variáveis e Tipos de Dados
// Variáveis são como "caixas" onde armazenamos informações. Cada caixa tem um tipo específico.

public class Exemplo {
    public static void main(String[] args) {
        // Tipos de dados básicos
        int idade = 25;            // Tipo inteiro: armazena números inteiros
        double altura = 1.75;      // Tipo ponto flutuante: armazena números com casas decimais
        String nome = "João";      // Tipo texto (String): armazena uma sequência de caracteres
        boolean estudante = true;  // Tipo lógico (booleano): armazena verdadeiro ou falso

        System.out.println("Idade: " + idade);
        System.out.println("Altura: " + altura);
        System.out.println("Nome: " + nome);
        System.out.println("Estudante: " + estudante);
    }
}

// 2. Operadores
// Operadores aritméticos, de comparação e lógicos.

// Operadores Aritméticos
int soma = 10 + 5;  // Adição
int resto = 10 % 3; // Módulo (resto da divisão)
System.out.println("Soma: " + soma); 
System.out.println("Resto: " + resto);

// Operadores de Comparação
boolean resultado = 10 > 5; // Verifica se 10 é maior que 5
boolean iguais = 5 == 5;    // Verifica se 5 é igual a 5
System.out.println("10 > 5: " + resultado);
System.out.println("5 == 5: " + iguais);

// Operadores Lógicos
boolean eCondicao = (10 > 5) && (5 < 10);  // 'E' lógico: ambas as condições precisam ser verdadeiras
boolean ouCondicao = (10 > 5) || (5 > 10); // 'OU' lógico: uma das condições precisa ser verdadeira
System.out.println("Condição E: " + eCondicao);
System.out.println("Condição OU: " + ouCondicao);

// 3. Estruturas Condicionais
// Condições para tomar decisões no programa.

int idadePessoa = 20;
if (idadePessoa >= 18) {
    System.out.println("Você é maior de idade.");
} else {
    System.out.println("Você é menor de idade.");
}

// Switch Case: alternativa ao if-else quando temos várias condições possíveis
int numero = 2;
switch (numero) {
    case 1:
        System.out.println("É um");
        break;
    case 2:
        System.out.println("É dois");
        break;
    default:
        System.out.println("Outro número");
}

// 4. Laços de Repetição (Loops)
// Usados quando queremos repetir um bloco de código várias vezes.

for (int i = 1; i <= 5; i++) { 
    System.out.println(i);  // Vai imprimir 1, 2, 3, 4, 5
}

int j = 1;
while (j <= 5) {
    System.out.println(j);  // Vai imprimir 1, 2, 3, 4, 5
    j++;  // Incrementa o valor de j
}

int k = 1;
do {
    System.out.println(k);  // Vai imprimir 1, 2, 3, 4, 5
    k++;
} while (k <= 5);

// 5. Funções (Métodos)
// Funções são usadas para organizar e reutilizar blocos de código.

public static void saudacao() {
    System.out.println("Olá, seja bem-vindo!");
}

public static int soma(int a, int b) {
    return a + b;  // Retorna a soma dos dois números
}

public static void main(String[] args) {
    saudacao();  // Chama a função saudacao
    int resultadoSoma = soma(5, 3);  // Chama a função soma
    System.out.println("Resultado da soma: " + resultadoSoma);
}

// 6. Entrada e Saída de Dados
// Usado para interagir com o usuário, capturando entradas e exibindo saídas.

import java.util.Scanner;

public static void entradaSaida() {
    Scanner scanner = new Scanner(System.in);
    System.out.print("Digite seu nome: ");
    String nome = scanner.nextLine();  // Captura o nome do usuário
    System.out.println("Olá, " + nome);
}

// 7. Manipulação de Strings
// Strings são sequências de caracteres, úteis para trabalhar com texto.

public static void manipulacaoStrings() {
    String nome = "João";
    String saudacao = "Olá, " + nome + "!";  // Concatenando strings
    System.out.println(saudacao);  // Exibe: Olá, João!

    String palavra = "programação";
    int tamanho = palavra.length();  // Verifica o tamanho da string
    boolean contem = palavra.contains("grama");  // Verifica se a palavra contém "grama"
    System.out.println("Tamanho da palavra: " + tamanho);
    System.out.println("Contém 'grama': " + contem);
}

// 8. Arrays
// Arrays são usados para armazenar múltiplos valores do mesmo tipo em uma única variável.

public static void exemploArrays() {
    int[] numeros = {1, 2, 3, 4, 5};  // Declaração e inicialização de um array
    System.out.println("Primeiro número: " + numeros[0]);  // Acessa o primeiro valor
    System.out.println("Último número: " + numeros[numeros.length - 1]);  // Acessa o último valor
}

// 9. Classe e Objetos
// Criando uma classe e instanciando objetos dela.

class Pessoa {
    String nome;
    int idade;

    public Pessoa(String nome, int idade) {
        this.nome = nome;
        this.idade = idade;
    }

    public void apresentar() {
        System.out.println("Olá, meu nome é " + nome + " e tenho " + idade + " anos.");
    }
}

public static void exemploClasseObjetos() {
    Pessoa pessoa1 = new Pessoa("Nico", 30);  // Criação de um objeto da classe Pessoa
    pessoa1.apresentar();  // Chamada do método
}

// 10. Conceito de `this`
// O `this` é usado para referir-se ao objeto atual dentro de um método da classe.

public static void exemploThis() {
    class Carro {
        String modelo;

        public Carro(String modelo) {
            this.modelo = modelo;  // 'this' faz referência ao atributo da classe
        }

        public void mostrarModelo() {
            System.out.println("Modelo do carro: " + this.modelo);
        }
    }

    Carro carro = new Carro("Fusca");
    carro.mostrarModelo();  // Exibe: Modelo do carro: Fusca
}

// 11. Herança
// Criando uma classe filha que herda de uma classe pai.

class Animal {
    String nome;

    public void fazerSom() {
        System.out.println("O animal faz um som.");
    }
}

class Cachorro extends Animal {
    public void fazerSom() {
        System.out.println("O cachorro late.");
    }
}

public static void exemploHeranca() {
    Cachorro cachorro = new Cachorro();
    cachorro.fazerSom();  // O método sobreposto é chamado
}

// 12. Encapsulamento
// Usando modificadores de acesso para proteger dados.

public static void exemploEncapsulamento() {
    class ContaBancaria {
        private double saldo;  // Atributo privado

        public void depositar(double valor) {
            if (valor > 0) {
                saldo += valor;
            }
        }

        public double getSaldo() {
            return saldo;  // Acesso ao saldo através de um método público
        }
    }

    ContaBancaria conta = new ContaBancaria();
    conta.depositar(500);
    System.out.println("Saldo da conta: " + conta.getSaldo());
}

// 13. Exceções
// Tratamento de erros durante a execução do programa.

public static void exemploExcecao() {
    try {
        int resultado = 10 / 0;  // Divisão por zero
    } catch (ArithmeticException e) {
        System.out.println("Erro: " + e.getMessage());
    }
}

// 14. Trabalhando com `ArrayList`
// O ArrayList é uma coleção que pode crescer dinamicamente.

import java.util.ArrayList;

public static void exemploArrayList() {
    ArrayList<String> lista = new ArrayList<>();
    lista.add("Java");
    lista.add("Python");
    lista.add("C++");

    System.out.println("Tamanho da lista: " + lista.size());  // Exibe o tamanho da lista
    System.out.println("Primeiro item: " + lista.get(0));  // Acessa o primeiro item da lista
}
