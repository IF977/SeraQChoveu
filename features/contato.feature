Feature: Fale Conosco
    Como visitante (all)
    Gostaria de entrar em contato com o desenvolvedor da aplicação
    Para solicitar informações, fazer reclamações, sugestões, elogiar, etc.
    
    @javascript
    Scenario Outline: Fale Conosco
        Given Eu estou na pagina inicial
        When Eu clicar no botao fale conosco
        And Eu preencher <nome> com nome
        And Eu preencher <e-mail> com email
        And Eu preencher <mensagem> com mensagem
        And clicar no botao enviar
        Then mensagem enviada
        
      Examples:
        |nome|e-mail|mensagem|
        |Johnny|johnny@gmail.com|asdf aosifuapsofiuoapsifuopiasu|
        |Samir|samir@hotmail.com|hjkl aofiasofiuj 987897h2hgh2jg|

