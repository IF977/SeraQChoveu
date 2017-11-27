Feature: Busca
    Como usuário logado (all)
    Gostaria de preencher data e lugar da viagem
    Para planejar melhor uma viagem
    
    
    Scenario: Busca
        Given Eu estou na pagina de busca
        When Eu preencher Recife com cidade
        And Eu preencher 01/01 com data
        And Eu clicar no botao procurar
        Then busca realizada
        
    Scenario: Busca Cidade errada
        Given Eu estou na pagina de busca
        When Eu preencher Ipojuca com cidade
        And Eu preencher 01/01 com data
        And Eu clicar no botao procurar
        Then busca realizada