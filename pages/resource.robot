#PageObject
***Variables***

${BROWSER}              gc
${HOME}                 https://www.sescsp.org.br/
***Settings***
Library   SeleniumLibrary

***Keywords***

Abrir navegador
    Open Browser    url:      ${BROWSER}


Dado que acesso a pagina do sesc
    Go To       ${HOME} 

