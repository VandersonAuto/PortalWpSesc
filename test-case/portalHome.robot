#Cenarios de teste
#robot -d results logar.robot
#variaveis ${}
# executar sem navegador robot -d results -v BROWSER:headlesschrome LoginAuto.robot
***Variables***


***Settings***
Suite Setup     Abrir navegador
Suite Teardown  close all browsers
Resource   ../pages/home.robot
Resource   ../pages/resource.robot

***Test Cases***


Cenario 1: Acesso a pagina principal
    Dado que acesso a pagina do sesc
    #Quando clicar no botao Continuar do cokie 
    Entao sistema deve exibir pagina principal do sesc

Cenario 2: Carregar Carrocel
    Dado que acesso a pagina do sesc
    Quando Clicar no carrossel 
    Entao a pagina exibir o carrossel

Cenario 3: Editorial 
    Dado que acesso a pagina do sesc
    Quando clicar no editorial 
    Entao pagina deve exibir o editorial 

Cenario 3: Programacao
    Dado que acesso a pagina do sesc
    Quando clicar na Programacao 
    Entao deve ser confirmado a visualizacao da programacao