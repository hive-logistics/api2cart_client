=begin
#Swagger API2Cart

#API2Cart

OpenAPI spec version: 1.1
Contact: contact@api2cart.com
Generated by: https://github.com/swagger-api/swagger-codegen.git
Swagger Codegen version: 2.4.16

=end

require 'spec_helper'
require 'json'

# Unit tests for SwaggerClient::BridgeApi
# Automatically generated by swagger-codegen (github.com/swagger-api/swagger-codegen)
# Please update as you see appropriate
describe 'BridgeApi' do
  before do
    # run before each test
    @instance = SwaggerClient::BridgeApi.new
  end

  after do
    # run after each test
  end

  describe 'test an instance of BridgeApi' do
    it 'should create an instance of BridgeApi' do
      expect(@instance).to be_instance_of(SwaggerClient::BridgeApi)
    end
  end

  # unit tests for bridge_delete
  # Delete bridge from the store.
  # @param [Hash] opts the optional parameters
  # @return [InlineResponse20021]
  describe 'bridge_delete test' do
    it 'should work' do
      # assertion here. ref: https://www.relishapp.com/rspec/rspec-expectations/docs/built-in-matchers
    end
  end

  # unit tests for bridge_update
  # Update bridge in the store.
  # @param [Hash] opts the optional parameters
  # @return [InlineResponse20030]
  describe 'bridge_update test' do
    it 'should work' do
      # assertion here. ref: https://www.relishapp.com/rspec/rspec-expectations/docs/built-in-matchers
    end
  end

end
