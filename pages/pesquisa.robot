#PageObject

***Settings***
Library   SeleniumLibrary
Resource  ../pages/resource.robot
Resource  ../pages/tags.robot
Resource  ../pages/unidades.robot

***Variables***
${ENCONTRE_SUA_PROGRAMACAO}                   //*[@class="btn btn-secondary dropdown-toggle"]               
${SELECAO_CATEGORIA}                          //*[@id="categoria"]
${PESQUISA_BOX_BUSCA}                         //*[@id="box-busca-desktop"]/div/div/div/form/p  

*** Keywords ***
Então o site apresenta mensagem informando que item não foi inserido nenhuma “pesquisa”
    Wait Until Element Is Enabled           //*[@class="busca--texto"]
    Element Should Contain                  //*[@class="busca--texto"]    Nenhum resultado encontrado. Experimente uma nova busca!
    
o site apresenta o item solicitado na pesquisa
    Wait Until Element Is Visible           ${PESQUISA_BOX_BUSCA}   
    Title Should Be                         Resultados da pesquisa Piscina : Sesc São Paulo
    Capture Page Screenshot   

            










