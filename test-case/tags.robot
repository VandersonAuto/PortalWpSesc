#Cenarios de teste
#robot -d results logar.robot
#variaveis ${}
# executar sem navegador robot -d results -v BROWSER:headlesschrome LoginAuto.robot
***Variables***


***Settings***
Suite Setup     Abrir navegador
Suite Teardown  close all browsers
Resource   ../pages/tags.robot
Resource   ../pages/resource.robot
Resource   ../pages/home.robot 

***Test Cases***


Cenario 1: Realizar acesso a pagina emcasacomsesc
    Dado que acesso a pagina sesc em casa com sesc
    Quando verificar o titulo Institucional : Sesc São Paulo
    Entao o editorial deve conter a tag #EmCasaComSesc

Cenario 2: Realizar acesso a Edicoes Sesc
    Dado que acesso a pagina do sesc
    Quando clicar no botao Continuar do cokie
    E clicar na aba Menu
    E clicar em edicoes Sesc
    Entao a pagina deve exibir O titulo Edicoes Sesc

Cenario 3: Realizar acesso ao Selo Sesc
    Dado que acesso a pagina do sesc
    E clicar na aba Menu
    Quando Clicar em Selo Sesc
    Entao a pagina Selo Sesc deve ser exibida

Cenario 4: Realizar acesso ao TV Sesc
    Dado que acesso a pagina do sesc
    E clicar na aba Menu
    Quando clicar no TV Sesc
    Entao a pagina TV sesc deve ser exibida

Cenario 5: Realizar acesso ao Digital
    Dado que acesso a pagina do sesc
    E clicar na aba Menu
    Quando clicar em Digital
    Entao a pagina Digital deve ser exibida

Cenario 6: Realizar acesso ao Mesa Brasil
    Dado que acesso a pagina do sesc
    E clicar na aba Menu
    Quando Clicar em Mesa Brasil
    E verificar elemento
    Entao pagina Mesa Brasil deve ser exibida

Cenario 7: Realizar acesso a Central de relacionamento
    Dado que acesso a pagina do sesc
    E clicar na aba Menu
    Quando clicar em Central de relacionamento
    Entao a pagina Central de relacionamento deve ser exibida

Cenario 8: Realizar acesso a Loja
    Dado que acesso a pagina do sesc
    E clicar na aba Menu
    Quando clicar em Loja
    E a pagina Loja deve texto Sesc SP
    Entao a pagina Loja deve ser exibida

Cenario 9: Realizar acesso a Servicos
    Dado que acesso a pagina do sesc
    E clicar na aba Menu
    Quando clicar em Servicos
    Entao a pagina Servicos deve ser exibida

Cenario 10: Acessos a aba category
    
