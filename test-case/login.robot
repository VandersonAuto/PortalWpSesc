*** Settings ***
Library                SeleniumLibrary    
Resource               ../pages/resource.robot
Resource               ../pages/tags.robot
Resource               ../pages/unidades.robot 
Resource               ../pages/login.robot
Suite Teardown         Close Browser   
Suite Setup            Abrir navegador

*** Test Cases ***
Cenário 1 - Realizar login com sucesso
    [tags]         teste
    #Dado 
    login.que estou na pagina de login
    #usuario apenas para teste 
    #e
    resource.Clico no botão aceitar cookie
    #e
    login.insiro usuario correto "henrique_schulter@hotmail.com" 
    Capture Page Screenshot
    #e 
    login.insiro senha correta "Fpcac123"
    #Quando 
    login.Clicar em entrar 
    #Então 
    login.sou direcionado para area logada

# Mensagem de erro sobre usuário incorreto, apresenta LOCATOR que desaparece 
# antes de ser detectado pela automação: "*Nenhum usuário foi encontrado."
Cenário 2 - Tentar logar com usuario incorreto
    #Dado 
    login.que estou na pagina de login
    #e 
    resource.Clico no botão aceitar cookie
    #e 
    login.insiro "usuario incorreto"
    #Quando 
    login.Clicar em entrar 
    #Então 
    login.mensagem de usuario inexistente é apresentada

# Mensagem de erro sobre SENHA incorreta, apresenta LOCATOR que desaparece 
# antes de ser detectado pela automação: "*Nenhum usuário foi encontrado."
Cenário 3 - Tentar logar com usuario correto e senha incorreta
    #Dado 
    login.que estou na pagina de login
    #e 
    login.insiro usuario correto "henrique_schulter@hotmail"
    #Quando 
    login.insiro senha incorreta
    #Então 
    login.mensagem de senha incorreta é apresentada

# Não é possível realizar teste pois botão de entrar, não apresenta resposta
# caso usuario e senha não tenham sido completados
Cenário 4 - Realizar tentativa de login sem inserir usuario e senha
    login.que estou na pagina de login
    resource.Clico no botão aceitar cookie
    #E
    login.Clicar em entrar 
    #Então 
    mensagem de erro é apresentada


    




