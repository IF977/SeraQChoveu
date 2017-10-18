Feature: Adicionar comentário
    As Usuário (logado)
    Gostaria de compartilhar informações sobre o aplicativo
    Para reportar eficiência ou não da predição da ferramenta

    @javascript
    Scenario Outline: Adicionar comentário
        Given Que eu clique em adicionar comentário
        When eu preencher <usuário> no campo nome
        And eu preencher <texto> no campo comentário
        And eu preencher <rate> no campo avaliação
        And clicar Enviar
        Then comentário enviado
    
    Examples:
        | usuário | texto | rate |
        | Johnny | asdfaf asfgag agag asg www | 5 |
        | Samir |asfasf kkkkk asidpioasudpoasidpoapsoifpoasifposai | 2 |
