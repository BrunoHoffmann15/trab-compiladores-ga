/**
 * Este arquivo contém a especificação do analisador léxico da linguagem Fool.
 * Desenvolvido por Bruno Hoffmann e Rafael Klauck
 */

%%

%public
%class FoolLexer
%standalone

%{
  // Código Java que será inserido no início do arquivo gerado
  int line = 1;
%}

// Definição de tokens
CLASS = "class"
INT = "int"
BOOL = "bool"
VOID = "void"
IF = "if"
ELSE = "else"
RETURN = "return"
TRUE = "true"
FALSE = "false"
COMMA = ","
IDENTIFIER = [a-zA-Z_][a-zA-Z0-9_]*
NUMBER = [0-9]+
ATRIB = "="
PLUS = "+"
TIMES = "*"
EQUALS = "=="
LESS = "<"
GREATER = ">"
NOT = "!"
AND = "&&"
OR = "||"
SEMICOLON = ";"
LPAREN = "("
RPAREN = ")"
LBRACE = "{"
RBRACE = "}"

%%
// Definição de regras

// Ignora espaços, tabulações e quebras de linha, mas não aumenta o número da linha para espaços e tabulações
[ \t]+ { }

// Incrementa o número da linha para quebras de linha
\n { line++; }

// Ignora comentários de linha
\/\/[^\n]* {  }

// Ignora comentários de bloco e atualiza o número da linha corretamente
\/\*([^*]|\*+[^/*])*\*+\/ {
  String text = yytext();
  int newLines = text.length() - text.replace("\n", "").length();
  line += newLines;
}

// Definição de tokens
{CLASS} { }
{INT} { }
{BOOL} { }
{VOID} { }
{IF} { }
{ELSE} { }
{RETURN} {  }
{TRUE} { }
{FALSE} { }
{COMMA} { }
{IDENTIFIER} { }
{NUMBER} { }
{ATRIB} { }
{PLUS} { }
{TIMES} { }
{EQUALS} { }
{LESS} { }
{GREATER} { }
{NOT} { }
{AND} { }
{OR} { }
{SEMICOLON} { }
{LPAREN} { }
{RPAREN} { }
{LBRACE} { }
{RBRACE} { }

// Captura caracteres desconhecidos, passando o valor e a linha
. { System.out.println("Caracter desconhecido: " + yytext() + " na linha " + line);}
