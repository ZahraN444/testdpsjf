# mist_api
#
# This file was automatically generated by APIMATIC v2.0
# ( https://apimatic.io ).

module MistApi
  # whether this network has direct internet access
  class NetworkInternetAccess < BaseModel
    SKIP = Object.new
    private_constant :SKIP

    # TODO: Write general description for this method
    # @return [TrueClass | FalseClass]
    attr_accessor :create_simple_service_policy

    # Property key may be an IP/Port (i.e. "63.16.0.3:443"), or a port (i.e.
    # ":2222")
    # @return [Hash[String, NetworkDestinationNatProperty]]
    attr_accessor :destination_nat

    # Property key may be an IP/Port (i.e. "63.16.0.3:443"), or a port (i.e.
    # ":2222")
    # @return [TrueClass | FalseClass]
    attr_accessor :enabled

    # by default, all access is allowed, to only allow certain traffic, make
    # `restricted`=`true` and define service_policies
    # @return [TrueClass | FalseClass]
    attr_accessor :restricted

    # Property key may be an IP Address (i.e. "172.16.0.1"), and IP Address and
    # Port (i.e. "172.16.0.1:8443") or a CIDR (i.e. "172.16.0.12/20")
    # @return [Hash[String, NetworkStaticNatProperty]]
    attr_accessor :static_nat

    # A mapping from model property names to API property names.
    def self.names
      @_hash = {} if @_hash.nil?
      @_hash['create_simple_service_policy'] = 'create_simple_service_policy'
      @_hash['destination_nat'] = 'destination_nat'
      @_hash['enabled'] = 'enabled'
      @_hash['restricted'] = 'restricted'
      @_hash['static_nat'] = 'static_nat'
      @_hash
    end

    # An array for optional fields
    def self.optionals
      %w[
        create_simple_service_policy
        destination_nat
        enabled
        restricted
        static_nat
      ]
    end

    # An array for nullable fields
    def self.nullables
      []
    end

    def initialize(create_simple_service_policy = false, destination_nat = SKIP,
                   enabled = SKIP, restricted = false, static_nat = SKIP)
      unless create_simple_service_policy == SKIP
        @create_simple_service_policy =
          create_simple_service_policy
      end
      @destination_nat = destination_nat unless destination_nat == SKIP
      @enabled = enabled unless enabled == SKIP
      @restricted = restricted unless restricted == SKIP
      @static_nat = static_nat unless static_nat == SKIP
    end

    # Creates an instance of the object from a hash.
    def self.from_hash(hash)
      return nil unless hash

      # Extract variables from the hash.
      create_simple_service_policy =
        hash['create_simple_service_policy'] ||= false
      destination_nat = NetworkDestinationNatProperty.from_hash(hash['destination_nat']) if
        hash['destination_nat']

      destination_nat = SKIP unless hash.key?('destination_nat')
      enabled = hash.key?('enabled') ? hash['enabled'] : SKIP
      restricted = hash['restricted'] ||= false
      static_nat = NetworkStaticNatProperty.from_hash(hash['static_nat']) if hash['static_nat']

      static_nat = SKIP unless hash.key?('static_nat')

      # Create object from extracted values.
      NetworkInternetAccess.new(create_simple_service_policy,
                                destination_nat,
                                enabled,
                                restricted,
                                static_nat)
    end
  end
end
