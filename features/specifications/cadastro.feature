Feature: Cadastro
    Como visitante (all)
    Gostaria de criar conta (com informações básicas) de acesso a aplicação
    Para poder acessar as funcionalidades da aplicação
    
    @javascript
    Scenario Outline: Criar uma nova conta
        Given Que eu clique em cadastro
        When eu preencher <nome> no campo de Login
        And eu preencher <e-mail> no campo de e-mail
        And eu preencher <senha> no campo de senha
        And eu preencher <repetir senha> no campo de repetir senha
        And eu preencher <cidade> no campo de cidade
        And eu preencher <data de nascimento> no campo de data de nascimento
        And clicar cadastrar
        Then cadastro completo
    
    Examples:
        | nome | e-mail | senha | repetir senha | cidade | data de nascimento |
        | Johnny | johnny@gmail.com | asdf | asdf | Ipojuca | 20/12/1990 |
        | Samir | samir@hotmail.com | hjkl | hjkl | Recife | 11/11/1994 |
        