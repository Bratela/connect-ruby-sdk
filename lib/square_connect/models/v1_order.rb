=begin
#Square Connect API

OpenAPI spec version: 2.0
Contact: developers@squareup.com
Generated by: https://github.com/swagger-api/swagger-codegen.git

=end

require 'date'

module SquareConnect

  class V1Order
    # Any errors that occurred during the request.
    attr_accessor :errors

    # The order's unique identifier.
    attr_accessor :id

    # The email address of the order's buyer.
    attr_accessor :buyer_email

    # The name of the order's buyer.
    attr_accessor :recipient_name

    # The phone number to use for the order's delivery.
    attr_accessor :recipient_phone_number

    # Whether the tax is an ADDITIVE tax or an INCLUSIVE tax.
    attr_accessor :state

    # The address to ship the order to.
    attr_accessor :shipping_address

    # The amount of all items purchased in the order, before taxes and shipping.
    attr_accessor :subtotal_money

    # The shipping cost for the order.
    attr_accessor :total_shipping_money

    # The total of all taxes applied to the order.
    attr_accessor :total_tax_money

    # The total cost of the order.
    attr_accessor :total_price_money

    # The total of all discounts applied to the order.
    attr_accessor :total_discount_money

    # The time when the order was created, in ISO 8601 format.
    attr_accessor :created_at

    # The time when the order was last modified, in ISO 8601 format.
    attr_accessor :updated_at

    # The time when the order expires if no action is taken, in ISO 8601 format.
    attr_accessor :expires_at

    # The unique identifier of the payment associated with the order.
    attr_accessor :payment_id

    # A note provided by the buyer when the order was created, if any.
    attr_accessor :buyer_note

    # A note provided by the merchant when the order's state was set to COMPLETED, if any
    attr_accessor :completed_note

    # A note provided by the merchant when the order's state was set to REFUNDED, if any.
    attr_accessor :refunded_note

    # A note provided by the merchant when the order's state was set to CANCELED, if any.
    attr_accessor :canceled_note

    # The tender used to pay for the order.
    attr_accessor :tender

    # The history of actions associated with the order.
    attr_accessor :order_history

    # The promo code provided by the buyer, if any.
    attr_accessor :promo_code

    # For Bitcoin transactions, the address that the buyer sent Bitcoin to.
    attr_accessor :btc_receive_address

    # For Bitcoin transactions, the price of the buyer's order in satoshi (100 million satoshi equals 1 BTC).
    attr_accessor :btc_price_satoshi

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
        :'errors' => :'errors',
        :'id' => :'id',
        :'buyer_email' => :'buyer_email',
        :'recipient_name' => :'recipient_name',
        :'recipient_phone_number' => :'recipient_phone_number',
        :'state' => :'state',
        :'shipping_address' => :'shipping_address',
        :'subtotal_money' => :'subtotal_money',
        :'total_shipping_money' => :'total_shipping_money',
        :'total_tax_money' => :'total_tax_money',
        :'total_price_money' => :'total_price_money',
        :'total_discount_money' => :'total_discount_money',
        :'created_at' => :'created_at',
        :'updated_at' => :'updated_at',
        :'expires_at' => :'expires_at',
        :'payment_id' => :'payment_id',
        :'buyer_note' => :'buyer_note',
        :'completed_note' => :'completed_note',
        :'refunded_note' => :'refunded_note',
        :'canceled_note' => :'canceled_note',
        :'tender' => :'tender',
        :'order_history' => :'order_history',
        :'promo_code' => :'promo_code',
        :'btc_receive_address' => :'btc_receive_address',
        :'btc_price_satoshi' => :'btc_price_satoshi'
      }
    end

    # Attribute type mapping.
    def self.swagger_types
      {
        :'errors' => :'Array<Error>',
        :'id' => :'String',
        :'buyer_email' => :'String',
        :'recipient_name' => :'String',
        :'recipient_phone_number' => :'String',
        :'state' => :'String',
        :'shipping_address' => :'Address',
        :'subtotal_money' => :'V1Money',
        :'total_shipping_money' => :'V1Money',
        :'total_tax_money' => :'V1Money',
        :'total_price_money' => :'V1Money',
        :'total_discount_money' => :'V1Money',
        :'created_at' => :'String',
        :'updated_at' => :'String',
        :'expires_at' => :'String',
        :'payment_id' => :'String',
        :'buyer_note' => :'String',
        :'completed_note' => :'String',
        :'refunded_note' => :'String',
        :'canceled_note' => :'String',
        :'tender' => :'V1Tender',
        :'order_history' => :'Array<V1OrderHistoryEntry>',
        :'promo_code' => :'String',
        :'btc_receive_address' => :'String',
        :'btc_price_satoshi' => :'Float'
      }
    end

    # Initializes the object
    # @param [Hash] attributes Model attributes in the form of hash
    def initialize(attributes = {})
      return unless attributes.is_a?(Hash)

      # convert string to symbol for hash key
      attributes = attributes.each_with_object({}){|(k,v), h| h[k.to_sym] = v}

      if attributes.has_key?(:'errors')
        if (value = attributes[:'errors']).is_a?(Array)
          self.errors = value
        end
      end

      if attributes.has_key?(:'id')
        self.id = attributes[:'id']
      end

      if attributes.has_key?(:'buyer_email')
        self.buyer_email = attributes[:'buyer_email']
      end

      if attributes.has_key?(:'recipient_name')
        self.recipient_name = attributes[:'recipient_name']
      end

      if attributes.has_key?(:'recipient_phone_number')
        self.recipient_phone_number = attributes[:'recipient_phone_number']
      end

      if attributes.has_key?(:'state')
        self.state = attributes[:'state']
      end

      if attributes.has_key?(:'shipping_address')
        self.shipping_address = attributes[:'shipping_address']
      end

      if attributes.has_key?(:'subtotal_money')
        self.subtotal_money = attributes[:'subtotal_money']
      end

      if attributes.has_key?(:'total_shipping_money')
        self.total_shipping_money = attributes[:'total_shipping_money']
      end

      if attributes.has_key?(:'total_tax_money')
        self.total_tax_money = attributes[:'total_tax_money']
      end

      if attributes.has_key?(:'total_price_money')
        self.total_price_money = attributes[:'total_price_money']
      end

      if attributes.has_key?(:'total_discount_money')
        self.total_discount_money = attributes[:'total_discount_money']
      end

      if attributes.has_key?(:'created_at')
        self.created_at = attributes[:'created_at']
      end

      if attributes.has_key?(:'updated_at')
        self.updated_at = attributes[:'updated_at']
      end

      if attributes.has_key?(:'expires_at')
        self.expires_at = attributes[:'expires_at']
      end

      if attributes.has_key?(:'payment_id')
        self.payment_id = attributes[:'payment_id']
      end

      if attributes.has_key?(:'buyer_note')
        self.buyer_note = attributes[:'buyer_note']
      end

      if attributes.has_key?(:'completed_note')
        self.completed_note = attributes[:'completed_note']
      end

      if attributes.has_key?(:'refunded_note')
        self.refunded_note = attributes[:'refunded_note']
      end

      if attributes.has_key?(:'canceled_note')
        self.canceled_note = attributes[:'canceled_note']
      end

      if attributes.has_key?(:'tender')
        self.tender = attributes[:'tender']
      end

      if attributes.has_key?(:'order_history')
        if (value = attributes[:'order_history']).is_a?(Array)
          self.order_history = value
        end
      end

      if attributes.has_key?(:'promo_code')
        self.promo_code = attributes[:'promo_code']
      end

      if attributes.has_key?(:'btc_receive_address')
        self.btc_receive_address = attributes[:'btc_receive_address']
      end

      if attributes.has_key?(:'btc_price_satoshi')
        self.btc_price_satoshi = attributes[:'btc_price_satoshi']
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
      state_validator = EnumAttributeValidator.new('String', ["PENDING", "OPEN", "COMPLETED", "CANCELED", "REFUNDED", "REJECTED"])
      return false unless state_validator.valid?(@state)
      return true
    end

    # Custom attribute writer method checking allowed values (enum).
    # @param [Object] state Object to be assigned
    def state=(state)
      validator = EnumAttributeValidator.new('String', ["PENDING", "OPEN", "COMPLETED", "CANCELED", "REFUNDED", "REJECTED"])
      unless validator.valid?(state)
        fail ArgumentError, "invalid value for 'state', must be one of #{validator.allowable_values}."
      end
      @state = state
    end

    # Checks equality by comparing each attribute.
    # @param [Object] Object to be compared
    def ==(o)
      return true if self.equal?(o)
      self.class == o.class &&
          errors == o.errors &&
          id == o.id &&
          buyer_email == o.buyer_email &&
          recipient_name == o.recipient_name &&
          recipient_phone_number == o.recipient_phone_number &&
          state == o.state &&
          shipping_address == o.shipping_address &&
          subtotal_money == o.subtotal_money &&
          total_shipping_money == o.total_shipping_money &&
          total_tax_money == o.total_tax_money &&
          total_price_money == o.total_price_money &&
          total_discount_money == o.total_discount_money &&
          created_at == o.created_at &&
          updated_at == o.updated_at &&
          expires_at == o.expires_at &&
          payment_id == o.payment_id &&
          buyer_note == o.buyer_note &&
          completed_note == o.completed_note &&
          refunded_note == o.refunded_note &&
          canceled_note == o.canceled_note &&
          tender == o.tender &&
          order_history == o.order_history &&
          promo_code == o.promo_code &&
          btc_receive_address == o.btc_receive_address &&
          btc_price_satoshi == o.btc_price_satoshi
    end

    # @see the `==` method
    # @param [Object] Object to be compared
    def eql?(o)
      self == o
    end

    # Calculates hash code according to all attributes.
    # @return [Fixnum] Hash code
    def hash
      [errors, id, buyer_email, recipient_name, recipient_phone_number, state, shipping_address, subtotal_money, total_shipping_money, total_tax_money, total_price_money, total_discount_money, created_at, updated_at, expires_at, payment_id, buyer_note, completed_note, refunded_note, canceled_note, tender, order_history, promo_code, btc_receive_address, btc_price_satoshi].hash
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