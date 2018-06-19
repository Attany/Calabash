Feature: Shopping Cart

@view_shopping_cart_successfully
  Scenario: View Shopping Cart Successfully
    Given I'm logged in
    And I Click on Abrir Caixa
    When I Click on a product from product catalog
    And I Click on a Shopping Cart icon
    Then the shopping cart screen is displayed

@view_product_discount_button_successfully
  Scenario: View Product Discount button successfully
    Given I'm logged in
    And I Click on Abrir Caixa
    When I Click on a product from product catalog
    And I Click on a Shopping Cart icon
    And I Click on Product Discount button
    Then the Product Discount dialogue box is displayed

@view_more_options_button_successfully
  Scenario: View More Options button successfully
    Given I'm logged in
    And I Click on Abrir Caixa
    When I Click on a product from product catalog
    And I Click on a Shopping Cart icon
    And I Click on More Options button
    Then the more options dialogue box is displayed

@view_global_discount_button_successfully
  Scenario: View Global Discount Button Successfully
    Given I'm logged in
    And I Click on Abrir Caixa
    When I Click on a product from product catalog
    And I Click on a Shopping Cart icon
    And I Click on Global Discount button
    Then the Global Discount dialogue box is displayed

@grant_product_discount_in_percentage
  Scenario: Grant product discount in percentage
    Given I'm logged in
    And I Click on Abrir Caixa
    When I Click on a product from product catalog
    And I Click on a Shopping Cart icon
    And I Click on Product Discount button
    And I grant a product discount value in percentage
    Then the value with product discount is correctly calculated

@grant_global_discount_in_percentage
  Scenario: Grant global discount in percentage
    Given I'm logged in
    And I Click on Abrir Caixa
    When I Click on a product from product catalog
    And I Click on a Shopping Cart icon
    And I Click on Global Discount button
    And I grant a global discount value in percentage
    Then the value with global discount is correctly calculated

@grant_product_discount_in_money
  Scenario: Grant product discount in money
    Given I'm logged in
    And I Click on Abrir Caixa
    When I Click on a product from product catalog
    And I Click on a Shopping Cart icon
    And I Click on Product Discount button
    And I grant a product discount value in money
    Then the value with product discount is correctly calculated

@grant_global_discount_in_money
  Scenario: Grant global discount in money
    Given I'm logged in
    And I Click on Abrir Caixa
    When I Click on a product from product catalog
    And I Click on a Shopping Cart icon
    And I Click on Global Discount button
    And I grant a global discount value in money
    Then the value with global discount is correctly calculated

@grant_product_discount_in_percentage_discount_and_final_value
  Scenario: Grant product discount in percentage Discount and Final value
    Given I'm logged in
    And I Click on Abrir Caixa
    When I Click on a product from product catalog
    And I Click on a Shopping Cart icon
    And I Click on Product Discount button
    And I grant a product discount value in percentage
    And I Click on Ok
    Then the Discount and Final value is correctly calculated

@grant_global_discount_in_percentage_discount_and_final_value
  Scenario: Grant global discount in percentage Discount and Final value
    Given I'm logged in
    And I Click on Abrir Caixa
    When I Click on a product from product catalog
    And I Click on a Shopping Cart icon
    And I Click on Global Discount button
    And I grant a global discount value in percentage
    Then the Discount and Final value is correctly calculated
