Feature: Website Navigation
	In order to navigate website pages
	I need to be able to click on navigation

  Scenario: Going to page "Services"
    Given that I am on cozelix Home                   
    When I click on link Services
    Then the data should be "Business Application Services"
  
  Scenario: Going to page "About us"
    Given that I am on services page                  
    When I click on link About us
    Then the data should be "As a team and individuals,"
  
  Scenario: Going to page "Contact us"
    Given that I am on about us page                  
    When I click on link Contact us
    Then the data should be "World Headquarters"
  
