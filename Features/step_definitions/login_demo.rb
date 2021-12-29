require 'watir'
require 'selenium-webdriver'

browser = Watir::Browser.new :chrome

Given(/^I am on the guru99 homepage$/) do
  browser.goto 'http://demo.guru99.com'
end

When(/^I enter blank details for the register$/) do
  browser.text_field(:name => "emailid").set(" ")
end

Then(/^the error message shown$/) do
  puts "Email is required".red

  browser.close
end

Given(/^I am on guru99 homepage$/) do
  browser = Watir::Browser.new :chrome
  browser.goto "http://demo.guru99.com"
  browser.window_maximize


end

When(/^I enter details for register$/) do
  browser.text_field(:name => "emailid").set("guru99@gmail.com")
  browser.button(:name => "btnLogin").click
  browser.manage.timeouts.implicit_wait = 50
end

Then(/^The login details shown$/) do
  puts "Successfully register!"
end
