=begin
#Swagger API2Cart

#API2Cart

OpenAPI spec version: 1.1
Contact: contact@api2cart.com
Generated by: https://github.com/swagger-api/swagger-codegen.git
Swagger Codegen version: 2.4.16

=end

require 'uri'

module SwaggerClient
  class BridgeApi
    attr_accessor :api_client

    def initialize(api_client = ApiClient.default)
      @api_client = api_client
    end
    # Delete bridge from the store.
    # @param [Hash] opts the optional parameters
    # @return [InlineResponse20021]
    def bridge_delete(opts = {})
      data, _status_code, _headers = bridge_delete_with_http_info(opts)
      data
    end

    # Delete bridge from the store.
    # @param [Hash] opts the optional parameters
    # @return [Array<(InlineResponse20021, Fixnum, Hash)>] InlineResponse20021 data, response status code and response headers
    def bridge_delete_with_http_info(opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: BridgeApi.bridge_delete ...'
      end
      # resource path
      local_var_path = '/bridge.delete.json'

      # query parameters
      query_params = {}

      # header parameters
      header_params = {}
      # HTTP header 'Accept' (if needed)
      header_params['Accept'] = @api_client.select_header_accept(['application/json'])
      # HTTP header 'Content-Type'
      header_params['Content-Type'] = @api_client.select_header_content_type(['application/x-www-form-urlencoded'])

      # form parameters
      form_params = {}

      # http body (model)
      post_body = nil
      auth_names = ['api_key', 'store_key']
      data, status_code, headers = @api_client.call_api(:POST, local_var_path,
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => 'InlineResponse20021')
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: BridgeApi#bridge_delete\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end
    # Update bridge in the store.
    # @param [Hash] opts the optional parameters
    # @return [InlineResponse20030]
    def bridge_update(opts = {})
      data, _status_code, _headers = bridge_update_with_http_info(opts)
      data
    end

    # Update bridge in the store.
    # @param [Hash] opts the optional parameters
    # @return [Array<(InlineResponse20030, Fixnum, Hash)>] InlineResponse20030 data, response status code and response headers
    def bridge_update_with_http_info(opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: BridgeApi.bridge_update ...'
      end
      # resource path
      local_var_path = '/bridge.update.json'

      # query parameters
      query_params = {}

      # header parameters
      header_params = {}
      # HTTP header 'Accept' (if needed)
      header_params['Accept'] = @api_client.select_header_accept(['application/json'])
      # HTTP header 'Content-Type'
      header_params['Content-Type'] = @api_client.select_header_content_type(['application/x-www-form-urlencoded'])

      # form parameters
      form_params = {}

      # http body (model)
      post_body = nil
      auth_names = ['api_key', 'store_key']
      data, status_code, headers = @api_client.call_api(:POST, local_var_path,
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => 'InlineResponse20030')
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: BridgeApi#bridge_update\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end
  end
end
