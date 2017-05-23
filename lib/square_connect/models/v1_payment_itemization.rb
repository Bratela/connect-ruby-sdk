=begin
#Square Connect API

OpenAPI spec version: 2.0
Contact: developers@squareup.com
Generated by: https://github.com/swagger-api/swagger-codegen.git

=end

require 'date'

module SquareConnect

  class V1PaymentItemization
    # The item's name.
    attr_accessor :name

    # The quantity of the item purchased. This can be a decimal value.
    attr_accessor :quantity

    # The type of purchase that the itemization represents, such as an ITEM or CUSTOM_AMOUNT
    attr_accessor :itemization_type

    # Details of the item, including its unique identifier and the identifier of the item variation purchased.
    attr_accessor :item_detail

    # Notes entered by the merchant about the item at the time of payment, if any.
    attr_accessor :notes

    # The name of the item variation purchased, if any.
    attr_accessor :item_variation_name

    # The total cost of the item, including all taxes and discounts.
    attr_accessor :total_money

    # The cost of a single unit of this item.
    attr_accessor :single_quantity_money

    # The total cost of the itemization and its modifiers, not including taxes or discounts.
    attr_accessor :gross_sales_money

    # The total of all discounts applied to the itemization. This value is always negative or zero.
    attr_accessor :discount_money

    # The sum of gross_sales_money and discount_money.
    attr_accessor :net_sales_money

    # All taxes applied to this itemization.
    attr_accessor :taxes

    # All discounts applied to this itemization.
    attr_accessor :discounts

    # All modifier options applied to this itemization.
    attr_accessor :modifiers

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
        :'name' => :'name',
        :'quantity' => :'quantity',
        :'itemization_type' => :'itemization_type',
        :'item_detail' => :'item_detail',
        :'notes' => :'notes',
        :'item_variation_name' => :'item_variation_name',
        :'total_money' => :'total_money',
        :'single_quantity_money' => :'single_quantity_money',
        :'gross_sales_money' => :'gross_sales_money',
        :'discount_money' => :'discount_money',
        :'net_sales_money' => :'net_sales_money',
        :'taxes' => :'taxes',
        :'discounts' => :'discounts',
        :'modifiers' => :'modifiers'
      }
    end

    # Attribute type mapping.
    def self.swagger_types
      {
        :'name' => :'String',
        :'quantity' => :'Float',
        :'itemization_type' => :'String',
        :'item_detail' => :'V1PaymentItemDetail',
        :'notes' => :'String',
        :'item_variation_name' => :'String',
        :'total_money' => :'V1Money',
        :'single_quantity_money' => :'V1Money',
        :'gross_sales_money' => :'V1Money',
        :'discount_money' => :'V1Money',
        :'net_sales_money' => :'V1Money',
        :'taxes' => :'Array<V1PaymentTax>',
        :'discounts' => :'Array<V1PaymentDiscount>',
        :'modifiers' => :'Array<V1PaymentModifier>'
      }
    end

    # Initializes the object
    # @param [Hash] attributes Model attributes in the form of hash
    def initialize(attributes = {})
      return unless attributes.is_a?(Hash)

      # convert string to symbol for hash key
      attributes = attributes.each_with_object({}){|(k,v), h| h[k.to_sym] = v}

      if attributes.has_key?(:'name')
        self.name = attributes[:'name']
      end

      if attributes.has_key?(:'quantity')
        self.quantity = attributes[:'quantity']
      end

      if attributes.has_key?(:'itemization_type')
        self.itemization_type = attributes[:'itemization_type']
      end

      if attributes.has_key?(:'item_detail')
        self.item_detail = attributes[:'item_detail']
      end

      if attributes.has_key?(:'notes')
        self.notes = attributes[:'notes']
      end

      if attributes.has_key?(:'item_variation_name')
        self.item_variation_name = attributes[:'item_variation_name']
      end

      if attributes.has_key?(:'total_money')
        self.total_money = attributes[:'total_money']
      end

      if attributes.has_key?(:'single_quantity_money')
        self.single_quantity_money = attributes[:'single_quantity_money']
      end

      if attributes.has_key?(:'gross_sales_money')
        self.gross_sales_money = attributes[:'gross_sales_money']
      end

      if attributes.has_key?(:'discount_money')
        self.discount_money = attributes[:'discount_money']
      end

      if attributes.has_key?(:'net_sales_money')
        self.net_sales_money = attributes[:'net_sales_money']
      end

      if attributes.has_key?(:'taxes')
        if (value = attributes[:'taxes']).is_a?(Array)
          self.taxes = value
        end
      end

      if attributes.has_key?(:'discounts')
        if (value = attributes[:'discounts']).is_a?(Array)
          self.discounts = value
        end
      end

      if attributes.has_key?(:'modifiers')
        if (value = attributes[:'modifiers']).is_a?(Array)
          self.modifiers = value
        end
      end

    end

    # Show invalid properties with the reasons. Usually used together with valid?
    # @return Array for valid properies with the reasons
    def list_invalid_properties
      invalid_properties = Array.new
      return invalid_properties
    end

    # Check to see if the all the properties in the model are valid
    # @return true if the model is valid
    def valid?
      itemization_type_validator = EnumAttributeValidator.new('String', ["ITEM", "CUSTOM_AMOUNT", "GIFT_CARD_ACTIVATION", "GIFT_CARD_RELOAD", "GIFT_CARD_UNKNOWN", "OTHER"])
      return false unless itemization_type_validator.valid?(@itemization_type)
      return true
    end

    # Custom attribute writer method checking allowed values (enum).
    # @param [Object] itemization_type Object to be assigned
    def itemization_type=(itemization_type)
      validator = EnumAttributeValidator.new('String', ["ITEM", "CUSTOM_AMOUNT", "GIFT_CARD_ACTIVATION", "GIFT_CARD_RELOAD", "GIFT_CARD_UNKNOWN", "OTHER"])
      unless validator.valid?(itemization_type)
        fail ArgumentError, "invalid value for 'itemization_type', must be one of #{validator.allowable_values}."
      end
      @itemization_type = itemization_type
    end

    # Checks equality by comparing each attribute.
    # @param [Object] Object to be compared
    def ==(o)
      return true if self.equal?(o)
      self.class == o.class &&
          name == o.name &&
          quantity == o.quantity &&
          itemization_type == o.itemization_type &&
          item_detail == o.item_detail &&
          notes == o.notes &&
          item_variation_name == o.item_variation_name &&
          total_money == o.total_money &&
          single_quantity_money == o.single_quantity_money &&
          gross_sales_money == o.gross_sales_money &&
          discount_money == o.discount_money &&
          net_sales_money == o.net_sales_money &&
          taxes == o.taxes &&
          discounts == o.discounts &&
          modifiers == o.modifiers
    end

    # @see the `==` method
    # @param [Object] Object to be compared
    def eql?(o)
      self == o
    end

    # Calculates hash code according to all attributes.
    # @return [Fixnum] Hash code
    def hash
      [name, quantity, itemization_type, item_detail, notes, item_variation_name, total_money, single_quantity_money, gross_sales_money, discount_money, net_sales_money, taxes, discounts, modifiers].hash
    end

    # Builds the object from hash
    # @param [Hash] attributes Model attributes in the form of hash
    # @return [Object] Returns the model itself
    def build_from_hash(attributes)
      return nil unless attributes.is_a?(Hash)
      self.class.swagger_types.each_pair do |key, type|
        if type =~ /\AArray<(.*)>/i
          # check to ensure the input is an array given that the the attribute
          # is documented as an array but the input is not
          if attributes[self.class.attribute_map[key]].is_a?(Array)
            self.send("#{key}=", attributes[self.class.attribute_map[key]].map{ |v| _deserialize($1, v) } )
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
        temp_model = SquareConnect.const_get(type).new
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
        value.compact.map{ |v| _to_hash(v) }
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