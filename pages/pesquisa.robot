#PageObject

***Settings***
Library   SeleniumLibrary
Resource  ../pages/resource.robot
Resource  ../pages/tags.robot
Resource  ../pages/unidades.robot

***Variables***
${ENCONTRE_SUA_PROGRAMACAO}                 //*[@class="btn btn-secondary dropdown-toggle"]               
${SELECAO_CATEGORIA}                        //*[@id="categoria"]
${PESQUISA_BOX_BUSCA}                       //*[@id="box-busca-desktop"]/div/div/div/form/p 
${PESQUISA_RESULTADO}                       //*[@id="search-cards-block-container"]/div/p
${PESQUISA_SELECAOUNIDADE}                  //*[@id="unidade"]
${PESQUISA_AREA}                            //*[@id="categoria"]
                            
*** Keywords ***
Então o site apresenta mensagem informando que item não foi inserido nenhuma “pesquisa”
    Wait Until Element Is Enabled               //*[@class="busca--texto"]
    Element Should Contain                      //*[@class="busca--texto"]    Nenhum resultado encontrado. Experimente uma nova busca!
    
o site apresenta o item solicitado na pesquisa
    Wait Until Element Is Visible               ${PESQUISA_BOX_BUSCA}   
    Title Should Be                             You searched for Piscina - Sesc São Paulo : Sesc São Paulo
    Capture Page Screenshot   

o site apresenta os itens solicitados na pesquisa
    Wait Until Element Is Visible               ${PESQUISA_BOX_BUSCA}   
    Title Should Be                             You searched for - Sesc São Paulo : Sesc São Paulo
    Capture Page Screenshot   

seleciono a unidade "${unidades}"
    Click Element                               ${PESQUISA_SELECAOUNIDADE}
    Click Element                               (//*[text()="${unidades}"])[3]
    Click Element                               //*[@id="buscar_btn"]
            
pesquisa:o site apresenta mensagem Nenhum resultado encontrado Experimente uma nova busca
    Wait Until Element Is Visible               ${PESQUISA_RESULTADO}
    Element Should Contain                      ${PESQUISA_RESULTADO}     Nenhum resultado encontrado. Experimente uma nova busca!       

serão exibidas os resultados da pesquisa da unidade SESC "${unidades}"
    Set Selenium Timeout                        10 seconds
    Wait Until Page Contains Element            //*[@id="filter-cards-block-container"]/div/p   
    Element Should Contain                      //*[@id="filter-cards-block-container"]/div/p    "${unidades}"   

seleciono a area "${area}"
    Click Element                               ${PESQUISA_AREA}
    Click Element                               //*[text()="${area}"] 

serão exibidas os resultados da pesquisa area SESC "${area}"
    Set Selenium Timeout                        10 seconds    
    Wait Until Page Contains Element            //*[text()="${area}"]
    Element Should Contain                      //*[text()="${area}"]    ${area}"


