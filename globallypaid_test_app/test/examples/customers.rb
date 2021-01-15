ENV['RAILS_ENV'] ||= 'test'
require_relative '../../config/environment'
require './config'


# Initialize the gateway
puts "Initializing the gateway..."
gateway = ActiveMerchant::Billing::GloballyPaidGateway.new(@credentials)
  
puts "Calling customer list..."
response = gateway.list_customers()

puts "Response: " + response.inspect