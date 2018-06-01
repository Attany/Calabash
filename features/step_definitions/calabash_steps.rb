require 'calabash-android/calabash_steps'

When(/^I Click on the right arrow$/) do
  i = 0
  while i < 8
     i += 1
     touch "* id:'stated_arrow'"
  end
end

When(/^I Click on Começar$/) do
  touch "* id:'page_dot'"
end

When(/^I Click on Minha empresa já possui cadastro$/) do
  touch "* id:'tv_already_registered'"
end

When(/^I Click on Apagar meus dados desse dispositivo$/) do
  touch "* id:'tv_erase_all_data'"
end

When(/^I Click on Sim, tenho certeza!$/) do
  touch "* id:'button1'"
end

When(/^I Fill Login E\-mail Field with a valid e\-mail$/) do
  query "* id:'login_email'", { setText: "thales@pdvend.com.br" }
end

When(/^I Fill Login Password Field with a invalid password$/) do
  query "* id:'login_password'", { setText: "facanacaveiraQ" }
end

When(/^I Click on Entrar$/) do
  touch "* id:'confirm'"
end

Then(/^a message informing E\-mail ou senha incorretos is displayed$/) do
  pending # Write code here that turns the phrase above into concrete actions
end
