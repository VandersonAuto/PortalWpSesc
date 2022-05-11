#Cenarios de teste
#robot -d results logar.robot
#variaveis ${}
# executar sem navegador robot -d results -v BROWSER:headlesschrome LoginAuto.robot

***Settings***
Suite Setup        Abrir navegador
Suite Teardown     close all browsers
Resource           ../pages/tags.robot
Resource           ../pages/resource.robot
Resource           ../pages/home.robot
Resource           ../pages/pesquisa.robot 
Resource           ../pages/unidades.robot

***Test Cases***
Cenário 1 - Realizar pesquisa de 1 item com sucesso.
    [tags]     teste
    #Dado
    resource.que acesso a pagina do sesc
    resource.Clico no botão aceitar cookie
    #e 
    home.realizo pesquisa de item "Piscina"
    #Quando 
    home.clico no botão de pesquisas
    #Então 
    pesquisa.o site apresenta o item solicitado na pesquisa

Cenário 2 - Realizar pesquisa de 2 itens simultaneamente com sucesso
    #Dado 
    resource.que acesso a pagina do sesc
    #Quando 
    home.clico no botão de pesquisas
    #e 
    home.realizo pesquisa de item "Piscina, recreação"
    #Então 
    pesquisa.o site apresenta os itens solicitados na pesquisa

Cenário 3 - Realizar pesquisa de 1 item que não consta no site.
    #Dado 
    resource.que acesso a pagina do sesc
    #Quando 
    home.clico no botão de pesquisas 
    #e 
    home.realizo pesquisa de item "Xiforinfula"
    #Então 
    pesquisa:o site apresenta mensagem Nenhum resultado encontrado Experimente uma nova busca

Cenário 4 - Realizar pesquisa de 2 itens que não constam no site.
    #Dado 
    resource.que acesso a pagina do sesc
    #Quando 
    home.clico no botão de pesquisas 
    #e 
    home.realizo pesquisa de item "Xiforinfula, cholifompila"
    #Então 
    pesquisa:o site apresenta mensagem Nenhum resultado encontrado Experimente uma nova busca

##############################################################################################################    

Cenário 5 - Realizar pesquisa da unidade SESC 24 De Maio
    [tags]     teste
    #Dado
    resource.que acesso a pagina do sesc
    #Quando
    home.clico no botão encontre sua programação
    #e
    pesquisa.seleciono a unidade "24 de Maio"
    #Então
    pesquisa.serão exibidas os resultados da pesquisa da unidade SESC "24 de Maio"

Cenário 6 - Realizar pesquisa da unidade SESC ARARAQUARA
    #Dado
    resource.que acesso a pagina do sesc
    #Quando
    home.clico no botão encontre sua programação
    #e
    pesquisa.seleciono a unidade "Araraquara"
    #Então
    pesquisa.serão exibidas os resultados da pesquisa da unidade SESC "Araraquara"
    
Cenário 7 - Realizar pesquisa da unidade SESC Avenida Paulista
    #Dado
    resource.que acesso a pagina do sesc
    #Quando
    home.clico no botão encontre sua programação
    #e
    pesquisa.seleciono a unidade "Avenida Paulista"
    #Então
    pesquisa.serão exibidas os resultados da pesquisa da unidade SESC "Avenida Paulista"

Cenário 8 - Realizar pesquisa da unidade SESC Bauru
    #Dado
    resource.que acesso a pagina do sesc
    #Quando
    home.clico no botão encontre sua programação
    #e
    pesquisa.seleciono a unidade "Bauru"
    #Então
    pesquisa.serão exibidas os resultados da pesquisa da unidade SESC "Bauru"

Cenário 9 - Realizar pesquisa da unidade SESC Belenzinho
    #Dado
    resource.que acesso a pagina do sesc
    #Quando
    home.clico no botão encontre sua programação
    #e
    pesquisa.seleciono a unidade "Belenzinho"
    #Então
    pesquisa.serão exibidas os resultados da pesquisa da unidade SESC "Belenzinho"

Cenário 10 - Realizar pesquisa da unidade SESC Bertioga
    #Dado
    resource.que acesso a pagina do sesc
    #Quando
    home.clico no botão encontre sua programação
    #e
    pesquisa.seleciono a unidade "Bertioga"
    #Então
    pesquisa.serão exibidas os resultados da pesquisa da unidade SESC "Bertioga"

Cenário 11 - Realizar pesquisa da unidade SESC Birigui
    #Dado
    resource.que acesso a pagina do sesc
    #Quando
    home.clico no botão encontre sua programação
    #e
    pesquisa.seleciono a unidade "Birigui"
    #Então
    pesquisa.serão exibidas os resultados da pesquisa da unidade SESC "Birigui"

Cenário 12 - Realizar pesquisa da unidade SESC Bom Retiro
    #Dado
    resource.que acesso a pagina do sesc
    #Quando
    home.clico no botão encontre sua programação
    #e
    pesquisa.seleciono a unidade "Bom Retiro"
    #Então
    pesquisa.serão exibidas os resultados da pesquisa da unidade SESC "Bom Retiro"

Cenário 13 - Realizar pesquisa da unidade SESC Campinas
    #Dado
    resource.que acesso a pagina do sesc
    #Quando
    home.clico no botão encontre sua programação
    #e
    pesquisa.seleciono a unidade "Campinas"
    #Então
    pesquisa.serão exibidas os resultados da pesquisa da unidade SESC "Campinas"

Cenário 14 - Realizar pesquisa da unidade SESC Campo Limpo
    #Dado
    resource.que acesso a pagina do sesc
    #Quando
    home.clico no botão encontre sua programação
    #e
    pesquisa.seleciono a unidade "Campo Limpo"
    #Então
    pesquisa.serão exibidas os resultados da pesquisa da unidade SESC "Campo Limpo"

Cenário 15 - Realizar pesquisa da unidade SESC Carmo
    #Dado
    resource.que acesso a pagina do sesc
    #Quando
    home.clico no botão encontre sua programação
    #e
    pesquisa.seleciono a unidade "Carmo"
    #Então
    pesquisa.serão exibidas os resultados da pesquisa da unidade SESC "Carmo"

Cenário 16 - Realizar pesquisa da unidade SESC Catanduva
    #Dado
    resource.que acesso a pagina do sesc
    #Quando
    home.clico no botão encontre sua programação
    #e
    pesquisa.seleciono a unidade "Catanduva"
    #Então
    pesquisa.serão exibidas os resultados da pesquisa da unidade SESC "Catanduva"

Cenário 17 - Realizar pesquisa da unidade SESC "Centro de Pesquisa e Formação"
    #Dado
    resource.que acesso a pagina do sesc
    #Quando
    home.clico no botão encontre sua programação
    #e
    pesquisa.seleciono a unidade "Centro de Pesquisa e Formação"
    #Então
    pesquisa.serão exibidas os resultados da pesquisa da unidade SESC "Centro de Pesquisa e Formação"

Cenário 18 - Realizar pesquisa da unidade SESC CineSesc
    #Dado
    resource.que acesso a pagina do sesc
    #Quando
    home.clico no botão encontre sua programação
    #e
    pesquisa.seleciono a unidade "CineSesc"
    #Então
    pesquisa.serão exibidas os resultados da pesquisa da unidade SESC "CineSesc"

Cenário 19 - Realizar pesquisa da unidade SESC Consolação
    #Dado
    resource.que acesso a pagina do sesc
    #Quando
    home.clico no botão encontre sua programação
    #e
    pesquisa.seleciono a unidade "Consolação"
    #Então
    pesquisa.serão exibidas os resultados da pesquisa da unidade SESC "Consolação"

Cenário 20 - Realizar pesquisa da unidade SESC Florêncio De Abreu
    #Dado
    resource.que acesso a pagina do sesc
    #Quando
    home.clico no botão encontre sua programação
    #e
    pesquisa.seleciono a unidade "Florêncio de Abreu"
    #Então
    pesquisa.serão exibidas os resultados da pesquisa da unidade SESC "Florêncio de Abreu"

Cenário 21 - Realizar pesquisa da unidade SESC Guarulhos
    #Dado
    resource.que acesso a pagina do sesc
    #Quando
    home.clico no botão encontre sua programação
    #e
    pesquisa.seleciono a unidade "Guarulhos"
    #Então
    pesquisa.serão exibidas os resultados da pesquisa da unidade SESC "Guarulhos"

Cenário 22 - Realizar pesquisa da unidade SESC Interlagos
    #Dado
    resource.que acesso a pagina do sesc
    #Quando
    home.clico no botão encontre sua programação
    #e
    pesquisa.seleciono a unidade "Interlagos"
    #Então
    pesquisa.serão exibidas os resultados da pesquisa da unidade SESC "Interlagos"

Cenário 23 - Realizar pesquisa da unidade SESC Ipiranga
    #Dado
    resource.que acesso a pagina do sesc
    #Quando
    home.clico no botão encontre sua programação
    #e
    pesquisa.seleciono a unidade "Ipiranga"
    #Então
    pesquisa.serão exibidas os resultados da pesquisa da unidade SESC "Ipiranga"

Cenário 24 - Realizar pesquisa da unidade SESC Itaquera
    #Dado
    resource.que acesso a pagina do sesc
    #Quando
    home.clico no botão encontre sua programação
    #e
    pesquisa.seleciono a unidade "Itaquera"
    #Então
    pesquisa.serão exibidas os resultados da pesquisa da unidade SESC "Itaquera"

Cenário 25 - Realizar pesquisa da unidade SESC Jundiaí
    #Dado
    resource.que acesso a pagina do sesc
    #Quando
    home.clico no botão encontre sua programação
    #e
    pesquisa.seleciono a unidade "Jundiaí"
    #Então
    pesquisa.serão exibidas os resultados da pesquisa da unidade SESC "Jundiaí"

Cenário 26 - Realizar pesquisa da unidade SESC Mogi das Cruzes
    #Dado
    resource.que acesso a pagina do sesc
    #Quando
    home.clico no botão encontre sua programação
    #e
    pesquisa.seleciono a unidade "Mogi das Cruzes"
    #Então
    pesquisa.serão exibidas os resultados da pesquisa da unidade SESC "Mogi das Cruzes"

Cenário 27 - Realizar pesquisa da unidade SESC Osasco
    #Dado
    resource.que acesso a pagina do sesc
    #Quando
    home.clico no botão encontre sua programação
    #e
    pesquisa.seleciono a unidade "Osasco"
    #Então
    pesquisa.serão exibidas os resultados da pesquisa da unidade SESC "Osasco"

Cenário 28 - Realizar pesquisa da unidade SESC Parque Dom Pedro II
    #Dado
    resource.que acesso a pagina do sesc
    #Quando
    home.clico no botão encontre sua programação
    #e
    pesquisa.seleciono a unidade "Parque Dom Pedro II"
    #Então
    pesquisa.serão exibidas os resultados da pesquisa da unidade SESC "Parque Dom Pedro II"

Cenário 29 - Realizar pesquisa da unidade SESC Pinheiros
    #Dado
    resource.que acesso a pagina do sesc
    #Quando
    home.clico no botão encontre sua programação
    #e
    pesquisa.seleciono a unidade "Pinheiros"
    #Então
    pesquisa.serão exibidas os resultados da pesquisa da unidade SESC "Pinheiros"

Cenário 30 - Realizar pesquisa da unidade SESC Pompeia
    #Dado
    resource.que acesso a pagina do sesc
    #Quando
    home.clico no botão encontre sua programação
    #e
    pesquisa.seleciono a unidade "Pompeia"
    #Então
    pesquisa.serão exibidas os resultados da pesquisa da unidade SESC "Pompeia"

Cenário 31 - Realizar pesquisa da unidade SESC Presidente Prudente
    #Dado
    resource.que acesso a pagina do sesc
    #Quando
    home.clico no botão encontre sua programação
    #e
    pesquisa.seleciono a unidade "Presidente Prudente"
    #Então
    pesquisa.serão exibidas os resultados da pesquisa da unidade SESC "Presidente Prudente"

Cenário 32 - Realizar pesquisa da unidade SESC Registro
    #Dado
    resource.que acesso a pagina do sesc
    #Quando
    home.clico no botão encontre sua programação
    #e
    pesquisa.seleciono a unidade "Registro"
    #Então
    pesquisa.serão exibidas os resultados da pesquisa da unidade SESC "Registro"

Cenário 33 - Realizar pesquisa da unidade SESC Ribeirão Preto
    #Dado
    resource.que acesso a pagina do sesc
    #Quando
    home.clico no botão encontre sua programação
    #e
    pesquisa.seleciono a unidade "Ribeirão Preto"
    #Então
    pesquisa.serão exibidas os resultados da pesquisa da unidade SESC "Ribeirão Preto"

Cenário 34 - Realizar pesquisa da unidade SESC Rio Preto
    #Dado
    resource.que acesso a pagina do sesc
    #Quando
    home.clico no botão encontre sua programação
    #e
    pesquisa.seleciono a unidade "Rio Preto"
    #Então
    pesquisa.serão exibidas os resultados da pesquisa da unidade SESC "Rio Preto"

Cenário 35 - Realizar pesquisa da unidade SESC Santana
    #Dado
    resource.que acesso a pagina do sesc
    #Quando
    home.clico no botão encontre sua programação
    #e
    pesquisa.seleciono a unidade "Santana"
    #Então
    pesquisa.serão exibidas os resultados da pesquisa da unidade SESC "Santana"

Cenário 36 - Realizar pesquisa da unidade SESC Santo Amaro
    #Dado
    resource.que acesso a pagina do sesc
    #Quando
    home.clico no botão encontre sua programação
    #e
    pesquisa.seleciono a unidade "Santo Amaro"
    #Então
    pesquisa.serão exibidas os resultados da pesquisa da unidade SESC "Santo Amaro"

Cenário 37 - Realizar pesquisa da unidade SESC Santo André
    #Dado
    resource.que acesso a pagina do sesc
    #Quando
    home.clico no botão encontre sua programação
    #e
    pesquisa.seleciono a unidade "Santo André"
    #Então
    pesquisa.serão exibidas os resultados da pesquisa da unidade SESC "Santo André"

Cenário 38 - Realizar pesquisa da unidade SESC Santos
    #Dado
    resource.que acesso a pagina do sesc
    #Quando
    home.clico no botão encontre sua programação
    #e
    pesquisa.seleciono a unidade "Santos"
    #Então
    pesquisa.serão exibidas os resultados da pesquisa da unidade SESC "Santos"

Cenário 39 - Realizar pesquisa da unidade SESC São Caetano 
#String da unidade São Caetano apresenta um espaço no final. Verificar com DEV
    #Dado
    resource.que acesso a pagina do sesc
    #Quando
    home.clico no botão encontre sua programação
    #e
    pesquisa.seleciono a unidade "São Caetano "
    #Então
    pesquisa.serão exibidas os resultados da pesquisa da unidade SESC "São Caetano "

Cenário 40 - Realizar pesquisa da unidade SESC São Carlos 
    #Dado
    resource.que acesso a pagina do sesc
    #Quando
    home.clico no botão encontre sua programação
    #e
    pesquisa.seleciono a unidade "São Carlos"
    #Então
    pesquisa.serão exibidas os resultados da pesquisa da unidade SESC "São Carlos"

Cenário 41 - Realizar pesquisa da unidade SESC São José dos Campos
    #Dado
    resource.que acesso a pagina do sesc
    #Quando
    home.clico no botão encontre sua programação
    #e
    pesquisa.seleciono a unidade "São José dos Campos"
    #Então
    pesquisa.serão exibidas os resultados da pesquisa da unidade SESC "São José dos Campos"

Cenário 42 - Realizar pesquisa da unidade SESC Sorocaba
    #Dado
    resource.que acesso a pagina do sesc
    #Quando
    home.clico no botão encontre sua programação
    #e
    pesquisa.seleciono a unidade "Sorocaba"
    #Então
    pesquisa.serão exibidas os resultados da pesquisa da unidade SESC "Sorocaba"

Cenário 43 - Realizar pesquisa da unidade SESC Taubaté
    #Dado
    resource.que acesso a pagina do sesc
    #Quando
    home.clico no botão encontre sua programação
    #e
    pesquisa.seleciono a unidade "Taubaté"
    #Então
    pesquisa.serão exibidas os resultados da pesquisa da unidade SESC "Taubaté"

Cenário 44 - Realizar pesquisa da unidade SESC Vila Mariana
    #Dado
    resource.que acesso a pagina do sesc
    #Quando
    home.clico no botão encontre sua programação
    #e
    pesquisa.seleciono a unidade "Vila Mariana"
    #Então
    pesquisa.serão exibidas os resultados da pesquisa da unidade SESC "Vila Mariana"

##############################################################################################################

Cenário 45 - Realizar pesquisa por area todas
    [tags]     teste
    #Dado
    resource.que acesso a pagina do sesc
    #Quando
    resource.Clico no botão aceitar cookie
    home.clico no botão encontre sua programação
    #e
    pesquisa.seleciono a area "Todas"
    #Então
    pesquisa.serão exibidas os resultados da pesquisa area SESC "Todas"

Cenário 46 - Realizar pesquisa por area ações para cidadania
    #Dado
    resource.que acesso a pagina do sesc
    #Quando
    home.clico no botão encontre sua programação
    #e
    pesquisa.seleciono a area "ações para cidadania"
    #Então
    pesquisa.serão exibidas os resultados da pesquisa area SESC "ações para cidadania"

Cenário 47 - Realizar pesquisa por area Alimentação 
    #Dado
    resource.que acesso a pagina do sesc
    #Quando
    home.clico no botão encontre sua programação
    #e
    pesquisa.seleciono a area "Alimentação" 
    #Então
    pesquisa.serão exibidas os resultados da pesquisa area SESC "Alimentação"

Cenário 48 - Realizar pesquisa por area Artes Visuais 
    #Dado
    resource.que acesso a pagina do sesc
    #Quando
    home.clico no botão encontre sua programação
    #e
    pesquisa.seleciono a area "Artes Visuais"
    #Então
    pesquisa.serão exibidas os resultados da pesquisa area SESC "Artes Visuais"

Cenário 49 - Realizar pesquisa por area Ações Para Cidadania 
    #Dado
    resource.que acesso a pagina do sesc
    #Quando
    home.clico no botão encontre sua programação
    #e
    pesquisa.seleciono a area "Ações Para Cidadania "
    #Então
    pesquisa.serão exibidas os resultados da pesquisa area SESC "Ações Para Cidadania "

Cenário 50 - Realizar pesquisa por area Cinema E Video
    #Dado
    resource.que acesso a pagina do sesc
    #Quando
    home.clico no botão encontre sua programação
    #e
    pesquisa.seleciono a area "Cinema E Video"
    #Então
    pesquisa.serão exibidas os resultados da pesquisa area SESC "Cinema E Video"

Cenário 51 - Realizar pesquisa por area Ações Para Cidadania 
    #Dado
    resource.que acesso a pagina do sesc
    #Quando
    home.clico no botão encontre sua programação
    #e
    pesquisa.seleciono a area "Ações Para Cidadania "
    #Então
    pesquisa.serão exibidas os resultados da pesquisa area SESC "Ações Para Cidadania "

Cenário 52 - Realizar pesquisa por area Circo
    #Dado
    resource.que acesso a pagina do sesc
    #Quando
    home.clico no botão encontre sua programação
    #e
    pesquisa.seleciono a area "Circo"
    #Então
    pesquisa.serão exibidas os resultados da pesquisa area SESC "Circo"

Cenário 53 - Realizar pesquisa por area Ações Para Cidadania 
    #Dado
    resource.que acesso a pagina do sesc
    #Quando
    home.clico no botão encontre sua programação
    #e
    pesquisa.seleciono a area "Ações Para Cidadania "
    #Então
    pesquisa.serão exibidas os resultados da pesquisa area SESC "Ações Para Cidadania "

Cenário 54 - Realizar pesquisa por area Crianças  
    #Dado
    resource.que acesso a pagina do sesc
    #Quando
    home.clico no botão encontre sua programação
    #e
    pesquisa.seleciono a area "Crianças"
    #Então
    pesquisa.serão exibidas os resultados da pesquisa area SESC "Crianças"

Cenário 55 - Realizar pesquisa por area Ações Para Cidadania 
    #Dado
    resource.que acesso a pagina do sesc
    #Quando
    home.clico no botão encontre sua programação
    #e
    pesquisa.seleciono a area "Ações Para Cidadania "
    #Então
    pesquisa.serão exibidas os resultados da pesquisa area SESC "Ações Para Cidadania "

Cenário 56 - Realizar pesquisa por area Dança
    #Dado
    resource.que acesso a pagina do sesc
    #Quando
    home.clico no botão encontre sua programação
    #e
    pesquisa.seleciono a area "Dança"
    #Então
    pesquisa.serão exibidas os resultados da pesquisa area SESC "Dança"

Cenário 57 - Realizar pesquisa por area Esporte E Atividade Física 
    #Dado
    resource.que acesso a pagina do sesc
    #Quando
    home.clico no botão encontre sua programação
    #e
    pesquisa.seleciono a area "Esporte E Atividade Física"
    #Então
    pesquisa.serão exibidas os resultados da pesquisa area SESC "Esporte E Atividade Física"

Cenário 58 - Realizar pesquisa por area Gestão Cultural
    #Dado
    resource.que acesso a pagina do sesc
    #Quando
    home.clico no botão encontre sua programação
    #e
    pesquisa.seleciono a area "Gestão Cultural"
    #Então
    pesquisa.serão exibidas os resultados da pesquisa area SESC "Gestão Cultural"

Cenário 59 - Realizar pesquisa por area Idosos
    #Dado
    resource.que acesso a pagina do sesc
    #Quando
    home.clico no botão encontre sua programação
    #e
    pesquisa.seleciono a area "Idosos"
    #Então
    pesquisa.serão exibidas os resultados da pesquisa area SESC "Idosos"

Cenário 60 - Realizar pesquisa por area Ações Para Cidadania 
    #Dado
    resource.que acesso a pagina do sesc
    #Quando
    home.clico no botão encontre sua programação
    #e
    pesquisa.seleciono a area "Ações Para Cidadania "
    #Então
    pesquisa.serão exibidas os resultados da pesquisa area SESC "Ações Para Cidadania "

Cenário 61 - Realizar pesquisa por area Intergerações  
    #Dado
    resource.que acesso a pagina do sesc
    #Quando
    home.clico no botão encontre sua programação
    #e
    pesquisa.seleciono a area "Intergerações"
    #Então
    pesquisa.serão exibidas os resultados da pesquisa area SESC "Intergerações"

Cenário 62 - Realizar pesquisa por area Jovens
    #Dado
    resource.que acesso a pagina do sesc
    #Quando
    home.clico no botão encontre sua programação
    #e
    pesquisa.seleciono a area "Jovens"
    #Então
    pesquisa.serão exibidas os resultados da pesquisa area SESC "Jovens"

Cenário 63 - Realizar pesquisa por area Literatura
    #Dado
    resource.que acesso a pagina do sesc
    #Quando
    home.clico no botão encontre sua programação
    #e
    pesquisa.seleciono a area "Literatura"
    #Então
    pesquisa.serão exibidas os resultados da pesquisa area SESC "Literatura"

Cenário 64 - Realizar pesquisa por area Meio Ambiente
    #Dado
    resource.que acesso a pagina do sesc
    #Quando
    home.clico no botão encontre sua programação
    #e
    pesquisa.seleciono a area "Meio Ambiente"
    #Então
    pesquisa.serão exibidas os resultados da pesquisa area SESC "Meio Ambiente"

Cenário 65 - Realizar pesquisa por area Multilinguagem
    #Dado
    resource.que acesso a pagina do sesc
    #Quando
    home.clico no botão encontre sua programação
    #e
    pesquisa.seleciono a area "Multilinguagem"
    #Então
    pesquisa.serão exibidas os resultados da pesquisa area SESC "Multilinguagem"

Cenário 66 - Realizar pesquisa por area Música
    #Dado
    resource.que acesso a pagina do sesc
    #Quando
    home.clico no botão encontre sua programação
    #e
    pesquisa.seleciono a area "Música"
    #Então
    pesquisa.serão exibidas os resultados da pesquisa area SESC "Música"

Cenário 67 - Realizar pesquisa por area Público Em Geral 
    #Dado
    resource.que acesso a pagina do sesc
    #Quando
    home.clico no botão encontre sua programação
    #e
    pesquisa.seleciono a area "Público Em Geral"
    #Então
    pesquisa.serão exibidas os resultados da pesquisa area SESC "Público Em Geral"

Cenário 68 - Realizar pesquisa por area Saúde
    #Dado
    resource.que acesso a pagina do sesc
    #Quando
    home.clico no botão encontre sua programação
    #e
    pesquisa.seleciono a area "Saúde"
    #Então
    pesquisa.serão exibidas os resultados da pesquisa area SESC "Saúde"

Cenário 69 - Realizar pesquisa por area Teatro
    #Dado
    resource.que acesso a pagina do sesc
    #Quando
    home.clico no botão encontre sua programação
    #e
    pesquisa.seleciono a area "Teatro"
    #Então
    pesquisa.serão exibidas os resultados da pesquisa area SESC "Teatro"

Cenário 70 - Realizar pesquisa por area Tecnologias E Artes 
    #Dado
    resource.que acesso a pagina do sesc
    #Quando
    home.clico no botão encontre sua programação
    #e
    pesquisa.seleciono a area "Tecnologias E Artes"
    #Então
    pesquisa.serão exibidas os resultados da pesquisa area SESC "Tecnologias E Artes"

Cenário 71 - Realizar pesquisa por area Turismo 
    #Dado
    resource.que acesso a pagina do sesc
    #Quando
    home.clico no botão encontre sua programação
    #e
    pesquisa.seleciono a area "Turismo"
    #Então
    pesquisa.serão exibidas os resultados da pesquisa area SESC "Turismo"