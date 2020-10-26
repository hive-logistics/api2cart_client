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
  class BasketApi
    attr_accessor :api_client

    def initialize(api_client = ApiClient.default)
      @api_client = api_client
    end
    # Retrieve basket information.
    # @param id Entity id
    # @param [Hash] opts the optional parameters
    # @option opts [String] :store_id Store Id
    # @option opts [String] :params Set this parameter in order to choose which entity fields you want to retrieve (default to force_all)
    # @option opts [String] :exclude Set this parameter in order to choose which entity fields you want to ignore. Works only if parameter &#x60;params&#x60; equal force_all
    # @return [InlineResponse20051]
    def basket_info(id, opts = {})
      data, _status_code, _headers = basket_info_with_http_info(id, opts)
      data
    end

    # Retrieve basket information.
    # @param id Entity id
    # @param [Hash] opts the optional parameters
    # @option opts [String] :store_id Store Id
    # @option opts [String] :params Set this parameter in order to choose which entity fields you want to retrieve
    # @option opts [String] :exclude Set this parameter in order to choose which entity fields you want to ignore. Works only if parameter &#x60;params&#x60; equal force_all
    # @return [Array<(InlineResponse20051, Fixnum, Hash)>] InlineResponse20051 data, response status code and response headers
    def basket_info_with_http_info(id, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: BasketApi.basket_info ...'
      end
      # verify the required parameter 'id' is set
      if @api_client.config.client_side_validation && id.nil?
        fail ArgumentError, "Missing the required parameter 'id' when calling BasketApi.basket_info"
      end
      # resource path
      local_var_path = '/basket.info.json'

      # query parameters
      query_params = {}
      query_params[:'id'] = id
      query_params[:'store_id'] = opts[:'store_id'] if !opts[:'store_id'].nil?
      query_params[:'params'] = opts[:'params'] if !opts[:'params'].nil?
      query_params[:'exclude'] = opts[:'exclude'] if !opts[:'exclude'].nil?

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
      data, status_code, headers = @api_client.call_api(:GET, local_var_path,
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => 'InlineResponse20051')
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: BasketApi#basket_info\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end
    # Add item to basket
    # @param customer_id Retrieves orders specified by customer id
    # @param product_id Defines id of the product which should be added to the basket
    # @param [Hash] opts the optional parameters
    # @option opts [String] :variant_id Defines product&#39;s variants specified by variant id
    # @option opts [Float] :quantity Defines new items quantity (default to 0)
    # @option opts [String] :store_id Store Id
    # @return [InlineResponse20083]
    def basket_item_add(customer_id, product_id, opts = {})
      data, _status_code, _headers = basket_item_add_with_http_info(customer_id, product_id, opts)
      data
    end

    # Add item to basket
    # @param customer_id Retrieves orders specified by customer id
    # @param product_id Defines id of the product which should be added to the basket
    # @param [Hash] opts the optional parameters
    # @option opts [String] :variant_id Defines product&#39;s variants specified by variant id
    # @option opts [Float] :quantity Defines new items quantity
    # @option opts [String] :store_id Store Id
    # @return [Array<(InlineResponse20083, Fixnum, Hash)>] InlineResponse20083 data, response status code and response headers
    def basket_item_add_with_http_info(customer_id, product_id, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: BasketApi.basket_item_add ...'
      end
      # verify the required parameter 'customer_id' is set
      if @api_client.config.client_side_validation && customer_id.nil?
        fail ArgumentError, "Missing the required parameter 'customer_id' when calling BasketApi.basket_item_add"
      end
      # verify the required parameter 'product_id' is set
      if @api_client.config.client_side_validation && product_id.nil?
        fail ArgumentError, "Missing the required parameter 'product_id' when calling BasketApi.basket_item_add"
      end
      # resource path
      local_var_path = '/basket.item.add.json'

      # query parameters
      query_params = {}
      query_params[:'customer_id'] = customer_id
      query_params[:'product_id'] = product_id
      query_params[:'variant_id'] = opts[:'variant_id'] if !opts[:'variant_id'].nil?
      query_params[:'quantity'] = opts[:'quantity'] if !opts[:'quantity'].nil?
      query_params[:'store_id'] = opts[:'store_id'] if !opts[:'store_id'].nil?

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
        :return_type => 'InlineResponse20083')
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: BasketApi#basket_item_add\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end
    # Create live shipping rate service. (Beta)
    # @param name Shipping Service Name
    # @param callback Callback url that returns shipping rates. It should be able to accept POST requests with json data.
    # @param [Hash] opts the optional parameters
    # @option opts [String] :store_id Store Id
    # @return [InlineResponse20052]
    def basket_live_shipping_service_create(name, callback, opts = {})
      data, _status_code, _headers = basket_live_shipping_service_create_with_http_info(name, callback, opts)
      data
    end

    # Create live shipping rate service. (Beta)
    # @param name Shipping Service Name
    # @param callback Callback url that returns shipping rates. It should be able to accept POST requests with json data.
    # @param [Hash] opts the optional parameters
    # @option opts [String] :store_id Store Id
    # @return [Array<(InlineResponse20052, Fixnum, Hash)>] InlineResponse20052 data, response status code and response headers
    def basket_live_shipping_service_create_with_http_info(name, callback, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: BasketApi.basket_live_shipping_service_create ...'
      end
      # verify the required parameter 'name' is set
      if @api_client.config.client_side_validation && name.nil?
        fail ArgumentError, "Missing the required parameter 'name' when calling BasketApi.basket_live_shipping_service_create"
      end
      # verify the required parameter 'callback' is set
      if @api_client.config.client_side_validation && callback.nil?
        fail ArgumentError, "Missing the required parameter 'callback' when calling BasketApi.basket_live_shipping_service_create"
      end
      # resource path
      local_var_path = '/basket.live_shipping_service.create.json'

      # query parameters
      query_params = {}
      query_params[:'name'] = name
      query_params[:'callback'] = callback
      query_params[:'store_id'] = opts[:'store_id'] if !opts[:'store_id'].nil?

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
        :return_type => 'InlineResponse20052')
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: BasketApi#basket_live_shipping_service_create\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end
    # Delete live shipping rate service. (Beta)
    # @param id Entity id
    # @param [Hash] opts the optional parameters
    # @return [InlineResponse20019]
    def basket_live_shipping_service_delete(id, opts = {})
      data, _status_code, _headers = basket_live_shipping_service_delete_with_http_info(id, opts)
      data
    end

    # Delete live shipping rate service. (Beta)
    # @param id Entity id
    # @param [Hash] opts the optional parameters
    # @return [Array<(InlineResponse20019, Fixnum, Hash)>] InlineResponse20019 data, response status code and response headers
    def basket_live_shipping_service_delete_with_http_info(id, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: BasketApi.basket_live_shipping_service_delete ...'
      end
      # verify the required parameter 'id' is set
      if @api_client.config.client_side_validation && id.nil?
        fail ArgumentError, "Missing the required parameter 'id' when calling BasketApi.basket_live_shipping_service_delete"
      end
      # resource path
      local_var_path = '/basket.live_shipping_service.delete.json'

      # query parameters
      query_params = {}
      query_params[:'id'] = id

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
      data, status_code, headers = @api_client.call_api(:DELETE, local_var_path,
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => 'InlineResponse20019')
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: BasketApi#basket_live_shipping_service_delete\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end
    # Retrieve a list of live shipping rate services. (Beta)
    # @param [Hash] opts the optional parameters
    # @option opts [String] :store_id Store Id
    # @option opts [Integer] :start This parameter sets the number from which you want to get entities (default to 0)
    # @option opts [Integer] :count This parameter sets the entity amount that has to be retrieved. Max allowed count&#x3D;250 (default to 10)
    # @return [InlineResponse20050]
    def basket_live_shipping_service_list(opts = {})
      data, _status_code, _headers = basket_live_shipping_service_list_with_http_info(opts)
      data
    end

    # Retrieve a list of live shipping rate services. (Beta)
    # @param [Hash] opts the optional parameters
    # @option opts [String] :store_id Store Id
    # @option opts [Integer] :start This parameter sets the number from which you want to get entities
    # @option opts [Integer] :count This parameter sets the entity amount that has to be retrieved. Max allowed count&#x3D;250
    # @return [Array<(InlineResponse20050, Fixnum, Hash)>] InlineResponse20050 data, response status code and response headers
    def basket_live_shipping_service_list_with_http_info(opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: BasketApi.basket_live_shipping_service_list ...'
      end
      # resource path
      local_var_path = '/basket.live_shipping_service.list.json'

      # query parameters
      query_params = {}
      query_params[:'store_id'] = opts[:'store_id'] if !opts[:'store_id'].nil?
      query_params[:'start'] = opts[:'start'] if !opts[:'start'].nil?
      query_params[:'count'] = opts[:'count'] if !opts[:'count'].nil?

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
      data, status_code, headers = @api_client.call_api(:GET, local_var_path,
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => 'InlineResponse20050')
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: BasketApi#basket_live_shipping_service_list\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end
  end
end
