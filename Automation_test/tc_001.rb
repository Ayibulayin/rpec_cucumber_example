# This is about Selenium practice

require 'selenium-webdriver'

driver = Selenium::WebDriver.for :firefox
#driver.get("https://www.facebook.com")
driver.navigate.to("http://www.yahoo.com")
driver.navigate.to("http://www.google.com")
driver.navigate.back
driver.navigate.forward
driver.navigate.refresh
driver.manage.window.maximize
sleep(15)
driver.close





