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

Cenário 2 - Realizar pesquisa de 1 item com sucesso.
    [tags]     teste
    #Dado
    resource.que acesso a pagina do sesc
    resource.E Clicar no cookie
    #e 
    home.realizo pesquisa de item "Piscina"
    #Quando 
    home.clico no botão de pesquisas
    #Então 
    pesquisa.o site apresenta o item solicitado na pesquisa

Cenário 3 - Realizar pesquisa de 2 itens simultaneamente com sucesso
    Dado que acesso a pagina do sesc
    Quando clico no botão de pesquisas 
    e realizo pesquisa de 2 itens válidos
    Então o site apresenta os itens solicitados na pesquisa

Cenário 4 - Realizar pesquisa de 1 item que não consta no site.
    Dado que acesso a pagina do sesc
    Quando clico no botão de pesquisas 
    e realizo pesquisa de 1 item que não consta no site
    Então o site apresenta mensagem Nenhum resultado encontrado Experimente uma nova busca

Cenário 5 - Realizar pesquisa de 2 itens que não constam no site.
    Dado que acesso a pagina do sesc
    Quando clico no botão de pesquisas 
    e realizo pesquisa de 2 itens que não constam no site
    Então o site apresenta mensagem Nenhum resultado encontrado Experimente uma nova busca

Cenário 6 - Realizar pesquisa sem valor
    Dado que acesso a pagina do sesc
    Quando realizo pesquisa sem inserir nenhum item
    Então o site apresenta mensagem Nenhum resultado encontrado Experimente uma nova busca


