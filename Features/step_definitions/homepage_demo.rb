require 'watir'
require 'selenium-webdriver'

browser = Watir::Browser.new :chrome

Given(/^User have Google address$/) do

end

When('User enter Google webpage address') do
  browser.goto 'http://www.google.com'
  browser.manage.timeouts.implicit_wait = 10
end


Then('User should be on Google homepage') do
  title = browser.get.title
  puts title

  end