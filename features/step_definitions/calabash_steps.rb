require 'calabash-android/calabash_steps'

When(/^I Swipe the screen to the right$/) do
  i = 0
  while i < 8
     i += 1
     perform_action('swipe' force: :normal, 'right')
  end
end

When(/^I Click on "([^"]*)"$/) do |arg1|
  tap_when_element_exists("android.widget.Button {text CONTAINS[c] '#{COMEÇAR}'}")
end

When(/^I Click on “Apagar meus dados desse dispositivo”$/) do
  pending # Write code here that turns the phrase above into concrete actions
end

When(/^I Click on “Sim, tenho certeza!”$/) do
  pending # Write code here that turns the phrase above into concrete actions
end

When(/^I Fill Login E\-mail Field with a valid e\-mail$/) do
  pending # Write code here that turns the phrase above into concrete actions
end

When(/^I Fill Login Password Field with a valid password$/) do
  pending # Write code here that turns the phrase above into concrete actions
end

When(/^I Click on “Entrar”$/) do
  pending # Write code here that turns the phrase above into concrete actions
end

Then(/^the Open cash screen is displayed$/) do
  pending # Write code here that turns the phrase above into concrete actions
end
