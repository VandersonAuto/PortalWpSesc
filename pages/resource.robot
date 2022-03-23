#PageObject
***Variables***

${BROWSER}              gc
${HOME}                 https://www.sescsp.org.br/
${MENU}                 //*[@class="navbar-toggler-icon"] 
${UNIDADES}             //*[@class="col-sm-3"]     
${TAGS_EMCASACOMOSESC}  https://www.sescsp.org.br/projetos/emcasacomsesc/

***Settings***
Library   SeleniumLibrary

***Keywords***

Abrir navegador
    Open Browser    url:      ${BROWSER}

Dado que acesso a pagina do sesc devel
    Go To           https://sesc.devel.sescdigital.com.br/

Dado que acesso a pagina do sesc
    Go To       ${HOME} 

Dado que acesso a pagina sesc em casa com sesc
    Go To       ${TAGS_EMCASACOMOSESC}

E clicar na aba Menu
    Click Element      ${MENU} 

Quando clicar unidade e selecionar Grande sao paulo 
    Click Element       //*[@id="navbarDropdownMenuLink"]  
    Click Element       //*[@class="dropdown-item dropdown-toggle"] 


