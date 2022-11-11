Feature: Login Feature Scenario

  Background: 
    Given I have launched the application

  @regression
  Scenario: This scenario is to define the Happy Login
    When I enter the correct username and password
    And I click on the Login Button
    Then I should land on the home page

  @sanity
  Scenario: This scenario is to define the Unhappy Login
    When I enter the username as "abc@xyz.com" and Password as "Abc@12344"
    And I click on the Login Button
    Then I should get the error message "Epic sadface: Username and password do not match any user in this service"

  @sanity
  Scenario Outline: This scenario is to define the Unhappy Login outlined
    When I enter the username as "<Username>" and Password as "<Password>"
    And I click on the Login Button
    Then I should get the error message "Epic sadface: Username and password do not match any user in this service"

    Examples: 
      | UserName      | Password      |
      | lala@lulu.com | lalalulu@1234 |
