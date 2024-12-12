# 1. Variáveis e Tipos de Dados
# Definição de variáveis em Nix

let
  idade = 25;
  altura = 1.75;
  nome = "João";
  estudante = true;

in
  # A Nix não possui `console.log`, mas podemos retornar valores.
  "Idade: ${idade}, Altura: ${altura}, Nome: ${nome}, Estudante: ${estudante}"

# 2. Operadores
# A Nix permite operadores aritméticos básicos como adição e módulo.

let
  soma = 10 + 5;
  resto = 10 % 3;
in
  "Soma: ${soma}, Resto: ${resto}"

# 3. Condicionais
# Nix usa if-then-else para condicionais

let
  idadePessoa = 20;
  condicao = if idadePessoa >= 18 then "Você é maior de idade." else "Você é menor de idade.";
in
  condicao

# 4. Funções
# Definição de funções em Nix

let
  saudacao = "Olá, seja bem-vindo!";
  soma = a: b: a + b;  # Função para somar dois valores
in
  {
    saudacao = saudacao;
    resultadoSoma = soma 5 3;
  }

# 5. Manipulação de Strings
# Nix pode manipular strings de forma básica

let
  nome = "João";
  saudacao = "Olá, ${nome}!";
  palavra = "programação";
  tamanho = builtins.length palavra;
  contem = builtins.elem "grama" (builtins.splitString " " palavra);  # Verifica se "grama" está na palavra
in
  {
    saudacao = saudacao;
    tamanho = tamanho;
    contem = contem;
  }

# 6. Arrays
# Em Nix, os arrays são listas

let
  numeros = [1 2 3 4 5];
in
  {
    primeiroNumero = head numeros;  # Acessa o primeiro número
    ultimoNumero = last numeros;  # Acessa o último número
  }

# 7. Objetos
# Em Nix, podemos simular objetos usando atributos em listas

let
  pessoa = {
    nome = "Nico";
    idade = 30;
  };
in
  "Olá, meu nome é ${pessoa.nome} e tenho ${pessoa.idade} anos."

# 8. Herança
# Nix não tem herança, mas podemos simular comportamentos usando funções e atributos

let
  Animal = { nome }: {
    nome = nome;
    fazerSom = "O animal faz um som.";
  };
  Cachorro = Animal // { fazerSom = "O cachorro late." };
in
  Cachorro.fazerSom

# 9. Exceções
# Nix não tem exceções explícitas como JavaScript, mas podemos usar `try` para capturar erros de forma limitada

let
  resultado = try (10 / 0) or "Erro na operação";
in
  resultado
