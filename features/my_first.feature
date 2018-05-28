Feature: Login feature

  Scenario: Login successful
    When I Swipe the screen to the right
    And I Click on "Começar"
    And I Click on "Minha empresa já possui cadastro"
    And I Click on “Apagar meus dados desse dispositivo”
    And I Click on “Sim, tenho certeza!”
    And I Fill Login E-mail Field with a valid e-mail
    And I Fill Login Password Field with a valid password
    And I Click on “Entrar”
    Then the Open cash screen is displayed
