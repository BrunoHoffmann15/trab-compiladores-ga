%%
%public
%class TrabalhoGA
%standalone

class = "class"
atributos = "int" | "bool"
metodos = "void" | "int" | "bool"
identificador = [a-zA-Z][a-zA-Z0-9]*
constanteNumerica = [0-9]+
argumentos = <atributos> <identificador> (, <atributos> <identificador>)*
comandos = <comando> (; <comando>)*
comando = <atribuicao> | <condicional> | <chamadaMetodo> | return <expressao>
atribuicao = <identificador> = <expressao>
condicional = if (<expressao>) <comando> | if (<expressao>) <comando> else <comando>
chamadaMetodo = <identificador>(<argumentos>)
expressao = <expressaoAritmetica> | <expressaoBooleana>
expressaoAritmetica = <constanteNumerica> | <identificador> | <identificador>(<argumentos>) | <expressaoAritmetica> + <expressaoAritmetica> | <expressaoAritmetica> * <expressaoAritmetica>
expressaoBooleana = <identificador> | True | False | <expressaoAritmetica> <operadorRelacional> <expressaoAritmetica> | not <expressaoBooleana> | <expressaoBooleana> and <expressaoBooleana> | <expressaoBooleana> or <expressaoBooleana> | (<expressaoBooleana>)
operadorRelacional = == | < | >

{class} { System.out.println(yytext() + " é uma declaração de classe"); }
{atributos} { System.out.println(yytext() + " é uma declaração de atributo"); }
{metodos} { System.out.println(yytext() + " é uma declaração de método"); }
{identificador} { System.out.println(yytext() + " é um identificador"); }
{argumentos} { System.out.println(yytext() + " é um argumento"); }
{comandos} { System.out.println(yytext() + " é um comando"); }
{comando} { System.out.println(yytext() + " é um comando"); }
{atribuicao} { System.out.println(yytext() + " é uma atribuição"); }
{condicional} { System.out.println(yytext() + " é um condicional"); }
{chamadaMetodo} { System.out.println(yytext() + " é uma chamada de método"); }
{return} { System.out.println(yytext() + " é um return"); }
{expressao} { System.out.println(yytext() + " é uma expressão"); }
{expressaoAritmetica} { System.out.println(yytext() + " é uma expressão aritmética"); }
{expressaoBooleana} { System.out.println(yytext() + " é uma expressão booleana"); }
{operadorRelacional} { System.out.println(yytext() + " é um operador relacional"); }
. { System.out.println(yytext() + " é um caractere inválido"); }
%%