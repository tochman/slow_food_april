@javascript
Feature: User can add Products to order
    As a potential customer
    In order to get the food I want
    I want to be able to add a product to my order 

Background:
    Given there is a dish called "Tony's Special" on restaurant's menu
    And there is a dish called "Hamburger Special" on restaurant's menu

Scenario: User adds a product to order by clicking "Order" button
    Given I visit the application
    And I click on "Order" for "Tony's Special"
    Then I should see "1 item" in my order
