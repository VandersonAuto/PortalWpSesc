*** Settings ***
Library          SeleniumLibrary

***Keywords***
E insiro usuario correto 
    Input Text                           //*[@id="page-login-sesc-usuarios"]/div/div[2]/div[2]/div[2]/div/label/input    henrique_schulter@hotmail.com     
    
E insiro senha correta   
    Input Password                       //*[@type="password"]    Fpcac123

Quando insiro senha incorreta
    Input Password                       //*[@type="password"]    habudagas

Quando Clicar em entrar    
    Click Button                         Entrar   

Então sou direcionado para area logada
    Title Should Be                      Sesc São Paulo

E insiro usuario incorreto
    Wait Until Element Is Enabled        //*[@id="page-login-sesc-usuarios"]/div/div[2]/div[2]/div[2]/div/label/input         
    Input Text                           //*[@id="page-login-sesc-usuarios"]/div/div[2]/div[2]/div[2]/div/label/input        xiforinfula@gmail.com

#Questão: Mensagem de erro sobre usuário incorreto, apresenta LOCATOR que desaparece 
#antes de ser detectado pela automação: "*Nenhum usuário foi encontrado."
Então mensagem de usuario inexistente é apresentada
    Wait Until Element Is Enabled        //*[@class="notfound-user"]

#Questão: Mensagem de erro sobre SENHA incorreta, apresenta LOCATOR que desaparece 
#antes de ser detectado pela automação: "*Nenhum usuário foi encontrado."
Então mensagem de senha incorreta é apresentada
    Wait Until Element Is Enabled        //*[@class="notfound-user"]


      
    