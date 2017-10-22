Feature: Adicionar comentário
    Como usuário (logado)
    Gostaria de compartilhar informações sobre o aplicativo
    Para reportar eficiência ou não da predição da ferramenta

    @javascript
    Scenario Outline: Adicionar comentário
        Given Estou na página inicial
        When eu clique em comentários
        And eu preencher <usuário> no campo Usuario
        And eu preencher <texto> no campo Texto
        And eu preencher <rate> no campo Rate
        And clicar Enviar
        Then comentário enviado
    
    Examples:
        |usuário|texto|rate|
        |Johnny|asdfaf asfgag agag asg www|5|
        |Samir|ddd aaa qqq rrrrr|2|
