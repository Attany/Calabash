Feature: Login Feature

@unsuccessful
  Scenario: Login unsuccessful (Unregistered password)
    When I Click on the right arrow
    And I Click on Começar
    And I Click on Minha empresa já possui cadastro
    And I Click on Apagar meus dados desse dispositivo
    And I Click on Sim, tenho certeza!
    And I Fill Login E-mail Field with a valid e-mail
    And I Fill Login Password Field with a invalid password
    And I Click on Entrar
    Then a message informing E-mail ou senha incorretos is displayed
