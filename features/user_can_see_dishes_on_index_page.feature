Feature: User can see dishes on index page
    As a restaurant owner
    In order to have my visitors order my food
    I would like them to see my dishes as soon as they visit the site


    Scenario: Use can see dishes
        Given there is a dish called "Tony's Special" on restaurant's menu
        And I visit the application
        Then I should see "Tony's Special"
