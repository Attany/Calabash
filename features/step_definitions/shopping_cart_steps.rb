require 'calabash-android/calabash_steps'

Given(/^I'm logged in$/) do
  pending # Write code here that turns the phrase above into concrete actions
end

Given(/^I Click on Abrir Caixa$/) do
  touch "* id:'button1'"
end

When(/^I Click on a product from product catalog$/) do
  touch("* text:'R$ 1,00'")
end

When(/^I Click on a Shopping Cart icon$/) do
  touch("* id:'view_cart_btn'")
end

Then(/^the shopping cart screen is displayed$/) do
  element_exists("* id:'discount_label'")
end

When(/^I Click on Product Discount button$/) do
  touch("* id:'cart_discount_btn'")
end

Then(/^the Product Discount dialogue box is displayed$/) do
  wait_for_text('Desconto produto', timeout: 2)
end

When(/^I Click on More Options button$/) do
  touch("* id:'cart_remove_btn'")
end

Then(/^the more options dialogue box is displayed$/) do
  wait_for_text('Mais Opções', timeout: 2)
end

When(/^I Click on Global Discount button$/) do
  touch("* id:'bt_discount'")
end

Then(/^the Global Discount dialogue box is displayed$/) do
  wait_for_text('Desconto global', timeout: 2)
end

When(/^I grant a product discount value in percentage$/) do
  touch("* id:'cart_discount_btn'")
  query "* id:'tv_discount'", { setText: "10" }
end

Then(/^the value with product discount is correctly calculated$/) do
  element_exists("* id:'tv_total_discount' text:'0,90'")
end

When(/^I grant a global discount value in percentage$/) do
  touch("* id:'bt_discount'")
  query "* id:'tv_discount'", { setText: "10" }
end

Then(/^the value with global discount is correctly calculated$/) do
  element_exists("* id:'tv_total_discount' text:'0,90'")
end

When(/^I grant a product discount value in money$/) do
  touch("* id:'cart_discount_btn'")
  query "* id:'tv_discount'", { setText: "10" }
end

When(/^I grant a global discount value in money$/) do
  touch("* id:'bt_discount'")
  query "* id:'tv_percent'", { setText: "10" }
end

When(/^I Click on Ok$/) do
  touch("* id:'button1'")
end

Then(/^the Discount and Final value is correctly calculated$/) do
  pending # Write code here that turns the phrase above into concrete actions
end
