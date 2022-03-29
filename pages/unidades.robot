#PageObject
***Variables***


***Settings***
Library   SeleniumLibrary


***Keywords***

E selecionar Unidade "${unidade}"
    Click Element       //*[@href="/unidades/${unidade}"]  

Entao pagina da unidade devera ser exibida "${nome_da_unidade}"
    Element Text Should Be       ${UNIDADES}                ${nome_da_unidade}

Quando clicar unidade e selecionar Interior e Litoral
    Click Element       //*[@id="navbarDropdownMenuLink"]
    Click Element       //*[@class="dropdown-menu show"]

