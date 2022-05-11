#PageObject
***Settings***
Library   SeleniumLibrary

***Variables***
${BROWSER}                 chrome
${HOME}                    https://www.sescsp.org.br/
${MENU}                    //*[@class="navbar-toggler-icon"] 
${UNIDADES}                //*[@class="col-sm-3"]     
${TAGS_EMCASACOMOSESC}     https://www.sescsp.org.br/projetos/emcasacomsesc/
      

***Keywords***
Abrir navegador
    Open Browser              url:      ${BROWSER}

Dado que acesso a pagina do sesc devel
    Go To                     https://sesc.devel.sescdigital.com.br/

que acesso a pagina do sesc
    Go To                     ${HOME} 

Então é habilitado digitar para realizar pesquisa
    Wait Until Element Contains     ${HOME_INSERIRPESQUISA}        
    Element Until Should Be         ${HOME_INSERIRPESQUISA} 

Dado que acesso a pagina sesc em casa com sesc
    Go To                           ${TAGS_EMCASACOMOSESC}

E clicar na aba Menu
    Click Element                   ${MENU} 

Quando clicar unidade e selecionar Grande sao paulo 
    Click Element                           //*[@id="navbarDropdownMenuLink"]  
    Click Element                           //*[@class="dropdown-item dropdown-toggle"] 

clico no botão aceitar cookie
    #Botão para clicar no cokie, aguardar locator estar disponível na tela
    Wait Until Element Contains             //*[@class="button-policy"]    Continuar
    Click Element                           //*[@class="button-policy"]




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

