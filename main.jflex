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
  int index = 0;

  // Tabela composta por:
  // index -> posição
  // | lexema | classe | atributo
  String [][] tabelaTokens = new String[10000][3];
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
{CLASS} { 
  tabelaTokens[index][0] = yytext();
  tabelaTokens[index][1] = "PALAVRA_RESERVADA";

  System.out.println("Token \"" + yytext() + "\" adicionado na tabela de tokens na posição " + index + " como classe: " + tabelaTokens[index][1]);
  index++;
}
{INT} { 
  tabelaTokens[index][0] = yytext();
  tabelaTokens[index][1] = "PALAVRA_RESERVADA";

  System.out.println("Token \"" + yytext() + "\" adicionado na tabela de tokens na posição " + index + " como classe: " + tabelaTokens[index][1]);
  index++;
}
{BOOL} { 
  tabelaTokens[index][0] = yytext();
  tabelaTokens[index][1] = "PALAVRA_RESERVADA";

  System.out.println("Token \"" + yytext() + "\" adicionado na tabela de tokens na posição " + index + " como classe: " + tabelaTokens[index][1]);
  index++;
}
{VOID} { 
  tabelaTokens[index][0] = yytext();
  tabelaTokens[index][1] = "PALAVRA_RESERVADA";

  System.out.println("Token \"" + yytext() + "\" adicionado na tabela de tokens na posição " + index + " como classe: " + tabelaTokens[index][1]);
  index++;
}
{IF} { 
  tabelaTokens[index][0] = yytext();
  tabelaTokens[index][1] = "PALAVRA_RESERVADA";

  System.out.println("Token \"" + yytext() + "\" adicionado na tabela de tokens na posição " + index + " como classe: " + tabelaTokens[index][1]);
  index++;
}
{ELSE} { 
  tabelaTokens[index][0] = yytext();
  tabelaTokens[index][1] = "PALAVRA_RESERVADA";

  System.out.println("Token \"" + yytext() + "\" adicionado na tabela de tokens na posição " + index + " como classe: " + tabelaTokens[index][1]);
  index++;
}
{RETURN} {  
  tabelaTokens[index][0] = yytext();
  tabelaTokens[index][1] = "PALAVRA_RESERVADA";

  System.out.println("Token \"" + yytext() + "\" adicionado na tabela de tokens na posição " + index + " como classe: " + tabelaTokens[index][1]);
  index++;
}
{TRUE} { 
  tabelaTokens[index][0] = yytext();
  tabelaTokens[index][1] = "LITERAL";

  System.out.println("Token \"" + yytext() + "\" adicionado na tabela de tokens na posição " + index + " como classe: " + tabelaTokens[index][1]);
  index++;
}
{FALSE} { 
  tabelaTokens[index][0] = yytext();
  tabelaTokens[index][1] = "LITERAL";

  System.out.println("Token \"" + yytext() + "\" adicionado na tabela de tokens na posição " + index + " como classe: " + tabelaTokens[index][1]);
  index++;
}
{COMMA} { 
  tabelaTokens[index][0] = yytext();
  tabelaTokens[index][1] = "DELIMITADOR";

  System.out.println("Token \"" + yytext() + "\" adicionado na tabela de tokens na posição " + index + " como classe: " + tabelaTokens[index][1]);
  index++;
}
{IDENTIFIER} { 
  tabelaTokens[index][0] = yytext();
  tabelaTokens[index][1] = "IDENTIFICADOR";

  System.out.println("Token \"" + yytext() + "\" adicionado na tabela de tokens na posição " + index + " como classe: " + tabelaTokens[index][1]);
  index++;
}
{NUMBER} { 
  tabelaTokens[index][0] = yytext();
  tabelaTokens[index][1] = "LITERAL";

  System.out.println("Token \"" + yytext() + "\" adicionado na tabela de tokens na posição " + index + " como classe: " + tabelaTokens[index][1]);
  index++;
}
{ATRIB} { 
  tabelaTokens[index][0] = yytext();
  tabelaTokens[index][1] = "OPERADOR";

  System.out.println("Token \"" + yytext() + "\" adicionado na tabela de tokens na posição " + index + " como classe: " + tabelaTokens[index][1]);
  index++;
}
{PLUS} { 
  tabelaTokens[index][0] = yytext();
  tabelaTokens[index][1] = "OPERADOR";

  System.out.println("Token \"" + yytext() + "\" adicionado na tabela de tokens na posição " + index + " como classe: " + tabelaTokens[index][1]);
  index++;
}
{TIMES} { 
  tabelaTokens[index][0] = yytext();
  tabelaTokens[index][1] = "OPERADOR";

  System.out.println("Token \"" + yytext() + "\" adicionado na tabela de tokens na posição " + index + " como classe: " + tabelaTokens[index][1]);
  index++;
}
{EQUALS} { 
  tabelaTokens[index][0] = yytext();
  tabelaTokens[index][1] = "OPERADOR";

  System.out.println("Token \"" + yytext() + "\" adicionado na tabela de tokens na posição " + index + " como classe: " + tabelaTokens[index][1]);
  index++;
}
{LESS} { 
  tabelaTokens[index][0] = yytext();
  tabelaTokens[index][1] = "OPERADOR";

  System.out.println("Token \"" + yytext() + "\" adicionado na tabela de tokens na posição " + index + " como classe: " + tabelaTokens[index][1]);
  index++;
}
{GREATER} { 
  tabelaTokens[index][0] = yytext();
  tabelaTokens[index][1] = "OPERADOR";

  System.out.println("Token \"" + yytext() + "\" adicionado na tabela de tokens na posição " + index + " como classe: " + tabelaTokens[index][1]);
  index++;
}
{NOT} { 
  tabelaTokens[index][0] = yytext();
  tabelaTokens[index][1] = "OPERADOR";

  System.out.println("Token \"" + yytext() + "\" adicionado na tabela de tokens na posição " + index + " como classe: " + tabelaTokens[index][1]);
  index++;
}
{AND} { 
  tabelaTokens[index][0] = yytext();
  tabelaTokens[index][1] = "OPERADOR";

  System.out.println("Token \"" + yytext() + "\" adicionado na tabela de tokens na posição " + index + " como classe: " + tabelaTokens[index][1]);
  index++;
}
{OR} { 
  tabelaTokens[index][0] = yytext();
  tabelaTokens[index][1] = "OPERADOR";

  System.out.println("Token \"" + yytext() + "\" adicionado na tabela de tokens na posição " + index + " como classe: " + tabelaTokens[index][1]);
  index++;
}
{SEMICOLON} { 
  tabelaTokens[index][0] = yytext();
  tabelaTokens[index][1] = "DELIMITADOR";

  System.out.println("Token \"" + yytext() + "\" adicionado na tabela de tokens na posição " + index + " como classe: " + tabelaTokens[index][1]);
  index++;
}
{LPAREN} { 
  tabelaTokens[index][0] = yytext();
  tabelaTokens[index][1] = "DELIMITADOR";

  System.out.println("Token \"" + yytext() + "\" adicionado na tabela de tokens na posição " + index + " como classe: " + tabelaTokens[index][1]);
  index++;
}
{RPAREN} { 
  tabelaTokens[index][0] = yytext();
  tabelaTokens[index][1] = "DELIMITADOR";

  System.out.println("Token \"" + yytext() + "\" adicionado na tabela de tokens na posição " + index + " como classe: " + tabelaTokens[index][1]);
  index++;
}
{LBRACE} { 
  tabelaTokens[index][0] = yytext();
  tabelaTokens[index][1] = "DELIMITADOR";

  System.out.println("Token \"" + yytext() + "\" adicionado na tabela de tokens na posição " + index + " como classe: " + tabelaTokens[index][1]);
  index++;
}
{RBRACE} { 
  tabelaTokens[index][0] = yytext();
  tabelaTokens[index][1] = "DELIMITADOR";

  System.out.println("Token \"" + yytext() + "\" adicionado na tabela de tokens na posição " + index + " como classe: " + tabelaTokens[index][1]);
  index++;
}

// Captura caracteres desconhecidos, passando o valor e a linha
. { System.out.println("Caracter desconhecido: " + yytext() + " na linha " + line);}
