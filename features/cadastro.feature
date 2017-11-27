Feature: Cadastro
    Como visitante (all)
    Gostaria de criar conta (com informações básicas) de acesso a aplicação
    Para poder acessar as funcionalidades da aplicação
    
    
    Scenario: Criar uma nova conta
        Given Eu estou na pagina inicial
        When Eu clicar no botao cadastro
        And Eu preencher <vanessa> com nome
        And Eu preencher <vanessa@ufpe.br> com email
        And Eu preencher <fuma1> com senha
        And Eu preencher <fuma1> com confirme a senha
        And Eu clicar no botao criar minha conta
        Then cadastro completo
    
    Scenario: Criar uma nova conta - Senhas diferentes
        Given Eu estou na pagina inicial
        When Eu clicar no botao cadastro
        And Eu preencher <vanessa> com nome
        And Eu preencher <vanessa@ufpe.br> com email
        And Eu preencher <fuma1> com senha
        And Eu preencher <fuma1> com confirme a senha
        And Eu clicar no botao criar minha conta
        Then cadastro completo
        
    Scenario: Criar uma nova conta - Sem E-mail e Repetir senha
        Given Eu estou na pagina inicial
        When Eu clicar no botao cadastro
        And Eu preencher <samir> com nome
        And Eu preencher com email
        And Eu preencher <2333221> com senha
        And Eu preencher com confirme a senha
        And Eu clicar no botao criar minha conta
        Then cadastro completo
        