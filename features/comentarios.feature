Feature: Adicionar comentário
    Como usuário (logado)
    Gostaria de compartilhar informações sobre o aplicativo
    Para reportar eficiência ou não da predição da ferramenta

    @javascript
    Scenario Outline: Adicionar comentário
        Given Eu estou na pagina inicial
        When Eu clicar no botao comentarios
        And Eu preencher <nome> com nome
        And Eu preencher <mensagem> com mensagem
        And Eu preencher <rate> com avaliacao
        And clicar no botao enviar
        Then comentario enviado
    
    Examples:
        |usuario|texto|rate|
        |kohnny|asdfaf asfgag agag asg www|5|
        | Samir | ddd aaa qqq rrrrr | 2 |