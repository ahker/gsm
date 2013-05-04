require 'rspec'
require "watir-webdriver"
require "watir-webdriver/extensions/alerts"

SITE = "www.cozelix.com"
BROWSER = Watir::Browser.start(SITE, :firefox)
PAGES = {
  "cozelix Home" => "http://www.cozelix.com/",
  "contact page" => "http://www.cozelix.com/contact.php",
  "services page" => "http://www.cozelix.com/services.php",
  "about us page" => "http://www.cozelix.com/about.php"
}
AlertMessage = ""

Given /^that I am on (.*)$/ do |page|
  BROWSER.goto(PAGES[page])
end


When /^I click on link (.*)$/ do |link|
  BROWSER.link(:text, link).click
end

When /^I click on button (.*)$/ do |button|
  BROWSER.button(:text, button).click
end

Then /^I click on ok on (.*)$/ do |button|
  BROWSER.alert.ok
end

Then /^check on alert for the text (.*)$/ do |data|
 BROWSER.alert.text.include?(data).should == true
end


Then /^the page title should be "([^\"]*)"$/ do |title|
  BROWSER.title.eql?(title).should == true
end


Then /^the data should be "([^\"]*)"$/ do |data|
  BROWSER.text.include?(data).should == true
end
