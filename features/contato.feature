Feature: Fale Conosco
    Como visitante (all)
    Gostaria de entrar em contato com o desenvolvedor da aplicação
    Para solicitar informações, fazer reclamações, sugestões, elogiar, etc.
    
    Scenario: Fale Conosco
        Given Eu estou na pagina inicial
        When Eu clicar no botao Fale Conosco
        And Eu preencher <Johnny> com Seu nome
        And Eu preencher <johny@gmail.com> com email
        And Eu preencher <asdiioasudi asodiausdoiu asdoiuasdoiu sdoiuasodiu> com mensagem
        And Eu clicar no botao enviar
        Then mensagem enviada
    
    Scenario: Fale Conosco - Sem mensagem
        Given Eu estou na pagina inicial
        When Eu clicar no botao Fale Conosco
        And Eu preencher <Ayrton> com Seu nome
        And Eu preencher <ayrton@yahoo.com> com email
        And Eu preencher  com mensagem
        And Eu clicar no botao enviar
        Then mensagem enviada
        
    Scenario: Fale Conosco - Sem Nome e E-mail
        Given Eu estou na pagina inicial
        When Eu clicar no botao Fale Conosco
        And Eu preencher com Seu nome
        And Eu preencher com email
        And Eu preencher <123444 555 asddfww> com mensagem
        And Eu clicar no botao enviar
        Then mensagem enviada