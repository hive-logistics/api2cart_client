=begin
#Swagger API2Cart

#API2Cart

OpenAPI spec version: 1.1
Contact: contact@api2cart.com
Generated by: https://github.com/swagger-api/swagger-codegen.git
Swagger Codegen version: 2.4.16

=end

require 'date'

module SwaggerClient
  class CartCouponAdd
    # Store Id
    attr_accessor :store_id

    # Coupon code
    attr_accessor :code

    # Coupon name
    attr_accessor :name

    # Entity codes
    attr_accessor :codes

    # Coupon discount type
    attr_accessor :action_type

    # Defines where discount should be applied
    attr_accessor :action_apply_to

    # Specify how discount should be applied. If scope=matching_items, then discount will be applied to each of the items that match action conditions. Scope order means that discount will be applied once.
    attr_accessor :action_scope

    # Defines the discount amount value.
    attr_accessor :action_amount

    # Defines when discount code will be available.
    attr_accessor :date_start

    # Defines when discount code will be expired.
    attr_accessor :date_end

    # Usage limit for coupon.
    attr_accessor :usage_limit

    # Usage limit per customer.
    attr_accessor :usage_limit_per_customer

    # Defines entity for action condition.
    attr_accessor :action_condition_entity

    # Defines entity attribute code for action condition.
    attr_accessor :action_condition_key

    # Defines condition operator.
    attr_accessor :action_condition_operator

    # Defines condition attribute value/s. Can be comma separated string.
    attr_accessor :action_condition_value

    class EnumAttributeValidator
      attr_reader :datatype
      attr_reader :allowable_values

      def initialize(datatype, allowable_values)
        @allowable_values = allowable_values.map do |value|
          case datatype.to_s
          when /Integer/i
            value.to_i
          when /Float/i
            value.to_f
          else
            value
          end
        end
      end

      def valid?(value)
        !value || allowable_values.include?(value)
      end
    end

    # Attribute mapping from ruby-style variable name to JSON key.
    def self.attribute_map
      {
        :'store_id' => :'store_id',
        :'code' => :'code',
        :'name' => :'name',
        :'codes' => :'codes',
        :'action_type' => :'action_type',
        :'action_apply_to' => :'action_apply_to',
        :'action_scope' => :'action_scope',
        :'action_amount' => :'action_amount',
        :'date_start' => :'date_start',
        :'date_end' => :'date_end',
        :'usage_limit' => :'usage_limit',
        :'usage_limit_per_customer' => :'usage_limit_per_customer',
        :'action_condition_entity' => :'action_condition_entity',
        :'action_condition_key' => :'action_condition_key',
        :'action_condition_operator' => :'action_condition_operator',
        :'action_condition_value' => :'action_condition_value'
      }
    end

    # Attribute type mapping.
    def self.swagger_types
      {
        :'store_id' => :'String',
        :'code' => :'String',
        :'name' => :'String',
        :'codes' => :'Array<String>',
        :'action_type' => :'String',
        :'action_apply_to' => :'String',
        :'action_scope' => :'String',
        :'action_amount' => :'Float',
        :'date_start' => :'String',
        :'date_end' => :'String',
        :'usage_limit' => :'Integer',
        :'usage_limit_per_customer' => :'Integer',
        :'action_condition_entity' => :'String',
        :'action_condition_key' => :'String',
        :'action_condition_operator' => :'String',
        :'action_condition_value' => :'String'
      }
    end

    # Initializes the object
    # @param [Hash] attributes Model attributes in the form of hash
    def initialize(attributes = {})
      return unless attributes.is_a?(Hash)

      # convert string to symbol for hash key
      attributes = attributes.each_with_object({}) { |(k, v), h| h[k.to_sym] = v }

      if attributes.has_key?(:'store_id')
        self.store_id = attributes[:'store_id']
      end

      if attributes.has_key?(:'code')
        self.code = attributes[:'code']
      end

      if attributes.has_key?(:'name')
        self.name = attributes[:'name']
      end

      if attributes.has_key?(:'codes')
        if (value = attributes[:'codes']).is_a?(Array)
          self.codes = value
        end
      end

      if attributes.has_key?(:'action_type')
        self.action_type = attributes[:'action_type']
      end

      if attributes.has_key?(:'action_apply_to')
        self.action_apply_to = attributes[:'action_apply_to']
      end

      if attributes.has_key?(:'action_scope')
        self.action_scope = attributes[:'action_scope']
      end

      if attributes.has_key?(:'action_amount')
        self.action_amount = attributes[:'action_amount']
      end

      if attributes.has_key?(:'date_start')
        self.date_start = attributes[:'date_start']
      else
        self.date_start = 'now'
      end

      if attributes.has_key?(:'date_end')
        self.date_end = attributes[:'date_end']
      end

      if attributes.has_key?(:'usage_limit')
        self.usage_limit = attributes[:'usage_limit']
      end

      if attributes.has_key?(:'usage_limit_per_customer')
        self.usage_limit_per_customer = attributes[:'usage_limit_per_customer']
      end

      if attributes.has_key?(:'action_condition_entity')
        self.action_condition_entity = attributes[:'action_condition_entity']
      end

      if attributes.has_key?(:'action_condition_key')
        self.action_condition_key = attributes[:'action_condition_key']
      end

      if attributes.has_key?(:'action_condition_operator')
        self.action_condition_operator = attributes[:'action_condition_operator']
      end

      if attributes.has_key?(:'action_condition_value')
        self.action_condition_value = attributes[:'action_condition_value']
      end
    end

    # Show invalid properties with the reasons. Usually used together with valid?
    # @return Array for valid properties with the reasons
    def list_invalid_properties
      invalid_properties = Array.new
      if @code.nil?
        invalid_properties.push('invalid value for "code", code cannot be nil.')
      end

      if @action_type.nil?
        invalid_properties.push('invalid value for "action_type", action_type cannot be nil.')
      end

      if @action_apply_to.nil?
        invalid_properties.push('invalid value for "action_apply_to", action_apply_to cannot be nil.')
      end

      if @action_scope.nil?
        invalid_properties.push('invalid value for "action_scope", action_scope cannot be nil.')
      end

      if @action_amount.nil?
        invalid_properties.push('invalid value for "action_amount", action_amount cannot be nil.')
      end

      invalid_properties
    end

    # Check to see if the all the properties in the model are valid
    # @return true if the model is valid
    def valid?
      return false if @code.nil?
      return false if @action_type.nil?
      action_type_validator = EnumAttributeValidator.new('String', ['percent', 'fixed'])
      return false unless action_type_validator.valid?(@action_type)
      return false if @action_apply_to.nil?
      action_apply_to_validator = EnumAttributeValidator.new('String', ['order_total', 'item_price', 'shipping'])
      return false unless action_apply_to_validator.valid?(@action_apply_to)
      return false if @action_scope.nil?
      action_scope_validator = EnumAttributeValidator.new('String', ['order', 'matching_items'])
      return false unless action_scope_validator.valid?(@action_scope)
      return false if @action_amount.nil?
      true
    end

    # Custom attribute writer method checking allowed values (enum).
    # @param [Object] action_type Object to be assigned
    def action_type=(action_type)
      validator = EnumAttributeValidator.new('String', ['percent', 'fixed'])
      unless validator.valid?(action_type)
        fail ArgumentError, 'invalid value for "action_type", must be one of #{validator.allowable_values}.'
      end
      @action_type = action_type
    end

    # Custom attribute writer method checking allowed values (enum).
    # @param [Object] action_apply_to Object to be assigned
    def action_apply_to=(action_apply_to)
      validator = EnumAttributeValidator.new('String', ['order_total', 'item_price', 'shipping'])
      unless validator.valid?(action_apply_to)
        fail ArgumentError, 'invalid value for "action_apply_to", must be one of #{validator.allowable_values}.'
      end
      @action_apply_to = action_apply_to
    end

    # Custom attribute writer method checking allowed values (enum).
    # @param [Object] action_scope Object to be assigned
    def action_scope=(action_scope)
      validator = EnumAttributeValidator.new('String', ['order', 'matching_items'])
      unless validator.valid?(action_scope)
        fail ArgumentError, 'invalid value for "action_scope", must be one of #{validator.allowable_values}.'
      end
      @action_scope = action_scope
    end

    # Checks equality by comparing each attribute.
    # @param [Object] Object to be compared
    def ==(o)
      return true if self.equal?(o)
      self.class == o.class &&
          store_id == o.store_id &&
          code == o.code &&
          name == o.name &&
          codes == o.codes &&
          action_type == o.action_type &&
          action_apply_to == o.action_apply_to &&
          action_scope == o.action_scope &&
          action_amount == o.action_amount &&
          date_start == o.date_start &&
          date_end == o.date_end &&
          usage_limit == o.usage_limit &&
          usage_limit_per_customer == o.usage_limit_per_customer &&
          action_condition_entity == o.action_condition_entity &&
          action_condition_key == o.action_condition_key &&
          action_condition_operator == o.action_condition_operator &&
          action_condition_value == o.action_condition_value
    end

    # @see the `==` method
    # @param [Object] Object to be compared
    def eql?(o)
      self == o
    end

    # Calculates hash code according to all attributes.
    # @return [Fixnum] Hash code
    def hash
      [store_id, code, name, codes, action_type, action_apply_to, action_scope, action_amount, date_start, date_end, usage_limit, usage_limit_per_customer, action_condition_entity, action_condition_key, action_condition_operator, action_condition_value].hash
    end

    # Builds the object from hash
    # @param [Hash] attributes Model attributes in the form of hash
    # @return [Object] Returns the model itself
    def build_from_hash(attributes)
      return nil unless attributes.is_a?(Hash)
      self.class.swagger_types.each_pair do |key, type|
        if type =~ /\AArray<(.*)>/i
          # check to ensure the input is an array given that the attribute
          # is documented as an array but the input is not
          if attributes[self.class.attribute_map[key]].is_a?(Array)
            self.send("#{key}=", attributes[self.class.attribute_map[key]].map { |v| _deserialize($1, v) })
          end
        elsif !attributes[self.class.attribute_map[key]].nil?
          self.send("#{key}=", _deserialize(type, attributes[self.class.attribute_map[key]]))
        end # or else data not found in attributes(hash), not an issue as the data can be optional
      end

      self
    end

    # Deserializes the data based on type
    # @param string type Data type
    # @param string value Value to be deserialized
    # @return [Object] Deserialized data
    def _deserialize(type, value)
      case type.to_sym
      when :DateTime
        DateTime.parse(value)
      when :Date
        Date.parse(value)
      when :String
        value.to_s
      when :Integer
        value.to_i
      when :Float
        value.to_f
      when :BOOLEAN
        if value.to_s =~ /\A(true|t|yes|y|1)\z/i
          true
        else
          false
        end
      when :Object
        # generic object (usually a Hash), return directly
        value
      when /\AArray<(?<inner_type>.+)>\z/
        inner_type = Regexp.last_match[:inner_type]
        value.map { |v| _deserialize(inner_type, v) }
      when /\AHash<(?<k_type>.+?), (?<v_type>.+)>\z/
        k_type = Regexp.last_match[:k_type]
        v_type = Regexp.last_match[:v_type]
        {}.tap do |hash|
          value.each do |k, v|
            hash[_deserialize(k_type, k)] = _deserialize(v_type, v)
          end
        end
      else # model
        temp_model = SwaggerClient.const_get(type).new
        temp_model.build_from_hash(value)
      end
    end

    # Returns the string representation of the object
    # @return [String] String presentation of the object
    def to_s
      to_hash.to_s
    end

    # to_body is an alias to to_hash (backward compatibility)
    # @return [Hash] Returns the object in the form of hash
    def to_body
      to_hash
    end

    # Returns the object in the form of hash
    # @return [Hash] Returns the object in the form of hash
    def to_hash
      hash = {}
      self.class.attribute_map.each_pair do |attr, param|
        value = self.send(attr)
        next if value.nil?
        hash[param] = _to_hash(value)
      end
      hash
    end

    # Outputs non-array value in the form of hash
    # For object, use to_hash. Otherwise, just return the value
    # @param [Object] value Any valid value
    # @return [Hash] Returns the value in the form of hash
    def _to_hash(value)
      if value.is_a?(Array)
        value.compact.map { |v| _to_hash(v) }
      elsif value.is_a?(Hash)
        {}.tap do |hash|
          value.each { |k, v| hash[k] = _to_hash(v) }
        end
      elsif value.respond_to? :to_hash
        value.to_hash
      else
        value
      end
    end

  end
end