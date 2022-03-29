#PageObject
***Variables***

${BROWSER}              gc
${HOME}                 https://www.sescsp.org.br/
${MENU}                 //*[@class="navbar-toggler-icon"] 
${UNIDADES}             //*[@class="col-sm-3"]     
${TAGS_EMCASACOMOSESC}  https://www.sescsp.org.br/projetos/emcasacomsesc/
${PAGINA_LOGIN}         https://www.sescsp.org.br/login/      

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
    Go To       ${HOME} 

Dado que acesso a pagina sesc em casa com sesc
    Go To       ${TAGS_EMCASACOMOSESC}

E clicar na aba Menu
    Click Element      ${MENU} 

Quando clicar unidade e selecionar Grande sao paulo 
    Click Element       //*[@id="navbarDropdownMenuLink"]  
    Click Element       //*[@class="dropdown-item dropdown-toggle"] 

E Clicar no cookie
    #Botão para clicar no cokie, aguardar locator estar disponível na tela
    Wait Until Element Contains     //*[@class="button-policy"]    Continuar
    Click Element                   //*[@class="button-policy"]
