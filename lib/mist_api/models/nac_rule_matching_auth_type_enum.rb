# mist_api
#
# This file was automatically generated by APIMATIC v2.0
# ( https://apimatic.io ).

module MistApi
  # enum: `cert`, `device-auth`, `eap-teap`, `eap-tls`, `eap-ttls`, `idp`,
  # `mab`, `peap-tls`, `psk`
  class NacRuleMatchingAuthTypeEnum
    NAC_RULE_MATCHING_AUTH_TYPE_ENUM = [
      # TODO: Write general description for CERT
      CERT = 'cert'.freeze,

      # TODO: Write general description for DEVICEAUTH
      DEVICEAUTH = 'device-auth'.freeze,

      # TODO: Write general description for EAPTEAP
      EAPTEAP = 'eap-teap'.freeze,

      # TODO: Write general description for EAPTLS
      EAPTLS = 'eap-tls'.freeze,

      # TODO: Write general description for EAPTTLS
      EAPTTLS = 'eap-ttls'.freeze,

      # TODO: Write general description for IDP
      IDP = 'idp'.freeze,

      # TODO: Write general description for MAB
      MAB = 'mab'.freeze,

      # TODO: Write general description for PEAPTLS
      PEAPTLS = 'peap-tls'.freeze,

      # TODO: Write general description for PSK
      PSK = 'psk'.freeze
    ].freeze

    def self.validate(value)
      return false if value.nil?

      NAC_RULE_MATCHING_AUTH_TYPE_ENUM.include?(value)
    end
  end
end
