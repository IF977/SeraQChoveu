Feature: Recuperar Senha
    Como usuário
    Gostaria de recuperar senha de login
    Para poder retomar o acesso a aplicação novamente
    
    Scenario: Recupear Senha
        Given Eu estou na pagina de login
        When Eu clicar no link esqueceu a senha
        And Eu preencher <jmsf2@cin.ufpe.br> com email
        And Eu clicar no botao enviar
        Then nova senha enviada
    
     Scenario: Recupear Senha - E-mail errado
        Given Eu estou na pagina de login
        When Eu clicar no link esqueceu a senha
        And Eu preencher <1111111111> com email
        And Eu clicar no botao enviar
        Then nova senha enviada
    
    Scenario: Recupear Senha - Sem E-mail
        Given Eu estou na pagina de login
        When Eu clicar no link esqueceu a senha
        And Eu preencher  com email
        And Eu clicar no botao enviar
        Then nova senha enviada
    