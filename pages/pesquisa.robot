#PageObject

***Settings***
Library   SeleniumLibrary

***Variables***
${ENCONTRE_SUA_PROGRAMACAO}                   //*[@class="btn btn-secondary dropdown-toggle"]               
${SELECAO_CATEGORIA}                          //*[@id="categoria"]
***Keywords***



E clicar em Encontre sua Programacao
    Click Button                             ${ENCONTRE_SUA_PROGRAMACAO}       

E clicar na aba area
    Click Element                             //*[@id="categoria"]

E esperar ate aparecer elemento
    Wait Until Element Contains               //*[@class="btn btn-secondary dropdown-toggle"]             

Quando Selecionar a categoria 
    Click Element                            //*[@data-categoria="alimentacao"]
Entao a pagina deve exibir resultados por categoria 
    Page Should Contain Element              //*[@data-categoria="alimentacao"]







