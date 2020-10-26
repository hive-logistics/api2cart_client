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
  class OrderItem
    attr_accessor :product_id

    attr_accessor :order_product_id

    attr_accessor :model

    attr_accessor :name

    attr_accessor :price

    attr_accessor :price_inc_tax

    attr_accessor :quantity

    attr_accessor :discount_amount

    attr_accessor :total_price

    attr_accessor :tax_percent

    attr_accessor :tax_value

    attr_accessor :tax_value_after_discount

    attr_accessor :options

    attr_accessor :variant_id

    attr_accessor :weight_unit

    attr_accessor :weight

    attr_accessor :parent_order_product_id

    attr_accessor :additional_fields

    attr_accessor :custom_fields

    # Attribute mapping from ruby-style variable name to JSON key.
    def self.attribute_map
      {
        :'product_id' => :'product_id',
        :'order_product_id' => :'order_product_id',
        :'model' => :'model',
        :'name' => :'name',
        :'price' => :'price',
        :'price_inc_tax' => :'price_inc_tax',
        :'quantity' => :'quantity',
        :'discount_amount' => :'discount_amount',
        :'total_price' => :'total_price',
        :'tax_percent' => :'tax_percent',
        :'tax_value' => :'tax_value',
        :'tax_value_after_discount' => :'tax_value_after_discount',
        :'options' => :'options',
        :'variant_id' => :'variant_id',
        :'weight_unit' => :'weight_unit',
        :'weight' => :'weight',
        :'parent_order_product_id' => :'parent_order_product_id',
        :'additional_fields' => :'additional_fields',
        :'custom_fields' => :'custom_fields'
      }
    end

    # Attribute type mapping.
    def self.swagger_types
      {
        :'product_id' => :'String',
        :'order_product_id' => :'String',
        :'model' => :'String',
        :'name' => :'String',
        :'price' => :'Float',
        :'price_inc_tax' => :'Float',
        :'quantity' => :'Float',
        :'discount_amount' => :'Float',
        :'total_price' => :'Float',
        :'tax_percent' => :'Float',
        :'tax_value' => :'Float',
        :'tax_value_after_discount' => :'Float',
        :'options' => :'Array<OrderItemOption>',
        :'variant_id' => :'String',
        :'weight_unit' => :'String',
        :'weight' => :'Float',
        :'parent_order_product_id' => :'String',
        :'additional_fields' => :'Object',
        :'custom_fields' => :'Object'
      }
    end

    # Initializes the object
    # @param [Hash] attributes Model attributes in the form of hash
    def initialize(attributes = {})
      return unless attributes.is_a?(Hash)

      # convert string to symbol for hash key
      attributes = attributes.each_with_object({}) { |(k, v), h| h[k.to_sym] = v }

      if attributes.has_key?(:'product_id')
        self.product_id = attributes[:'product_id']
      end

      if attributes.has_key?(:'order_product_id')
        self.order_product_id = attributes[:'order_product_id']
      end

      if attributes.has_key?(:'model')
        self.model = attributes[:'model']
      end

      if attributes.has_key?(:'name')
        self.name = attributes[:'name']
      end

      if attributes.has_key?(:'price')
        self.price = attributes[:'price']
      end

      if attributes.has_key?(:'price_inc_tax')
        self.price_inc_tax = attributes[:'price_inc_tax']
      end

      if attributes.has_key?(:'quantity')
        self.quantity = attributes[:'quantity']
      end

      if attributes.has_key?(:'discount_amount')
        self.discount_amount = attributes[:'discount_amount']
      end

      if attributes.has_key?(:'total_price')
        self.total_price = attributes[:'total_price']
      end

      if attributes.has_key?(:'tax_percent')
        self.tax_percent = attributes[:'tax_percent']
      end

      if attributes.has_key?(:'tax_value')
        self.tax_value = attributes[:'tax_value']
      end

      if attributes.has_key?(:'tax_value_after_discount')
        self.tax_value_after_discount = attributes[:'tax_value_after_discount']
      end

      if attributes.has_key?(:'options')
        if (value = attributes[:'options']).is_a?(Array)
          self.options = value
        end
      end

      if attributes.has_key?(:'variant_id')
        self.variant_id = attributes[:'variant_id']
      end

      if attributes.has_key?(:'weight_unit')
        self.weight_unit = attributes[:'weight_unit']
      end

      if attributes.has_key?(:'weight')
        self.weight = attributes[:'weight']
      end

      if attributes.has_key?(:'parent_order_product_id')
        self.parent_order_product_id = attributes[:'parent_order_product_id']
      end

      if attributes.has_key?(:'additional_fields')
        self.additional_fields = attributes[:'additional_fields']
      end

      if attributes.has_key?(:'custom_fields')
        self.custom_fields = attributes[:'custom_fields']
      end
    end

    # Show invalid properties with the reasons. Usually used together with valid?
    # @return Array for valid properties with the reasons
    def list_invalid_properties
      invalid_properties = Array.new
      invalid_properties
    end

    # Check to see if the all the properties in the model are valid
    # @return true if the model is valid
    def valid?
      true
    end

    # Checks equality by comparing each attribute.
    # @param [Object] Object to be compared
    def ==(o)
      return true if self.equal?(o)
      self.class == o.class &&
          product_id == o.product_id &&
          order_product_id == o.order_product_id &&
          model == o.model &&
          name == o.name &&
          price == o.price &&
          price_inc_tax == o.price_inc_tax &&
          quantity == o.quantity &&
          discount_amount == o.discount_amount &&
          total_price == o.total_price &&
          tax_percent == o.tax_percent &&
          tax_value == o.tax_value &&
          tax_value_after_discount == o.tax_value_after_discount &&
          options == o.options &&
          variant_id == o.variant_id &&
          weight_unit == o.weight_unit &&
          weight == o.weight &&
          parent_order_product_id == o.parent_order_product_id &&
          additional_fields == o.additional_fields &&
          custom_fields == o.custom_fields
    end

    # @see the `==` method
    # @param [Object] Object to be compared
    def eql?(o)
      self == o
    end

    # Calculates hash code according to all attributes.
    # @return [Fixnum] Hash code
    def hash
      [product_id, order_product_id, model, name, price, price_inc_tax, quantity, discount_amount, total_price, tax_percent, tax_value, tax_value_after_discount, options, variant_id, weight_unit, weight, parent_order_product_id, additional_fields, custom_fields].hash
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
