Feature: Login
    Como usuário
    Gostaria de realizar login na página inicial
    Para poder modificar informações pessoais
    
    Scenario Outline: Login
        Given Eu estou na pagina inicial
        When Eu clicar no botao login
        And Eu preencher <e-mail> com email
        And Eu preencher <senha> com senha
        And Eu clicar no botao entrar
        Then login realizado
    
    Examples:
        |e-mail|senha|
        |johnny@gmail.com|asdf|
        |samir@hotmail.com|hjkl|
        ||ffff|
        |jmsf2@cin.ufpe.br||
        