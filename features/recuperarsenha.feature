Feature: Recuperar Senha
    Como usuário
    Gostaria de recuperar senha de login
    Para poder retomar o acesso a aplicação novamente
    
    Scenario Outline: Recupear Senha
        Given Eu estou na pagina de login
        When Eu clicar no link esqueceu a senha
        And Eu preencher <e-mail> com email
        And Eu clicar no botao enviar
        Then nova senha enviada
    
    Examples:
        |e-mail|
        |johnny@gmail.com|
        |samir@hotmail.com|
        ||