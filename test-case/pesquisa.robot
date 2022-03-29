#Cenarios de teste
#robot -d results logar.robot
#variaveis ${}
# executar sem navegador robot -d results -v BROWSER:headlesschrome LoginAuto.robot


***Settings***
Suite Setup     Abrir navegador
Suite Teardown  close all browsers
Resource   ../pages/tags.robot
Resource   ../pages/resource.robot
Resource   ../pages/home.robot
Resource   ../pages/pesquisa.robot 
Resource   ../pages/unidades.robot

***Test Cases***



