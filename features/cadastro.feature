Feature: Cadastro
    Como visitante (all)
    Gostaria de criar conta (com informações básicas) de acesso a aplicação
    Para poder acessar as funcionalidades da aplicação
    
    
    Scenario Outline: Criar uma nova conta
        Given Eu estou na pagina inicial
        When Eu clicar no botao cadastro
        And Eu preencher <nome> com nome
        And Eu preencher <e-mail> com email
        And Eu preencher <senha> com senha
        And Eu preencher <repetir senha> com confirme a senha
        And Eu clicar no botao criar minha conta
        Then cadastro completo
    
    Examples:
        |nome|e-mail|senha|repetir senha|
        |Johnny|johnny@gmail.com|asdf|asdf|
        |Samir|samir@hotmail.com|hjkl|hjkl|
        |kkkk|||kfkfkf|
        ||sssss@asdds|ddddd||
        