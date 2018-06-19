Feature: Register User

@successful_user_registration
  Scenario: Successful User Registration
    When I Click on the right arrow
    And I Click on Começar
    And I Fill Store’s Name Field with a valid name
    And I Click one Company size
    And I Click a Target Audience
    And I Click a Quantity of products saled per month
    And I Click a Old form of management
    And I Click a Segment
    And I Click on Continuar
    And I Fill Register Name Field with a valid name
    And I Fill Register Phone Field with a valid phone
    And I Fill Register E-mail Field with a valid e-mail
    And I Fill Register Password Field with a valid password
    And I Click on a State
    And I click on Confirmar Cadastro
    Then the text Abertura de Caixa is displayed

@unsuccessful_user_registration_all_in_blank
  Scenario: Unsuccessful User Registration (all in blank)
    When I Click on the right arrow
    And I Click on Começar
    Then the Continuar button is not enabled

@unsuccessful_user_registration_stores_name_in_blank
  Scenario: Unsuccessful User Registration (store's name in blank)
    When I Click on the right arrow
    And I Click on Começar
    And I Click one Company size
    And I Click a Target Audience
    And I Click a Quantity of products saled per month
    And I Click a Old form of management
    And I Click a Segment
    Then the Continuar button is not enabled

@unsuccessful_user_registration_company_size_in_blank
  Scenario: Unsuccessful User Registration (company size in blank)
    When I Click on the right arrow
    And I Click on Começar
    And I Fill Store’s Name Field with a valid name
    And I Click a Target Audience
    And I Click a Quantity of products saled per month
    And I Click a Old form of management
    And I Click a Segment
    Then the Continuar button is not enabled

@unsuccessful_user_registration_quantity_of_products_in_blank
  Scenario: Unsuccessful User Registration (Quantity of products saled per month in blank)
    When I Click on the right arrow
    And I Click on Começar
    And I Fill Store’s Name Field with a valid name
    And I Click one Company size
    And I Click a Target Audience
    And I Click a Old form of management
    And I Click a Segment
    Then the Continuar button is not enabled

@unsuccessful_user_registration_old_form_of_management_in_blank
  Scenario: Unsuccessful User Registration (Old form of management in blank)
    When I Click on the right arrow
    And I Click on Começar
    And I Fill Store’s Name Field with a valid name
    And I Click one Company size
    And I Click a Target Audience
    And I Click a Quantity of products saled per month
    And I Click a Segment
    Then the Continuar button is not enabled

@unsuccessful_user_registration_segment_in_blank
  Scenario: Unsuccessful User Registration (Segment in blank)
    When I Click on the right arrow
    And I Click on Começar
    And I Fill Store’s Name Field with a valid name
    And I Click one Company size
    And I Click a Target Audience
    And I Click a Quantity of products saled per month
    And I Click a Old form of management
    Then the Continuar button is not enabled

@unsuccessful_user_registration_name_in_blank
  Scenario: Unsuccessful User Registration (name in blank)
    When I Click on the right arrow
    And I Click on Começar
    And I Fill Store’s Name Field with a valid name
    And I Click one Company size
    And I Click a Target Audience
    And I Click a Quantity of products saled per month
    And I Click a Old form of management
    And I Click a Segment
    And I Click on Continuar
    And I Fill Register Phone Field with a valid phone
    And I Fill Register E-mail Field with a valid e-mail
    And I Fill Register Password Field with a valid password
    And I Click on a State
    Then the Continuar button is not enabled

@unsuccessful_user_registration_phone_in_blank
  Scenario: Unsuccessful User Registration (phone in blank)
    When I Click on the right arrow
    And I Click on Começar
    And I Fill Store’s Name Field with a valid name
    And I Click one Company size
    And I Click a Target Audience
    And I Click a Quantity of products saled per month
    And I Click a Old form of management
    And I Click a Segment
    And I Click on Continuar
    And I Fill Register Name Field with a valid name
    And I Fill Register E-mail Field with a valid e-mail
    And I Fill Register Password Field with a valid password
    And I Click on a State
    Then the Continuar button is not enabled

@unsuccessful_user_registration_email_in_blank
  Scenario: Unsuccessful User Registration (email in blank)
    When I Click on the right arrow
    And I Click on Começar
    And I Fill Store’s Name Field with a valid name
    And I Click one Company size
    And I Click a Target Audience
    And I Click a Quantity of products saled per month
    And I Click a Old form of management
    And I Click a Segment
    And I Click on Continuar
    And I Fill Register Name Field with a valid name
    And I Fill Register Phone Field with a valid phone
    And I Fill Register Password Field with a valid password
    And I Click on a State
    Then the Continuar button is not enabled

@unsuccessful_user_registration_password_in_blank
  Scenario: Unsuccessful User Registration (password in blank)
    When I Click on the right arrow
    And I Click on Começar
    And I Fill Store’s Name Field with a valid name
    And I Click one Company size
    And I Click a Target Audience
    And I Click a Quantity of products saled per month
    And I Click a Old form of management
    And I Click a Segment
    And I Click on Continuar
    And I Fill Register Name Field with a valid name
    And I Fill Register Phone Field with a valid phone
    And I Fill Register E-mail Field with a valid e-mail
    And I Click on a State
    Then the Continuar button is not enabled

@unsuccessful_user_registration_state_in_blank
  Scenario: Unsuccessful User Registration (state in blank)
    When I Click on the right arrow
    And I Click on Começar
    And I Fill Store’s Name Field with a valid name
    And I Click one Company size
    And I Click a Target Audience
    And I Click a Quantity of products saled per month
    And I Click a Old form of management
    And I Click a Segment
    And I Click on Continuar
    And I Fill Register Name Field with a valid name
    And I Fill Register Phone Field with a valid phone
    And I Fill Register E-mail Field with a valid e-mail
    And I Fill Register Password Field with a valid password
    Then the Continuar button is not enabled

@unsuccessful_user_registration_invalid_phone
  Scenario: Unsuccessful User Registration (invalid phone)
    When I Click on the right arrow
    And I Click on Começar
    And I Fill Store’s Name Field with a valid name
    And I Click one Company size
    And I Click a Target Audience
    And I Click a Quantity of products saled per month
    And I Click a Old form of management
    And I Click a Segment
    And I Click on Continuar
    And I Fill Register Name Field with a valid name
    And I Fill Register Phone Field with a invalid phone
    And I Fill Register E-mail Field with a valid e-mail
    And I Fill Register Password Field with a valid password
    And I Click on a State
    And I click on Confirmar Cadastro
    Then an alert informing “Preencha o número de telefone com DDD” is displayed on phone field

@user_registration_with_already_registered_email
  Scenario: User registration with already registered e-mail
    When I Click on the right arrow
    And I Click on Começar
    And I Fill Store’s Name Field with a valid name
    And I Click one Company size
    And I Click a Target Audience
    And I Click a Quantity of products saled per month
    And I Click a Old form of management
    And I Click a Segment
    And I Click on Continuar
    And I Fill Register Name Field with a valid name
    And I Fill Register Phone Field with a valid phone
    And I Fill Register E-mail Field with a valid e-mail
    And I Fill Register Password Field with a valid password
    And I Click on a State
    And I click on Confirmar Cadastro
    Then a message is displayed informing: “E-mail já cadastrado”

@unsuccessful_user_registration_invalid_email
  Scenario: Unsuccessful User Registration (invalid e-mail)
    When I Click on the right arrow
    And I Click on Começar
    And I Fill Store’s Name Field with a valid name
    And I Click one Company size
    And I Click a Target Audience
    And I Click a Quantity of products saled per month
    And I Click a Old form of management
    And I Click a Segment
    And I Click on Continuar
    And I Fill Register Name Field with a valid name
    And I Fill Register Phone Field with a valid phone
    And I Fill Register E-mail Field with a invalid e-mail
    And I Fill Register Password Field with a valid password
    And I Click on a State
    And I click on Confirmar Cadastro
    Then an alert infoming “Endereço de e-mail inválido” is displayed on e-mail field

@unsuccessful_user_registration_invalid_password
  Scenario: Unsuccessful User Registration (invalid password)
    When I Click on the right arrow
    And I Click on Começar
    And I Fill Store’s Name Field with a valid name
    And I Click one Company size
    And I Click a Target Audience
    And I Click a Quantity of products saled per month
    And I Click a Old form of management
    And I Click a Segment
    And I Click on Continuar
    And I Fill Register Name Field with a valid name
    And I Fill Register Phone Field with a valid phone
    And I Fill Register E-mail Field with a valid e-mail
    And I Fill Register Password Field with a invalid password
    And I Click on a State
    And I click on Confirmar Cadastro
    Then an alert informing “A senha deve ser maior que oito caracteres!” is displayed on password field

  @unsuccessful_user_registration_without_internet
    Scenario: Unsuccessful User Registration (without internet)
      When I Click on the right arrow
      And I Click on Começar
      And I turn off the devices connection
      And I Fill Store’s Name Field with a valid name
      And I Click one Company size
      And I Click a Target Audience
      And I Click a Quantity of products saled per month
      And I Click a Old form of management
      And I Click a Segment
      And I Click on Continuar
      And I Fill Register Name Field with a valid name
      And I Fill Register Phone Field with a valid phone
      And I Fill Register E-mail Field with a valid e-mail
      And I Fill Register Password Field with a valid password
      And I Click on a State
      And I click on Confirmar Cadastro
      Then a message is displayed informing: “Ocorreu um erro ao fazer o cadastro. Tente novamente em alguns minutos.”
