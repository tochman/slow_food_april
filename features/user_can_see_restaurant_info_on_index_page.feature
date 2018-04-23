Feature: User can see restaurant info on index page
  As a Visitor
  In order to know who I'm dealing with
  I would like to see basic information about the restaurant when I visit the site.


Scenario: Visitor visits the index page and should be presented with info about restaurant.
  Given I visit the application
  Then I should see "Eat"
  And I should see "Kungsgatan 10"
  And I should see "100 00 Stockholm"
  
