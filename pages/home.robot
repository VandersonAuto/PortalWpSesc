#PageObject

***Settings***
Library   SeleniumLibrary


***Keywords***


Quando clicar no botao Continuar do cokie
    Click Element       //*[@class="button-policy"]

Entao sistema deve exibir pagina principal do sesc
    Title Should Be     Sesc São Paulo

Quando Clicar no carrossel 
    Element Should Be Enabled                //*[@class="carrossel loading"]

Entao a pagina exibir o carrossel
    Element Should Be Enabled                //*[@class="container"]

Quando clicar no editorial 
    Element Should Be Enabled                //*[@class="title-container"]

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




    



