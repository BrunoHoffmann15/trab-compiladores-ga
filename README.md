# Trabalho Compiladores

Alunos: Bruno Hoffmann e Rafael Klauck

## Como Executar

1. Inicialmente rode o comando `./dependencies/jflex/bin/jflex main.jflex`. Após um arquivo `FoolLexer.java` será gerado. Notas: Se caso você já possuir o jflex instalado, pode executar diretamente o `jflex main.flex`.

2. Em seguida, execute o comando `javac FoolLexer.java`, que irá compilar a classe Java gerada. O arquivo `FoolLexer.class` será gerado.

3. Execute ele rodando com comando `java FoolLexer input.txt`, onde o `input.txt` é o código que se deseja analisar. 

### Exemplo de output

Abaixo é um exemplo de output para o código presente no arquivo `input.txt`:

```txt
Token "class" adicionado na tabela de tokens na posição 0 como classe: PALAVRA_RESERVADA
Token "Teste" adicionado na tabela de tokens na posição 1 como classe: IDENTIFICADOR
Token "{" adicionado na tabela de tokens na posição 2 como classe: DELIMITADOR
Token "int" adicionado na tabela de tokens na posição 3 como classe: PALAVRA_RESERVADA
Token "num1" adicionado na tabela de tokens na posição 4 como classe: IDENTIFICADOR
Token ";" adicionado na tabela de tokens na posição 5 como classe: DELIMITADOR
Token "int" adicionado na tabela de tokens na posição 6 como classe: PALAVRA_RESERVADA
Token "num2" adicionado na tabela de tokens na posição 7 como classe: IDENTIFICADOR
Token ";" adicionado na tabela de tokens na posição 8 como classe: DELIMITADOR
Token "int" adicionado na tabela de tokens na posição 9 como classe: PALAVRA_RESERVADA
Token "retornaMaior" adicionado na tabela de tokens na posição 10 como classe: IDENTIFICADOR
Token "(" adicionado na tabela de tokens na posição 11 como classe: DELIMITADOR
Token "int" adicionado na tabela de tokens na posição 12 como classe: PALAVRA_RESERVADA
Token "a" adicionado na tabela de tokens na posição 13 como classe: IDENTIFICADOR
Token "," adicionado na tabela de tokens na posição 14 como classe: DELIMITADOR
Token "int" adicionado na tabela de tokens na posição 15 como classe: PALAVRA_RESERVADA
Token "b" adicionado na tabela de tokens na posição 16 como classe: IDENTIFICADOR
Token ")" adicionado na tabela de tokens na posição 17 como classe: DELIMITADOR
Token "{" adicionado na tabela de tokens na posição 18 como classe: DELIMITADOR
Token "if" adicionado na tabela de tokens na posição 19 como classe: PALAVRA_RESERVADA
Token "(" adicionado na tabela de tokens na posição 20 como classe: DELIMITADOR
Token "a" adicionado na tabela de tokens na posição 21 como classe: IDENTIFICADOR
Token ">" adicionado na tabela de tokens na posição 22 como classe: OPERADOR
Token "b" adicionado na tabela de tokens na posição 23 como classe: IDENTIFICADOR
Token ")" adicionado na tabela de tokens na posição 24 como classe: DELIMITADOR
Token "{" adicionado na tabela de tokens na posição 25 como classe: DELIMITADOR
Token "return" adicionado na tabela de tokens na posição 26 como classe: PALAVRA_RESERVADA
Token "a" adicionado na tabela de tokens na posição 27 como classe: IDENTIFICADOR
Token ";" adicionado na tabela de tokens na posição 28 como classe: DELIMITADOR
Token "}" adicionado na tabela de tokens na posição 29 como classe: DELIMITADOR
Token "else" adicionado na tabela de tokens na posição 30 como classe: PALAVRA_RESERVADA
Token "{" adicionado na tabela de tokens na posição 31 como classe: DELIMITADOR
Token "return" adicionado na tabela de tokens na posição 32 como classe: PALAVRA_RESERVADA
Token "b" adicionado na tabela de tokens na posição 33 como classe: IDENTIFICADOR
Token ";" adicionado na tabela de tokens na posição 34 como classe: DELIMITADOR
Token "}" adicionado na tabela de tokens na posição 35 como classe: DELIMITADOR
Token "}" adicionado na tabela de tokens na posição 36 como classe: DELIMITADOR
Token "bool" adicionado na tabela de tokens na posição 37 como classe: PALAVRA_RESERVADA
Token "verificaSeIguais" adicionado na tabela de tokens na posição 38 como classe: IDENTIFICADOR
Token "(" adicionado na tabela de tokens na posição 39 como classe: DELIMITADOR
Token "int" adicionado na tabela de tokens na posição 40 como classe: PALAVRA_RESERVADA
Token "a" adicionado na tabela de tokens na posição 41 como classe: IDENTIFICADOR
Token "," adicionado na tabela de tokens na posição 42 como classe: DELIMITADOR
Token "int" adicionado na tabela de tokens na posição 43 como classe: PALAVRA_RESERVADA
Token "b" adicionado na tabela de tokens na posição 44 como classe: IDENTIFICADOR
Token ")" adicionado na tabela de tokens na posição 45 como classe: DELIMITADOR
Token "{" adicionado na tabela de tokens na posição 46 como classe: DELIMITADOR
Token "return" adicionado na tabela de tokens na posição 47 como classe: PALAVRA_RESERVADA
Token "a" adicionado na tabela de tokens na posição 48 como classe: IDENTIFICADOR
Token "==" adicionado na tabela de tokens na posição 49 como classe: OPERADOR
Token "b" adicionado na tabela de tokens na posição 50 como classe: IDENTIFICADOR
Token ";" adicionado na tabela de tokens na posição 51 como classe: DELIMITADOR
Token "}" adicionado na tabela de tokens na posição 52 como classe: DELIMITADOR
Token "int" adicionado na tabela de tokens na posição 53 como classe: PALAVRA_RESERVADA
Token "main" adicionado na tabela de tokens na posição 54 como classe: IDENTIFICADOR
Token "(" adicionado na tabela de tokens na posição 55 como classe: DELIMITADOR
Token ")" adicionado na tabela de tokens na posição 56 como classe: DELIMITADOR
Token "{" adicionado na tabela de tokens na posição 57 como classe: DELIMITADOR
Token "num1" adicionado na tabela de tokens na posição 58 como classe: IDENTIFICADOR
Token "=" adicionado na tabela de tokens na posição 59 como classe: OPERADOR
Token "10" adicionado na tabela de tokens na posição 60 como classe: LITERAL
Token ";" adicionado na tabela de tokens na posição 61 como classe: DELIMITADOR
Token "num2" adicionado na tabela de tokens na posição 62 como classe: IDENTIFICADOR
Token "=" adicionado na tabela de tokens na posição 63 como classe: OPERADOR
Token "20" adicionado na tabela de tokens na posição 64 como classe: LITERAL
Token ";" adicionado na tabela de tokens na posição 65 como classe: DELIMITADOR
Token "int" adicionado na tabela de tokens na posição 66 como classe: PALAVRA_RESERVADA
Token "resultado" adicionado na tabela de tokens na posição 67 como classe: IDENTIFICADOR
Token "=" adicionado na tabela de tokens na posição 68 como classe: OPERADOR
Token "1" adicionado na tabela de tokens na posição 69 como classe: LITERAL
Caracter desconhecido: @ na linha 27
Token "3" adicionado na tabela de tokens na posição 70 como classe: LITERAL
Token ";" adicionado na tabela de tokens na posição 71 como classe: DELIMITADOR
Token "int" adicionado na tabela de tokens na posição 72 como classe: PALAVRA_RESERVADA
Token "maior" adicionado na tabela de tokens na posição 73 como classe: IDENTIFICADOR
Token "=" adicionado na tabela de tokens na posição 74 como classe: OPERADOR
Token "retornaMaior" adicionado na tabela de tokens na posição 75 como classe: IDENTIFICADOR
Token "(" adicionado na tabela de tokens na posição 76 como classe: DELIMITADOR
Token "num1" adicionado na tabela de tokens na posição 77 como classe: IDENTIFICADOR
Token "," adicionado na tabela de tokens na posição 78 como classe: DELIMITADOR
Token "num2" adicionado na tabela de tokens na posição 79 como classe: IDENTIFICADOR
Token ")" adicionado na tabela de tokens na posição 80 como classe: DELIMITADOR
Token ";" adicionado na tabela de tokens na posição 81 como classe: DELIMITADOR
Token "bool" adicionado na tabela de tokens na posição 82 como classe: PALAVRA_RESERVADA
Token "iguais" adicionado na tabela de tokens na posição 83 como classe: IDENTIFICADOR
Token "=" adicionado na tabela de tokens na posição 84 como classe: OPERADOR
Token "verificaSeIguais" adicionado na tabela de tokens na posição 85 como classe: IDENTIFICADOR
Token "(" adicionado na tabela de tokens na posição 86 como classe: DELIMITADOR
Token "num1" adicionado na tabela de tokens na posição 87 como classe: IDENTIFICADOR
Token "," adicionado na tabela de tokens na posição 88 como classe: DELIMITADOR
Token "num2" adicionado na tabela de tokens na posição 89 como classe: IDENTIFICADOR
Token ")" adicionado na tabela de tokens na posição 90 como classe: DELIMITADOR
Token ";" adicionado na tabela de tokens na posição 91 como classe: DELIMITADOR
Token "if" adicionado na tabela de tokens na posição 92 como classe: PALAVRA_RESERVADA
Token "(" adicionado na tabela de tokens na posição 93 como classe: DELIMITADOR
Token "iguais" adicionado na tabela de tokens na posição 94 como classe: IDENTIFICADOR
Token "==" adicionado na tabela de tokens na posição 95 como classe: OPERADOR
Token "true" adicionado na tabela de tokens na posição 96 como classe: LITERAL
Token ")" adicionado na tabela de tokens na posição 97 como classe: DELIMITADOR
Token "{" adicionado na tabela de tokens na posição 98 como classe: DELIMITADOR
Token "return" adicionado na tabela de tokens na posição 99 como classe: PALAVRA_RESERVADA
Token "num1" adicionado na tabela de tokens na posição 100 como classe: IDENTIFICADOR
Token "*" adicionado na tabela de tokens na posição 101 como classe: OPERADOR
Token "num2" adicionado na tabela de tokens na posição 102 como classe: IDENTIFICADOR
Token "}" adicionado na tabela de tokens na posição 103 como classe: DELIMITADOR
Token "else" adicionado na tabela de tokens na posição 104 como classe: PALAVRA_RESERVADA
Token "{" adicionado na tabela de tokens na posição 105 como classe: DELIMITADOR
Token "if" adicionado na tabela de tokens na posição 106 como classe: PALAVRA_RESERVADA
Token "(" adicionado na tabela de tokens na posição 107 como classe: DELIMITADOR
Token "num1" adicionado na tabela de tokens na posição 108 como classe: IDENTIFICADOR
Token ">" adicionado na tabela de tokens na posição 109 como classe: OPERADOR
Token "num2" adicionado na tabela de tokens na posição 110 como classe: IDENTIFICADOR
Token ")" adicionado na tabela de tokens na posição 111 como classe: DELIMITADOR
Token "{" adicionado na tabela de tokens na posição 112 como classe: DELIMITADOR
Token "return" adicionado na tabela de tokens na posição 113 como classe: PALAVRA_RESERVADA
Token "num1" adicionado na tabela de tokens na posição 114 como classe: IDENTIFICADOR
Token "+" adicionado na tabela de tokens na posição 115 como classe: OPERADOR
Token "num2" adicionado na tabela de tokens na posição 116 como classe: IDENTIFICADOR
Token ";" adicionado na tabela de tokens na posição 117 como classe: DELIMITADOR
Token "}" adicionado na tabela de tokens na posição 118 como classe: DELIMITADOR
Token "else" adicionado na tabela de tokens na posição 119 como classe: PALAVRA_RESERVADA
Token "{" adicionado na tabela de tokens na posição 120 como classe: DELIMITADOR
Token "return" adicionado na tabela de tokens na posição 121 como classe: PALAVRA_RESERVADA
Token "num2" adicionado na tabela de tokens na posição 122 como classe: IDENTIFICADOR
Token ";" adicionado na tabela de tokens na posição 123 como classe: DELIMITADOR
Token "}" adicionado na tabela de tokens na posição 124 como classe: DELIMITADOR
Token "}" adicionado na tabela de tokens na posição 125 como classe: DELIMITADOR
Token "}" adicionado na tabela de tokens na posição 126 como classe: DELIMITADOR
Token "}" adicionado na tabela de tokens na posição 127 como classe: DELIMITADOR
```

## Link do Github

https://github.com/BrunoHoffmann15/trab-compiladores-ga