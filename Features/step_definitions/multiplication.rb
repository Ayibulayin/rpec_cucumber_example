
Given(/^I have variable a$/) do
  @a = 50
end

Given(/^I have variable b$/) do
  @b = 70
end

When(/^I multiply a and b$/) do
  @mul = @a * @b
end

Then(/^I am able to view the result$/) do
  puts "The result of multiplication #{@a} and #{@b} is #{@mul}"
end
