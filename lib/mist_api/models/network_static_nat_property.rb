# mist_api
#
# This file was automatically generated by APIMATIC v2.0
# ( https://apimatic.io ).

module MistApi
  # NetworkStaticNatProperty Model.
  class NetworkStaticNatProperty < BaseModel
    SKIP = Object.new
    private_constant :SKIP

    # TODO: Write general description for this method
    # @return [String]
    attr_accessor :internal_ip

    # TODO: Write general description for this method
    # @return [String]
    attr_accessor :name

    # If not set, we configure the nat policies against all WAN ports for
    # simplicity
    # @return [String]
    attr_accessor :wan_name

    # A mapping from model property names to API property names.
    def self.names
      @_hash = {} if @_hash.nil?
      @_hash['internal_ip'] = 'internal_ip'
      @_hash['name'] = 'name'
      @_hash['wan_name'] = 'wan_name'
      @_hash
    end

    # An array for optional fields
    def self.optionals
      %w[
        internal_ip
        name
        wan_name
      ]
    end

    # An array for nullable fields
    def self.nullables
      []
    end

    def initialize(internal_ip = SKIP, name = SKIP, wan_name = SKIP)
      @internal_ip = internal_ip unless internal_ip == SKIP
      @name = name unless name == SKIP
      @wan_name = wan_name unless wan_name == SKIP
    end

    # Creates an instance of the object from a hash.
    def self.from_hash(hash)
      return nil unless hash

      # Extract variables from the hash.
      internal_ip = hash.key?('internal_ip') ? hash['internal_ip'] : SKIP
      name = hash.key?('name') ? hash['name'] : SKIP
      wan_name = hash.key?('wan_name') ? hash['wan_name'] : SKIP

      # Create object from extracted values.
      NetworkStaticNatProperty.new(internal_ip,
                                   name,
                                   wan_name)
    end
  end
end
