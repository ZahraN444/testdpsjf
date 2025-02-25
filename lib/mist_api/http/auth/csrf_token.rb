# mist_api
#
# This file was automatically generated by APIMATIC v2.0
# ( https://apimatic.io ).

module MistApi
  # Utility class for custom header authorization.
  class CsrfToken < CoreLibrary::HeaderAuth
    # Display error message on occurrence of authentication failure.
    # @returns [String] The oAuth error message.
    def error_message
      'CsrfToken: x_csrf_token is undefined.'
    end

    # Initialization constructor.
    def initialize(csrf_token_credentials)
      auth_params = {}
      auth_params['X-CSRFToken'] = csrf_token_credentials.x_csrf_token unless
        csrf_token_credentials.nil? || csrf_token_credentials.x_csrf_token.nil?

      super auth_params
    end
  end

  # Data class for CsrfTokenCredentials.
  # Data class for CsrfTokenCredentials.
  class CsrfTokenCredentials
    attr_reader :x_csrf_token

    def initialize(x_csrf_token:)
      raise ArgumentError, 'x_csrf_token cannot be nil' if x_csrf_token.nil?

      @x_csrf_token = x_csrf_token
    end

    def clone_with(x_csrf_token: nil)
      x_csrf_token ||= self.x_csrf_token

      CsrfTokenCredentials.new(x_csrf_token: x_csrf_token)
    end
  end
end
