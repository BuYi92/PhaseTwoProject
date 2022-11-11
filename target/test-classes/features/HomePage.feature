Feature: HomePage Feature Scenario

  Background: 
    Given I have launched the application

  @regression
  Scenario Outline: This scenario is to add an item to basket and validate
    When I enter the correct username and password
    And I click on the Login Button
    And I click add to cart on "<Product>"
    Then My basket item number should be 1

    Examples: 
      | Product               |
      | Sauce Labs Bike Light |
