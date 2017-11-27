Feature: Fale Conosco
    Como visitante (all)
    Gostaria de entrar em contato com o desenvolvedor da aplicação
    Para solicitar informações, fazer reclamações, sugestões, elogiar, etc.
    
    Scenario Outline: Fale Conosco
        Given Eu estou logado como usuario
        When Eu clicar no botao Fale Conosco
        And Eu preencher <nome> com Seu nome
        And Eu preencher <e-mail> com email
        And Eu preencher <mensagem> com mensagem
        And Eu clicar no botao enviar
        Then mensagem enviada
        
      Examples:
        |nome|e-mail|mensagem|
        |Johnny|johnny@gmail.com|asdf aosifuapsofiuoapsifuopiasu|
        |Samir|samir@hotmail.com|hjkl aofiasofiuj 987897h2hgh2jg|
        |ppppp||657987 789798 454654 12151|
        ||asofijsaofijsoifj||

