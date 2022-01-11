# frozen_string_literal: true

require 'selenium-webdriver'
require 'rspec'
require 'watir'

def check_ccp_ui(browser)

  browser.button(:xpath => "//*[@id='grayscale_check']/div/label/span").click
  browser.button(:xpath => "//*[@id='grayscale_check']/div/label/span").click

  browser.button(:xpath => "//*[@id='TabDateRangeSelector']/div/div/div[2]/div/div").click

  browser.button(:xpath => "/html/body/div[3]/div[3]/div[1]/table/tbody/tr[1]/td[7]").click
  browser.button(:xpath => "/html/body/div[3]/div[3]/div[1]/table/tbody/tr[2]/td[5]").click

  browser.button(:xpath => "/html/body/div[3]/div[2]/div[2]/select[1]").click
  browser.button(:xpath => "/html/body/div[3]/div[2]/div[2]/select[1]/option[1]").click

  browser.button(:xpath => "/html/body/div[3]/div[4]/button[2]").click
  filter_text = browser.button(:xpath => "//*[@id='FilteredContainer']/div[1]").display?
  puts filter_text

  browser.button(:xpath => "//*[@id='search_type']").click

  browser.button(:xpath => "//*[@id='search_type']/option[1]").click

  browser.text_field(:xpath => "//*[@id='search_term']").send_keys("356100110010210")
  browser.button(:xpath => "//*[@id='header']/div[1]/div[2]/div/div/div/form/div/div[2]/button/i").click
end

describe 'logging in ccp_test' do
  it 'checks the web elements' do

    browser = Watir::Browser.new :chrome
    browser.window.maximize

    browser.goto("https://3md.okta.com/login/login.htm")
    sleep 10
    browser.text_field(:name => "username").send_keys("TMOAdminAgent@denaliai.com")
    browser.text_field(:name => "password").send_keys("7m9dx6ET3FQk")
    browser.button(:id => "okta-signin-submit").click
    sleep 5
    browser.goto("http://ccptest.denaliai-eadg.com/ccd/devices/356100110005111")
    sleep 6
    check_ccp_ui(browser)



    device_number = "356100110010210"
    expect(device_number.display?).to eq(true)
    browser.close
  end
end


