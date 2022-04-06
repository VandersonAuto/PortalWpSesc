#PageObject
***Variables***

${BROWSER}                 gc
${HOME}                    https://www.sescsp.org.br/
${MENU}                    //*[@class="navbar-toggler-icon"] 
${UNIDADES}                //*[@class="col-sm-3"]     
${TAGS_EMCASACOMOSESC}     https://www.sescsp.org.br/projetos/emcasacomsesc/
${PAGINA_LOGIN}            https://www.sescsp.org.br/login/      
${HOME_BOTAOPESQUISA}      //*[@class="form-control mr-sm-2"] 
${HOME_INSERIRPESQUISA}    //*[@id="s"] 

***Settings***
Library   SeleniumLibrary

***Keywords***
Abrir navegador
    Open Browser    url:      ${BROWSER}

Dado que acesso a pagina do sesc devel
    Go To           https://sesc.devel.sescdigital.com.br/

Dado que estou na pagina de login
    Open Browser    url:      ${BROWSER}
    Go To                     ${PAGINA_LOGIN}      

Dado que acesso a pagina do sesc
    Go To                     ${HOME} 

Então é habilitado digitar para realizar pesquisa
    Wait Until Element Contains     ${HOME_INSERIRPESQUISA}        
    Element Until Should Be         ${HOME_INSERIRPESQUISA} 

Quando clico no botão de pesquisas 
    Click Element                   ${HOME_BOTAOPESQUISA}

Dado que acesso a pagina sesc em casa com sesc
    Go To                           ${TAGS_EMCASACOMOSESC}

E clicar na aba Menu
    Click Element                   ${MENU} 

Quando clicar unidade e selecionar Grande sao paulo 
    Click Element                           //*[@id="navbarDropdownMenuLink"]  
    Click Element                           //*[@class="dropdown-item dropdown-toggle"] 

E Clicar no cookie
    #Botão para clicar no cokie, aguardar locator estar disponível na tela
    Wait Until Element Contains             //*[@class="button-policy"]    Continuar
    Click Element                           //*[@class="button-policy"]

e realizo pesquisa de 1 item válido    
#Substituir o item piscina para qualquer item desejável
    Input Text                              //*[@placeholder="Pesquise"]   Piscina
    Click Element                           //*[@id="bt-s"]

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

Então o site apresenta o item solicitado na pesquisa
    Wait Until Element Is Visible           //*[@id="box-busca-desktop"]/div/div/div/form/p    
    Title Should Be                         Resultados da pesquisa Piscina : Sesc São Paulo

Então o site apresenta os itens solicitados na pesquisa
    Wait Until Element Is Enabled           //*[@id="more_posts"]
    Title Should Be                          Resultados da pesquisa piscina, recreação : Sesc São Paulo
   
Quando clico no botão de pesquisas sem inserir nenhum valor
    Click Element                           ${HOME_BOTAOPESQUISA}

Então o site apresenta mensagem Nenhum resultado encontrado Experimente uma nova busca
    Wait Until Element Is Enabled           //*[@id="search-cards-block-container"]/div/p
    Element Should Contain                  //*[@id="search-cards-block-container"]/div/p    Nenhum resultado encontrado. Experimente uma nova busca!
                        
Quando realizo pesquisa sem inserir nenhum item
    Click Element                           //*[@id="bt-s"]

