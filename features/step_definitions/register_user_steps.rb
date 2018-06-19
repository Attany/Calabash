require 'calabash-android/calabash_steps'

When(/^I Fill Store’s Name Field with a valid name$/) do
  query "* id:'signup_company_name'", { setText: "Loja Teste 6" }
end

When(/^I Click one Company size$/) do
  touch "* id:'spinner_company_framework'"
  touch "* text:'Micro Empreendedor Individual'"
end

When(/^I Click a Target Audience$/) do
  touch "* id:'spinner_target_audience'"
  touch "* text:'Pessoa Física'"
end

When(/^I Click a Quantity of products saled per month$/) do
  touch "* id:'spinner_products_sold_per_month'"
  touch "* text:'até 100 produtos'"
end

When(/^I Click a Old form of management$/) do
  touch "* id:'spinner_business_management'"
  touch "* text:'Utilizo planilhas'"
end

When(/^I Click a Segment$/) do
  touch "* id:'spinner_segment'"
  touch "* text:'Alimentação'"
end

When(/^I Click on Continuar$/) do
  touch "* id:'continue_button'"
end

When(/^I Fill Register Name Field with a valid name$/) do
  query "* id:'signup_user_name'", { setText: "Loja Teste 6" }
end

When(/^I Fill Register Phone Field with a valid phone$/) do
  query "* id:'signup_user_phone'", { setText: "61987654321" }
end

When(/^I Fill Register E\-mail Field with a valid e\-mail$/) do
  query "* id:'signup_user_email'", { setText: "lojateste6@example.com" }
end

When(/^I Fill Register Password Field with a valid password$/) do
  query "* id:'signup_user_password'", { setText: "12345678" }
end

When(/^I Click on a State$/) do
  touch "* id:'spinner_signup_user_states'"
  touch "* text:'Acre'"
end

When(/^I click on Confirmar Cadastro$/) do
  touch "* id:'confirm_button'"
end

Then(/^the text Abertura de Caixa is displayed$/) do
  wait_for_text('Abertura de Caixa', timeout: 10)
end

#Scenario: Unsuccessful User Registration (all in blank)
Then(/^the Continuar button is not enabled$/) do
  element_exists("* id:'continue_button' enabled:'false'")
end

#Scenario: Unsuccessful User Registration (invalid phone)
When(/^I Fill Register Phone Field with a invalid phone$/) do
  query "* id:'signup_user_phone'", { setText: "1234" }
end

Then(/^an alert informing “Preencha o número de telefone com DDD” is displayed on phone field$/) do
  element_exists("* text:'Preencha o numero de telefone com DDD.' enabled:'true'")
end

#Scenario: User registration with already registered e-mail
Then(/^a message is displayed informing: “E\-mail já cadastrado”$/) do
  wait_for_text('E-mail inserido já está em uso', timeout: 5)
end

#Scenario: Unsuccessful User Registration (invalid e-mail)
When(/^I Fill Register E\-mail Field with a invalid e\-mail$/) do
  query "* id:'signup_user_email'", { setText: "lojateste" }
end

Then(/^an alert infoming “Endereço de e\-mail inválido” is displayed on e\-mail field$/) do
  element_exists("* text:'Endereço de e-mail inválido' enabled:'true'")
end

#Scenario: Unsuccessful User Registration (invalid password)
When(/^I Fill Register Password Field with a invalid password$/) do
  query "* id:'signup_user_password'", { setText: "1234" }
end

Then(/^an alert informing “A senha deve ser maior que oito caracteres!” is displayed on password field$/) do
  element_exists("* text:'A senha deve ser maior que 8 caracteres' enabled:'true'")
end

#Scenario: Unsuccessful User Registration (without internet)
When(/^I turn off the devices connection$/) do
#ligar o modo avião
system "#{default_device.adb_command} shell settings put global airplane_mode_on 1"
system "#{default_device.adb_command} shell am broadcast -a android.intent.action.AIRPLANE_MODE --ez state true > /dev/null"
end

Then(/^a message is displayed informing: “Ocorreu um erro ao fazer o cadastro\. Tente novamente em alguns minutos\.”$/) do
  wait_for_text('Ocorreu um problema ao se conectar com o servidor. Verifique se sua internet está funcionando', timeout: 20)

#desligar o modo avião
system "#{default_device.adb_command} shell settings put global airplane_mode_on 0"
system "#{default_device.adb_command} shell am broadcast -a android.intent.action.AIRPLANE_MODE --ez state false > /dev/null"
end
