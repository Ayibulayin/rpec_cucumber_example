require 'selenium-webdriver'
require 'rspec'

RSpec.describe 'Filter Calendar' do

  before (:all) do
    @driver = Selenium::WebDriver.for :chrome
    @driver.manage.window.maximize
    @driver.manage.timeouts.implicit_wait = 10
    @driver.navigate.to('https://3md.okta.com/login/login.htm')
    @driver.find_element(:name, 'username').send_keys('TMOAdminAgent@denaliai.com')
    @driver.find_element(:name, 'password').send_keys('7m9dx6ET3FQk')
    @driver.find_element(:id, 'okta-signin-submit').click
    sleep 10
    @driver.navigate.to('http://ccptest.denaliai-eadg.com/ccd/devices/356100110005111')
  end
  after(:all) do
    @driver.quit
  end

  it 'filters calender' do
    @driver.find_element(:xpath, "//*[@id='TabDateRangeSelector']/div/div/div[2]/div/div").click
    @driver.find_element(:xpath, '/html/body/div[3]/div[3]/div[1]/table/tbody/tr[1]/td[7]').click
    @driver.find_element(:xpath, '/html/body/div[3]/div[3]/div[1]/table/tbody/tr[3]/td[2]').click
    @driver.find_element(:xpath, '/html/body/div[3]/div[3]/div[2]/select[1]').click
    @driver.find_element(:xpath, '/html/body/div[3]/div[3]/div[2]/select[3]').click
    @driver.find_element(:xpath, '/html/body/div[3]/div[3]/div[2]/select[3]/option[1]').click
    @driver.find_element(:xpath, '/html/body/div[3]/div[4]/span')
    @driver.find_element(:xpath, '/html/body/div[3]/div[4]/button[2]').click
    sleep 10
  end

  it 'gets badge text' do
    assert = @driver.find_element(xpath: '//*[@id="FilteredContainer"]/div[1]').text
    expect(assert).to include('Filter Applied')
  end

end









