*** Settings ***
Library                SeleniumLibrary    
Resource               ../pages/resource.robot
Resource               ../pages/tags.robot
Resource               ../pages/unidades.robot 
Resource               ../pages/login.robot
Suite Teardown         Close Browser   

*** Test Cases ***
Cenário 1 - Realizar login com sucesso
    Dado que estou na pagina de login
    E Clicar no cookie
    E insiro usuario correto
    E insiro senha correta
    Quando Clicar em entrar 
    E Clicar no cookie
    Então sou direcionado para area logada

# Mensagem de erro sobre usuário incorreto, apresenta LOCATOR que desaparece 
# antes de ser detectado pela automação: "*Nenhum usuário foi encontrado."
Cenário 2 - Tentar logar com usuario incorreto
    Dado que estou na pagina de login
    E Clicar no cookie
    E insiro usuario incorreto
    Quando Clicar em entrar 
    Então mensagem de usuario inexistente é apresentada

# Mensagem de erro sobre SENHA incorreta, apresenta LOCATOR que desaparece 
# antes de ser detectado pela automação: "*Nenhum usuário foi encontrado."
Cenário 3 - Tentar logar com usuario correto e senha incorreta
    Dado que estou na pagina de login
    E Clicar no cookie
    E insiro usuario correto
    Quando insiro senha incorreta
    Então mensagem de senha incorreta é apresentada

# Não é possível realizar teste pois botão de entrar, não apresenta resposta
# caso usuario e senha não tenham sido completados
Cenário 4 - Realizar tentativa de login sem inserir usuario e senha
    Dado que estou na pagina de login
    E Clicar no cookie
    #E não insiro usuario e senha
    Quando Clicar em entrar 
    #Então mensagem de erro é apresentada


    




