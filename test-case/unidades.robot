#Cenarios de teste
#robot -d results logar.robot
#variaveis ${}
# executar sem navegador robot -d results -v BROWSER:headlesschrome LoginAuto.robot
***Variables***


***Settings***
Suite Setup     Abrir navegador
Suite Teardown  close all browsers
Resource   ../pages/unidades.robot
Resource   ../pages/resource.robot

***Test Cases***

Cenario 1: Selecionar unidade 24 de maio
    Dado que acesso a pagina do sesc
    E Clicar no cookie
    E clicar na aba Menu
    Quando clicar unidade e selecionar Grande sao paulo
    E selecionar Unidade "24-de-maio"
    Entao pagina da unidade devera ser exibida "24 de Maio"                     

Cenario 2: Selecionar unidade osasco
    Dado que acesso a pagina do sesc
    
    E clicar na aba Menu
    Quando clicar unidade e selecionar Grande sao paulo
    E selecionar Unidade "osasco"
    Entao pagina da unidade devera ser exibida "Osasco"

Cenario 3: Selecionar unidade avenida-paulista
    Dado que acesso a pagina do sesc
    
    E clicar na aba Menu
    Quando clicar unidade e selecionar Grande sao paulo
    E selecionar Unidade "avenida-paulista"
    Entao pagina da unidade devera ser exibida "Avenida Paulista"

Cenario 4: Selecionar unidade belenzinho
    Dado que acesso a pagina do sesc
    
    E clicar na aba Menu
    Quando clicar unidade e selecionar Grande sao paulo
    E selecionar Unidade "belenzinho"
    Entao pagina da unidade devera ser exibida "Belenzinho"

Cenario 5: Selecionar unidade bom-retiro
    Dado que acesso a pagina do sesc
    
    E clicar na aba Menu
    Quando clicar unidade e selecionar Grande sao paulo
    E selecionar Unidade "bom-retiro"
    Entao pagina da unidade devera ser exibida "Bom Retiro"

Cenario 6: Selecionar unidade campo-limpo
    Dado que acesso a pagina do sesc
    
    E clicar na aba Menu
    Quando clicar unidade e selecionar Grande sao paulo
    E selecionar Unidade "campo-limpo" 
    Entao pagina da unidade devera ser exibida "Campo Limpo"    


Cenario 7: Selecionar unidade carmo
    Dado que acesso a pagina do sesc
    
    E clicar na aba Menu
    Quando clicar unidade e selecionar Grande sao paulo
    E selecionar Unidade "carmo"
    Entao pagina da unidade devera ser exibida "Carmo"

Cenario 8: Selecionar unidade centro-de-pesquisa-e-formacao
    Dado que acesso a pagina do sesc
    
    E clicar na aba Menu
    Quando clicar unidade e selecionar Grande sao paulo
    E selecionar Unidade "centro-de-pesquisa-e-formacao"
    Entao pagina da unidade devera ser exibida "Centro de Pesquisa e Formação"

Cenario 9: Selecionar unidade consolacao
    Dado que acesso a pagina do sesc
    
    E clicar na aba Menu
    Quando clicar unidade e selecionar Grande sao paulo
    E selecionar Unidade "consolacao"     
    Entao pagina da unidade devera ser exibida "Consolação"

Cenario 10: Selecionar unidade cinesesc
    Dado que acesso a pagina do sesc
    
    E clicar na aba Menu
    Quando clicar unidade e selecionar Grande sao paulo
    E selecionar Unidade "cinesesc"
    Entao pagina da unidade devera ser exibida "CineSesc"

Cenario 11: Selecionar unidade florencio-de-abreu
    Dado que acesso a pagina do sesc
    
    E clicar na aba Menu
    Quando clicar unidade e selecionar Grande sao paulo
    E selecionar Unidade "florencio-de-abreu"
    Entao pagina da unidade devera ser exibida "Florêncio de Abreu"

Cenario 12: Selecionar unidade guarulhos
    Dado que acesso a pagina do sesc
    
    E clicar na aba Menu
    Quando clicar unidade e selecionar Grande sao paulo
    E selecionar Unidade "guarulhos"
    Entao pagina da unidade devera ser exibida "Guarulhos"

Cenario 13: Selecionar unidade interlagos
    Dado que acesso a pagina do sesc
    
    E clicar na aba Menu
    Quando clicar unidade e selecionar Grande sao paulo
    E selecionar Unidade "interlagos"
    Entao pagina da unidade devera ser exibida "Interlagos"

Cenario 14: Selecionar unidade ipiranga
    Dado que acesso a pagina do sesc
    
    E clicar na aba Menu
    Quando clicar unidade e selecionar Grande sao paulo
    E selecionar Unidade "ipiranga"
    Entao pagina da unidade devera ser exibida "Ipiranga"

Cenario 15: Selecionar unidade itaquera
    Dado que acesso a pagina do sesc
    
    E clicar na aba Menu
    Quando clicar unidade e selecionar Grande sao paulo
    E selecionar Unidade "itaquera"
    Entao pagina da unidade devera ser exibida "Itaquera"

Cenario 16: Selecionar unidade mogi-das-cruzes
    Dado que acesso a pagina do sesc
    
    E clicar na aba Menu
    Quando clicar unidade e selecionar Grande sao paulo
    E selecionar Unidade "mogi-das-cruzes"
    Entao pagina da unidade devera ser exibida "Mogi das Cruzes"

Cenario 17: Selecionar unidade araraquara
   Dado que acesso a pagina do sesc
   E clicar na aba Menu 
   Quando clicar unidade e selecionar Interior e Litoral
   E selecionar Unidade "araraquara"
   Entao pagina da unidade devera ser exibida "Araraquara"

Cenario 18: Selecionar unidade bauru
   Dado que acesso a pagina do sesc
   E clicar na aba Menu 
   Quando clicar unidade e selecionar Interior e Litoral
   E selecionar Unidade "bauru"
   Entao pagina da unidade devera ser exibida "Bauru"
Cenario 19: Selecionar unidade bertioga
   Dado que acesso a pagina do sesc
   E clicar na aba Menu 
   Quando clicar unidade e selecionar Interior e Litoral
   E selecionar Unidade "bertioga"
   Entao pagina da unidade devera ser exibida "Bertioga"
Cenario 20: Selecionar unidade birigui
   Dado que acesso a pagina do sesc
   E clicar na aba Menu 
   Quando clicar unidade e selecionar Interior e Litoral
   E selecionar Unidade "birigui"
   Entao pagina da unidade devera ser exibida "Birigui"

Cenario 21: Selecionar unidade campinas
   Dado que acesso a pagina do sesc
   E clicar na aba Menu 
   Quando clicar unidade e selecionar Interior e Litoral
   E selecionar Unidade "campinas"
   Entao pagina da unidade devera ser exibida "Campinas"

Cenario 22: Selecionar unidade catanduva
   Dado que acesso a pagina do sesc
   E clicar na aba Menu 
   Quando clicar unidade e selecionar Interior e Litoral
   E selecionar Unidade "catanduva"
   Entao pagina da unidade devera ser exibida "Catanduva"

Cenario 23: Selecionar unidade jundiai
   Dado que acesso a pagina do sesc
   E clicar na aba Menu 
   Quando clicar unidade e selecionar Interior e Litoral
   E selecionar Unidade "jundiai"
   Entao pagina da unidade devera ser exibida "Jundiaí"

Cenario 24: Selecionar unidade piracicaba
   Dado que acesso a pagina do sesc
   E clicar na aba Menu 
   Quando clicar unidade e selecionar Interior e Litoral
   E selecionar Unidade "piracicaba"
   Entao pagina da unidade devera ser exibida "Piracicaba"

Cenario 25: Selecionar unidade presidente-prudente
   Dado que acesso a pagina do sesc
   E clicar na aba Menu 
   Quando clicar unidade e selecionar Interior e Litoral
   E selecionar Unidade "presidente-prudente"
   Entao pagina da unidade devera ser exibida "Presidente Prudente"

Cenario 26: Selecionar unidade registro
   Dado que acesso a pagina do sesc
   E clicar na aba Menu 
   Quando clicar unidade e selecionar Interior e Litoral
   E selecionar Unidade "registro"
   Entao pagina da unidade devera ser exibida "Registro"

Cenario 27: Selecionar unidade ribeirao-preto
   Dado que acesso a pagina do sesc
   E clicar na aba Menu 
   Quando clicar unidade e selecionar Interior e Litoral
   E selecionar Unidade "ribeirao-preto"
   Entao pagina da unidade devera ser exibida "Ribeirão Preto"

Cenario 28: Selecionar unidade rio-preto
   Dado que acesso a pagina do sesc
   E clicar na aba Menu 
   Quando clicar unidade e selecionar Interior e Litoral
   E selecionar Unidade "rio-preto"
   Entao pagina da unidade devera ser exibida "Rio Preto"

Cenario 29: Selecionar unidade santos
   Dado que acesso a pagina do sesc
   E clicar na aba Menu 
   Quando clicar unidade e selecionar Interior e Litoral
   E selecionar Unidade "santos"
   Entao pagina da unidade devera ser exibida "Santos"

Cenario 30: Selecionar unidade sao-carlos
   Dado que acesso a pagina do sesc
   E clicar na aba Menu 
   Quando clicar unidade e selecionar Interior e Litoral
   E selecionar Unidade "sao-carlos"
   Entao pagina da unidade devera ser exibida "São Carlos"

Cenario 31: Selecionar unidade sao-jose-dos-campos
   Dado que acesso a pagina do sesc
   E clicar na aba Menu 
   Quando clicar unidade e selecionar Interior e Litoral
   E selecionar Unidade "sao-jose-dos-campos"
   Entao pagina da unidade devera ser exibida "São José dos Campos"

Cenario 32: Selecionar unidade sorocaba 
   Dado que acesso a pagina do sesc
   E clicar na aba Menu 
   Quando clicar unidade e selecionar Interior e Litoral
   E selecionar Unidade "sorocaba"
   Entao pagina da unidade devera ser exibida "Sorocaba"

Cenario 33: Selecionar unidade taubate
   Dado que acesso a pagina do sesc
   E clicar na aba Menu 
   Quando clicar unidade e selecionar Interior e Litoral
   E selecionar Unidade "taubate"
   Entao pagina da unidade devera ser exibida "Taubaté"