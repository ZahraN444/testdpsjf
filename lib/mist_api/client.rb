# mist_api
#
# This file was automatically generated by APIMATIC v2.0
# ( https://apimatic.io ).

module MistApi
  #  mist_api client class.
  class Client
    include CoreLibrary
    attr_reader :config, :auth_managers

    # Access to orgs_nac_tags controller.
    # @return [OrgsNACTagsController] Returns the controller instance.
    def orgs_nac_tags
      @orgs_nac_tags ||= OrgsNACTagsController.new @global_configuration
    end

    # Access to orgs_nac_portals controller.
    # @return [OrgsNACPortalsController] Returns the controller instance.
    def orgs_nac_portals
      @orgs_nac_portals ||= OrgsNACPortalsController.new @global_configuration
    end

    def initialize(
      connection: nil, adapter: :net_http_persistent, timeout: 60,
      max_retries: 0, retry_interval: 1, backoff_factor: 2,
      retry_statuses: [408, 413, 429, 500, 502, 503, 504, 521, 522, 524],
      retry_methods: %i[get put], http_callback: nil,
      environment: Environment::PRODUCTION, api_token_credentials: nil,
      basic_auth_credentials: nil, csrf_token_credentials: nil, config: nil
    )
      @config = if config.nil?
                  Configuration.new(
                    connection: connection, adapter: adapter, timeout: timeout,
                    max_retries: max_retries, retry_interval: retry_interval,
                    backoff_factor: backoff_factor,
                    retry_statuses: retry_statuses,
                    retry_methods: retry_methods, http_callback: http_callback,
                    environment: environment,
                    api_token_credentials: api_token_credentials,
                    basic_auth_credentials: basic_auth_credentials,
                    csrf_token_credentials: csrf_token_credentials
                  )
                else
                  config
                end

      @global_configuration = GlobalConfiguration.new(client_configuration: @config)
                                                 .base_uri_executor(@config.method(:get_base_uri))
                                                 .global_errors(BaseController::GLOBAL_ERRORS)
                                                 .user_agent(BaseController.user_agent)

      initialize_auth_managers(@global_configuration)
      @global_configuration = @global_configuration.auth_managers(@auth_managers)
    end

    # Initializes the auth managers hash used for authenticating API calls.
    # @param [GlobalConfiguration] global_config The global configuration of the SDK)
    def initialize_auth_managers(global_config)
      @auth_managers = {}
      http_client_config = global_config.client_configuration
      %w[apiToken basicAuth csrfToken].each { |auth| @auth_managers[auth] = nil }
      @auth_managers['apiToken'] = ApiToken.new(http_client_config.api_token_credentials)
      @auth_managers['basicAuth'] = BasicAuth.new(http_client_config.basic_auth_credentials)
      @auth_managers['csrfToken'] = CsrfToken.new(http_client_config.csrf_token_credentials)
    end
  end
end
