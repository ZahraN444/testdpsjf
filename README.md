
# Getting Started with Mist API

## Introduction

> Version: **2408.1.0**
> 
> Date: **August 1, 2024**

---


### Additional Documentation

* [Mist Automation Guide](https://www.juniper.net/documentation/us/en/software/mist/automation-integration/index.html)
* [Mist Location SDK](https://www.juniper.net/documentation/us/en/software/mist/location_services/topics/concept/mist-how-get-mist-sdk.html)
* [Mist Product Updates](https://www.mist.com/documentation/category/product-updates/)

---


### Helpful Resources

* [API Sandbox and Exercises](https://api-class.mist.com/)
* [Postman Collection, Runners and Webhook Samples](https://www.postman.com/juniper-mist/workspace/mist-systems-s-public-workspace)
* [API Demo Apps](https://apps.mist-lab.fr/)
* [Juniper Blog](https://blogs.juniper.net/)

---


## Install the Package

Install the gem from the command line:

```ruby
gem install pack-rubyyy -v 2.3.4
```

Or add the gem to your Gemfile and run `bundle`:

```ruby
gem 'pack-rubyyy', '2.3.4'
```

For additional gem details, see the [RubyGems page for the pack-rubyyy gem](https://rubygems.org/gems/pack-rubyyy/versions/2.3.4).

## Test the SDK

To run the tests, navigate to the root directory of the SDK in your terminal and execute the following command:

```
rake
```

## Initialize the API Client

**_Note:_** Documentation for the client can be found [here.](https://www.github.com/ZahraN444/testdpsjf/tree/2.3.4/doc/client.md)

The following parameters are configurable for the API Client:

| Parameter | Type | Description |
|  --- | --- | --- |
| `environment` | `Environment` | The API environment. <br> **Default: `Environment.PRODUCTION`** |
| `connection` | `Faraday::Connection` | The Faraday connection object passed by the SDK user for making requests |
| `adapter` | `Faraday::Adapter` | The Faraday adapter object passed by the SDK user for performing http requests |
| `timeout` | `Float` | The value to use for connection timeout. <br> **Default: 60** |
| `max_retries` | `Integer` | The number of times to retry an endpoint call if it fails. <br> **Default: 0** |
| `retry_interval` | `Float` | Pause in seconds between retries. <br> **Default: 1** |
| `backoff_factor` | `Float` | The amount to multiply each successive retry's interval amount by in order to provide backoff. <br> **Default: 2** |
| `retry_statuses` | `Array` | A list of HTTP statuses to retry. <br> **Default: [408, 413, 429, 500, 502, 503, 504, 521, 522, 524]** |
| `retry_methods` | `Array` | A list of HTTP methods to retry. <br> **Default: %i[get put]** |
| `http_callback` | `HttpCallBack` | The Http CallBack allows defining callables for pre and post API calls. |
| `api_token_credentials` | [`ApiTokenCredentials`](https://www.github.com/ZahraN444/testdpsjf/tree/2.3.4/doc/auth/custom-header-signature.md) | The credential object for Custom Header Signature |
| `basic_auth_credentials` | [`BasicAuthCredentials`](https://www.github.com/ZahraN444/testdpsjf/tree/2.3.4/doc/auth/basic-authentication.md) | The credential object for Basic Authentication |
| `csrf_token_credentials` | [`CsrfTokenCredentials`](https://www.github.com/ZahraN444/testdpsjf/tree/2.3.4/doc/auth/custom-header-signature-1.md) | The credential object for Custom Header Signature |

The API client can be initialized as follows:

```ruby
client = MistApi::Client.new(
  api_token_credentials: ApiTokenCredentials.new(
    authorization: 'Authorization'
  ),
  basic_auth_credentials: BasicAuthCredentials.new(
    username: 'Username',
    password: 'Password'
  ),
  csrf_token_credentials: CsrfTokenCredentials.new(
    x_csrf_token: 'X-CSRFToken'
  ),
  environment: Environment::PRODUCTION
)
```

## Environments

The SDK can be configured to use a different environment for making API calls. Available environments are:

### Fields

| Name | Description |
|  --- | --- |
| production | **Default** |
| environment2 | - |
| environment3 | - |
| environment4 | - |
| environment5 | - |
| environment6 | - |
| environment7 | - |
| environment8 | - |

## Authorization

This API uses the following authentication schemes.

* [`apiToken (Custom Header Signature)`](https://www.github.com/ZahraN444/testdpsjf/tree/2.3.4/doc/auth/custom-header-signature.md)
* [`basicAuth (Basic Authentication)`](https://www.github.com/ZahraN444/testdpsjf/tree/2.3.4/doc/auth/basic-authentication.md)
* [`csrfToken (Custom Header Signature)`](https://www.github.com/ZahraN444/testdpsjf/tree/2.3.4/doc/auth/custom-header-signature-1.md)

## List of APIs

* [Orgs NAC Tags](https://www.github.com/ZahraN444/testdpsjf/tree/2.3.4/doc/controllers/orgs-nac-tags.md)
* [Orgs NAC Portals](https://www.github.com/ZahraN444/testdpsjf/tree/2.3.4/doc/controllers/orgs-nac-portals.md)

## Classes Documentation

* [Utility Classes](https://www.github.com/ZahraN444/testdpsjf/tree/2.3.4/doc/utility-classes.md)
* [HttpResponse](https://www.github.com/ZahraN444/testdpsjf/tree/2.3.4/doc/http-response.md)
* [HttpRequest](https://www.github.com/ZahraN444/testdpsjf/tree/2.3.4/doc/http-request.md)

