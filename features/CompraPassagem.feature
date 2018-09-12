#language: pt
@compra
Funcionalidade: Comprar passagem

  Contexto:
    Dado que estou logado

  Esquema do Cenario:
    Quando preencho os campos para compra de passagem
    E escolho o voo
    E preencho as informacoes do usuario "<nome>"
    Então valido a compra da passagem

    Exemplos:
      |nome|
      |Renato|
      |Rodrigo|

