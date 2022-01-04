# This is about factory_girl

require 'factory_girl'

Rspec.configure do |config|
  config.include FacroyGirl::Syntax::Methods
end

#Rspec without rails
