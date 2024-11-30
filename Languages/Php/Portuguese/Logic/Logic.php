<?php

// 1. Variáveis e Tipos de Dados
// Variáveis são como "caixas" onde armazenamos informações. Cada caixa tem um tipo específico.

$idade = 25;            // Tipo inteiro: armazena números inteiros
$altura = 1.75;         // Tipo ponto flutuante: armazena números com casas decimais
$nome = "João";         // Tipo texto (String): armazena uma sequência de caracteres
$estudante = true;      // Tipo lógico (booleano): armazena verdadeiro ou falso

echo "Idade: " . $idade . "\n";
echo "Altura: " . $altura . "\n";
echo "Nome: " . $nome . "\n";
echo "Estudante: " . ($estudante ? "Sim" : "Não") . "\n";

// 2. Operadores
// Operadores aritméticos, de comparação e lógicos.

// Operadores Aritméticos
$soma = 10 + 5;  // Adição
$resto = 10 % 3; // Módulo (resto da divisão)
echo "Soma: " . $soma . "\n"; 
echo "Resto: " . $resto . "\n";

// Operadores de Comparação
$resultado = 10 > 5; // Verifica se 10 é maior que 5
$iguais = 5 == 5;    // Verifica se 5 é igual a 5
echo "10 > 5: " . ($resultado ? "Verdadeiro" : "Falso") . "\n";
echo "5 == 5: " . ($iguais ? "Verdadeiro" : "Falso") . "\n";

// Operadores Lógicos
$eCondicao = (10 > 5) && (5 < 10);  // 'E' lógico: ambas as condições precisam ser verdadeiras
$ouCondicao = (10 > 5) || (5 > 10); // 'OU' lógico: uma das condições precisa ser verdadeira
echo "Condição E: " . ($eCondicao ? "Verdadeiro" : "Falso") . "\n";
echo "Condição OU: " . ($ouCondicao ? "Verdadeiro" : "Falso") . "\n";

// 3. Estruturas Condicionais
// Condições para tomar decisões no programa.

$idadePessoa = 20;
if ($idadePessoa >= 18) {
    echo "Você é maior de idade.\n";
} else {
    echo "Você é menor de idade.\n";
}

// Switch Case: alternativa ao if-else quando temos várias condições possíveis
$numero = 2;
switch ($numero) {
    case 1:
        echo "É um\n";
        break;
    case 2:
        echo "É dois\n";
        break;
    default:
        echo "Outro número\n";
}

// 4. Laços de Repetição (Loops)
// Usados quando queremos repetir um bloco de código várias vezes.

for ($i = 1; $i <= 5; $i++) { 
    echo $i . "\n";  // Vai imprimir 1, 2, 3, 4, 5
}

$j = 1;
while ($j <= 5) {
    echo $j . "\n";  // Vai imprimir 1, 2, 3, 4, 5
    $j++;  // Incrementa o valor de j
}

$k = 1;
do {
    echo $k . "\n";  // Vai imprimir 1, 2, 3, 4, 5
    $k++;
} while ($k <= 5);

// 5. Funções (Métodos)
// Funções são usadas para organizar e reutilizar blocos de código.

function saudacao() {
    echo "Olá, seja bem-vindo!\n";
}

function soma($a, $b) {
    return $a + $b;  // Retorna a soma dos dois números
}

saudacao();  // Chama a função saudacao
$resultadoSoma = soma(5, 3);  // Chama a função soma
echo "Resultado da soma: " . $resultadoSoma . "\n";

// 6. Entrada e Saída de Dados
// Usado para interagir com o usuário, capturando entradas e exibindo saídas.

function entradaSaida() {
    $nome = readline("Digite seu nome: ");  // Captura o nome do usuário
    echo "Olá, " . $nome . "\n";
}

// 7. Manipulação de Strings
// Strings são sequências de caracteres, úteis para trabalhar com texto.

function manipulacaoStrings() {
    $nome = "João";
    $saudacao = "Olá, " . $nome . "!";  // Concatenando strings
    echo $saudacao . "\n";  // Exibe: Olá, João!

    $palavra = "programação";
    $tamanho = strlen($palavra);  // Verifica o tamanho da string
    $contem = strpos($palavra, "grama") !== false;  // Verifica se a palavra contém "grama"
    echo "Tamanho da palavra: " . $tamanho . "\n";
    echo "Contém 'grama': " . ($contem ? "Sim" : "Não") . "\n";
}

// 8. Arrays
// Arrays são usados para armazenar múltiplos valores do mesmo tipo em uma única variável.

function exemploArrays() {
    $numeros = [1, 2, 3, 4, 5];  // Declaração e inicialização de um array
    echo "Primeiro número: " . $numeros[0] . "\n";  // Acessa o primeiro valor
    echo "Último número: " . $numeros[count($numeros) - 1] . "\n";  // Acessa o último valor
}

// 9. Classe e Objetos
// Criando uma classe e instanciando objetos dela.

class Pessoa {
    public $nome;
    public $idade;

    function __construct($nome, $idade) {
        $this->nome = $nome;
        $this->idade = $idade;
    }

    function apresentar() {
        echo "Olá, meu nome é " . $this->nome . " e tenho " . $this->idade . " anos.\n";
    }
}

function exemploClasseObjetos() {
    $pessoa1 = new Pessoa("Nico", 30);  // Criação de um objeto da classe Pessoa
    $pessoa1->apresentar();  // Chamada do método
}

// 10. Conceito de `this`
// O `this` é usado para referir-se ao objeto atual dentro de um método da classe.

function exemploThis() {
    class Carro {
        public $modelo;

        function __construct($modelo) {
            $this->modelo = $modelo;  // 'this' faz referência ao atributo da classe
        }

        function mostrarModelo() {
            echo "Modelo do carro: " . $this->modelo . "\n";
        }
    }

    $carro = new Carro("Fusca");
    $carro->mostrarModelo();  // Exibe: Modelo do carro: Fusca
}

// 11. Herança
// Criando uma classe filha que herda de uma classe pai.

class Animal {
    public $nome;

    function __construct($nome) {
        $this->nome = $nome;
    }

    function fazerSom() {
        echo "O animal faz um som.\n";
    }
}

class Cachorro extends Animal {
    function fazerSom() {
        echo "O cachorro late.\n";
    }
}

function exemploHeranca() {
    $cachorro = new Cachorro("Rex");
    $cachorro->fazerSom();  // O método sobreposto é chamado
}

// 12. Encapsulamento
// Usando modificadores de acesso para proteger dados.

function exemploEncapsulamento() {
    class ContaBancaria {
        private $saldo;  // Atributo privado

        function __construct() {
            $this->saldo = 0;
        }

        function depositar($valor) {
            if ($valor > 0) {
                $this->saldo += $valor;
            }
        }

        function getSaldo() {
            return $this->saldo;  // Acesso ao saldo através de um método público
        }
    }

    $conta = new ContaBancaria();
    $conta->depositar(500);
    echo "Saldo da conta: " . $conta->getSaldo() . "\n";
}

// 13. Exceções
// Tratamento de erros durante a execução do programa.

function exemploExcecao() {
    try {
        $resultado = 10 / 0;  // Divisão por zero
    } catch (Exception $e) {
        echo "Erro: " . $e->getMessage() . "\n";
    }
}

// 14. Trabalhando com `ArrayList`
// O ArrayList é uma coleção que pode crescer dinamicamente.

function exemploArrayList() {
    $lista = ["Java", "Python", "C++"];

    echo "Tamanho da lista: " . count($lista) . "\n";  // Exibe o tamanho da lista
    echo "Primeiro item: " . $lista[0] . "\n";  // Acessa o primeiro item da lista
}

?>
