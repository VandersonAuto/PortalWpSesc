#PageObject
***Variables***


***Settings***
Library   SeleniumLibrary


***Keywords***




Quando verificar o titulo Institucional : Sesc São Paulo
    Title Should Be        Institucional : Sesc São Paulo 

Entao o editorial deve conter a tag #EmCasaComSesc
    Element Text Should Be      //*[@href="https://www.sescsp.org.br/category/emcasacomsesc/"]              \#EmCasaComSesc



Entao a pagina deve exibir O titulo Edicoes Sesc
    
	Title Should Be	        Sesc São Paulo - Edições Sesc - Online

E clicar em edicoes Sesc
    Go to                   https://portal.sescsp.org.br/online/edicoes-sesc/#/tagcloud

Quando Clicar em Selo Sesc
    Go to           https://portal.sescsp.org.br/online/selo-sesc/
    
Entao a pagina Selo Sesc deve ser exibida
    Title Should Be           Sesc São Paulo - Selo Sesc - Online

Quando clicar no TV Sesc
    Click Element           //*[@id="menu-item-4992"]/a

Entao a pagina TV sesc deve ser exibida
    Page Should Contain Element         //*[@id="page-wrapper"]/header/div/div[1]/div/a/img

Quando clicar em Digital
    Click Element                       //*[@id="menu-item-4993"]/a
    
Entao a pagina Digital deve ser exibida
    Title Should Be                     Sesc Digital | Plataforma de acervos, cursos livres e programações inéditas

Quando Clicar em Mesa Brasil
    Click Element                       //*[@id="menu-item-4994"]/a
    
Entao pagina Mesa Brasil deve ser exibida
    Title Should Be             Mesa Brasil

E verificar elemento
    Wait Until Page Contains              Mesa Brasil

Quando clicar em Central de relacionamento
    Click Element                       //*[@id="menu-item-1352"]/a
    
Entao a pagina Central de relacionamento deve ser exibida
    Wait Until Page Contains            Central de Relacionamento Digital

Quando clicar em Loja
    Click Element                       //*[@id="menu-item-1355"]/a    
    
E a pagina Loja deve texto Sesc SP
    Wait Until Page Contains            Sesc SP           8

Entao a pagina Loja deve ser exibida
    Title Should Be                     		Sesc São Paulo - Loja

    
Quando clicar em Servicos
    Click Element                       //*[@id="menu-item-1354"]/a    
    
Entao a pagina Servicos deve ser exibida
    Title Should Be                     Sesc São Paulo - Serviços


