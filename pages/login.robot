*** Settings ***
Library          SeleniumLibrary

*** Variables ***
${BROWSER}                 chrome
${HOME}                    https://www.sescsp.org.br/
${PAGINA_LOGIN}            https://www.sescsp.org.br/login/

***Keywords***
que estou na pagina de login
    Open Browser    url:      ${BROWSER}
    Go To                     ${PAGINA_LOGIN}      

insiro usuario correto "${usuario_correto}"
    Input Text                           //input[@placeholder='Email']    ${usuario_correto}   
    
insiro senha correta ${senha_correta}   
    Input Password                       //*[@type="password"]            ${senha_correta} 

insiro senha incorreta
    Input Password                       //*[@type="password"]            habudagas

Clicar em entrar    
    Click Button                         Entrar   

sou direcionado para area logada
    Set Selenium Timeout                 20 seconds
    Element Should Contain               //*[text()="Olá "]    Olá   

insiro "${usuario incorreto}" 
    Wait Until Element Is Enabled        //input[@placeholder='Email']         
    Input Text                           //input[@placeholder='Email']        ${usuario incorreto}

#Questão: Mensagem de erro sobre usuário incorreto, apresenta LOCATOR que desaparece 
#antes de ser detectado pela automação: "*Nenhum usuário foi encontrado."
mensagem de usuario inexistente é apresentada
    Wait Until Element Is Enabled        //*[@class="notfound-user"]

#Questão: Mensagem de erro sobre SENHA incorreta, apresenta LOCATOR que desaparece 
#antes de ser detectado pela automação: "*Nenhum usuário foi encontrado."
mensagem de senha incorreta é apresentada
    Wait Until Element Is Enabled        //*[@class="notfound-user"]


      
    