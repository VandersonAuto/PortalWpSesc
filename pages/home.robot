#PageObject

***Settings***
Library   SeleniumLibrary

*** Variables ***
${HOME_BOTAO_PESQUISA}      //*[@id="bt-s"]                     
${HOME_INSERIRPESQUISA}     //*[@class="form-control mr-sm-2"] 
${HOME_PESQUISAUNIDADE}     //*[@id="dropdownMenuButton"]

***Keywords***


Quando clicar no botao Continuar do cokie
    Click Element                            //*[@class="button-policy"]

clico no botão de pesquisas 
    Click Element                            ${HOME_BOTAO_PESQUISA}

clico no botão encontre sua programação
    Click Element                            ${HOME_PESQUISAUNIDADE}

realizo pesquisa de item "${item}"    
#Substituir o item piscina para qualquer item desejável
    Input Text                              //*[@placeholder="Pesquise"]   ${item}


e realizo pesquisa de 1 item que não consta no site
    Input Text                              //*[@placeholder="Pesquise"]   xiforinfula
    Click Element                           //*[@id="bt-s"]

e realizo pesquisa de 2 itens válidos    
#Substituir o item piscina, recreação para qualquer item desejável
    Input Text                              //*[@placeholder="Pesquise"]   piscina, recreação
    Click Element                           //*[@id="bt-s"]

e realizo pesquisa de 7 itens válidos
    Input Text                              //*[@placeholder="Pesquise"]   jogos
    Click Element                           //*[@id="bt-s"]

e realizo pesquisa de 2 itens que não constam no site
    Input Text                              //*[@placeholder="Pesquise"]   xiforinfula, xolifompila
    Click Element                           //*[@id="bt-s"]

Entao sistema deve exibir pagina principal do sesc
    Title Should Be     Sesc São Paulo

Quando Clicar no carrossel 
    Element Should Be Enabled               //*[@class="carrossel loading"]

Entao a pagina exibir o carrossel
    Element Should Be Enabled               //*[@class="container"]

Quando clicar no editorial 
    Element Should Be Enabled               //*[@class="title-container"]

Entao pagina deve exibir o editorial
    Element Should Be Enabled               //*[@class="editorial-row destaque"]

Quando clicar na Programacao
    Element Should Be Enabled               //*[@id="desktop"]

Entao deve ser confirmado a visualizacao da programacao
    Element Should Be Enabled               //*[@class="row programacao--row js-programacao-container"]

Quando clicar em Mais Acoes
    Element Should Be Enabled               //*[@class="acoes"]

Entao deve ser confirmado a visualizacao do Mais Acoes
    Element Should Be Enabled               //*[@class="owl-carousel owl-theme owl-acoes owl-loaded owl-drag"]

Quando clicar no Footer
    Element Should Be Enabled               //*[@class="footer"]

Entao deve ser confirmado a visualizacao do Footer
    Element Should Be Enabled               //*[@class="footer"]

Quando clicar no Cabecario
    Element Should Be Enabled               //*[@class="header-container"]

Entao deve ser confirmado a visualizacao do Cabecario
    Element Should Be Enabled               //*[@class="header"]




    



