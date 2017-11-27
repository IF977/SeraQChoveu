Feature: Login
    Como usuário
    Gostaria de realizar login na página inicial
    Para poder modificar informações pessoais
    
    Scenario: Login
        Given Eu estou na pagina inicial
        When Eu clicar no botao login
        And Eu preencher <johnny@gmail.com> com email
        And Eu preencher <asdff> com senha
        And Eu clicar no botao entrar
        Then login realizado
    
    Scenario: Login - Sem senha
        Given Eu estou na pagina inicial
        When Eu clicar no botao login
        And Eu preencher <samir@gmail.com> com email
        And Eu preencher com senha
        And Eu clicar no botao entrar
        Then login realizado
        
    Scenario: Login - E-mail inválido
        Given Eu estou na pagina inicial
        When Eu clicar no botao login
        And Eu preencher <vanessa> com email
        And Eu preencher <1234> com senha
        And Eu clicar no botao entrar
        Then login realizado
    
        