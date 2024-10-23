# mist_api
#
# This file was automatically generated by APIMATIC v2.0
# ( https://apimatic.io ).

module MistApi
  # Api V1 Orgs Nacportals Portal Image 401 Error class.
  class ApiV1OrgsNacportalsPortalImage401ErrorException < APIException
    SKIP = Object.new
    private_constant :SKIP

    # TODO: Write general description for this method
    # @return [String]
    attr_accessor :detail

    # The constructor.
    # @param [String] The reason for raising an exception.
    # @param [HttpResponse] The HttpReponse of the API call.
    def initialize(reason, response)
      super(reason, response)
      hash = APIHelper.json_deserialize(@response.raw_body)
      unbox(hash)
    end

    # Populates this object by extracting properties from a hash.
    # @param [Hash] The deserialized response sent by the server in the
    # response body.
    def unbox(hash)
      @detail = hash.key?('detail') ? hash['detail'] : SKIP
    end
  end
end
