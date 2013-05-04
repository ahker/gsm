Feature: Contact us form
	In order to validate contact us form
  
  Scenario: Giving all Empty values
    Given that I am on contact page
    When I click on button Submit
    Then check on alert for the text Error
    When I click on ok on alert