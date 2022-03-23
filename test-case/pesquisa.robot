#Cenarios de teste
#robot -d results logar.robot
#variaveis ${}
# executar sem navegador robot -d results -v BROWSER:headlesschrome LoginAuto.robot


***Settings***
Suite Setup     Abrir navegador
Suite Teardown  close all browsers
Resource   ../pages/tags.robot
Resource   ../pages/resource.robot
Resource   ../pages/home.robot
Resource   ../pages/pesquisa.robot 
Resource   ../pages/unidades.robot

***Test Cases***


Cenario 1: Realizar pesquisa por categoria
    Dado que acesso a pagina do sesc devel
    E Clicar no cookie
    E esperar ate aparecer elemento
    E clicar em Encontre sua Programacao
    E clicar na aba area
    Quando Selecionar a categoria 
    Entao a pagina deve exibir resultados por categoria 


