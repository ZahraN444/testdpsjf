# Orgs NAC Portals

```ruby
orgs_nac_portals_controller = client.orgs_nac_portals
```

## Class Name

`OrgsNACPortalsController`

## Methods

* [List Org Nac Portals](../../doc/controllers/orgs-nac-portals.md#list-org-nac-portals)
* [Create Org Nac Portal](../../doc/controllers/orgs-nac-portals.md#create-org-nac-portal)
* [Delete Org Nac Portal](../../doc/controllers/orgs-nac-portals.md#delete-org-nac-portal)
* [Get Org Nac Portal](../../doc/controllers/orgs-nac-portals.md#get-org-nac-portal)
* [Update Org Nac Portal](../../doc/controllers/orgs-nac-portals.md#update-org-nac-portal)
* [List Org Nac Portal Sso Latest Failures](../../doc/controllers/orgs-nac-portals.md#list-org-nac-portal-sso-latest-failures)
* [Delete Org Nac Portal Image](../../doc/controllers/orgs-nac-portals.md#delete-org-nac-portal-image)
* [Upload Org Nac Portal Image](../../doc/controllers/orgs-nac-portals.md#upload-org-nac-portal-image)
* [Update Org Nac Portal Tempalte](../../doc/controllers/orgs-nac-portals.md#update-org-nac-portal-tempalte)


# List Org Nac Portals

List Org NAC Portals

```ruby
def list_org_nac_portals(org_id,
                         page: 1,
                         limit: 100)
```

## Parameters

| Parameter | Type | Tags | Description |
|  --- | --- | --- | --- |
| `org_id` | `UUID \| String` | Template, Required | - |
| `page` | `Integer` | Query, Optional | **Default**: `1`<br>**Constraints**: `>= 1` |
| `limit` | `Integer` | Query, Optional | **Default**: `100`<br>**Constraints**: `>= 0` |

## Response Type

[`Array<NacPortal>`](../../doc/models/nac-portal.md)

## Example Usage

```ruby
org_id = '000000ab-00ab-00ab-00ab-0000000000ab'

page = 1

limit = 100

result = orgs_nac_portals_controller.list_org_nac_portals(
  org_id,
  page: page,
  limit: limit
)
```

## Example Response *(as JSON)*

```json
[
  {
    "access_type": "wireless",
    "cert_expire_time": 365,
    "enable_telemetry": true,
    "expiry_notification_time": 2,
    "name": "get-wifi",
    "notify_expiry": true,
    "ssid": "Corp",
    "sso": {
      "idp_cert": "-----BEGIN CERTIFICATE-----\nMIIFZjCCA06gAwIBAgIIP61/1qm/uDowDQYJKoZIhvcNAQELBQE\n-----END CERTIFICATE-----",
      "idp_sign_algo": "sha256",
      "idp_sso_url": "https://yourorg.onelogin.com/trust/saml2/http-post/sso/138130",
      "issuer": "https://app.onelogin.com/saml/metadata/138130",
      "nameid_format": "email",
      "sso_role_matching": [
        {
          "assigned": "user",
          "match": "Student"
        }
      ],
      "use_sso_role_for_cert": true
    }
  }
]
```

## Errors

| HTTP Status Code | Error Description | Exception Class |
|  --- | --- | --- |
| 400 | Bad Syntax | [`ApiV1OrgsNacportals400ErrorException`](../../doc/models/api-v1-orgs-nacportals-400-error-exception.md) |
| 401 | Unauthorized | [`ApiV1OrgsNacportals401ErrorException`](../../doc/models/api-v1-orgs-nacportals-401-error-exception.md) |
| 403 | Permission Denied | [`ApiV1OrgsNacportals403ErrorException`](../../doc/models/api-v1-orgs-nacportals-403-error-exception.md) |
| 404 | Not found. The API endpoint doesnâ€™t exist or resource doesnâ€™ t exist | [`ResponseHttp404Exception`](../../doc/models/response-http-404-exception.md) |
| 429 | Too Many Request. The API Token used for the request reached the 5000 API Calls per hour threshold | [`ApiV1OrgsNacportals429ErrorException`](../../doc/models/api-v1-orgs-nacportals-429-error-exception.md) |


# Create Org Nac Portal

Create Org NAC Portal

```ruby
def create_org_nac_portal(org_id,
                          body: nil)
```

## Parameters

| Parameter | Type | Tags | Description |
|  --- | --- | --- | --- |
| `org_id` | `UUID \| String` | Template, Required | - |
| `body` | [`NacPortal`](../../doc/models/nac-portal.md) | Body, Optional | - |

## Response Type

[`NacPortal`](../../doc/models/nac-portal.md)

## Example Usage

```ruby
org_id = '000000ab-00ab-00ab-00ab-0000000000ab'

body = NacPortal.new(
  nil,
  nil,
  365,
  nil,
  nil,
  nil,
  'get-wifi',
  nil,
  'Corp'
)

result = orgs_nac_portals_controller.create_org_nac_portal(
  org_id,
  body: body
)
```

## Example Response *(as JSON)*

```json
{
  "access_type": "wireless",
  "cert_expire_time": 365,
  "enable_telemetry": true,
  "expiry_notification_time": 2,
  "name": "get-wifi",
  "notify_expiry": true,
  "ssid": "Corp",
  "sso": {
    "idp_cert": "-----BEGIN CERTIFICATE-----\nMIIFZjCCA06gAwIBAgIIP61/1qm/uDowDQYJKoZIhvcNAQELBQE\n-----END CERTIFICATE-----",
    "idp_sign_algo": "sha256",
    "idp_sso_url": "https://yourorg.onelogin.com/trust/saml2/http-post/sso/138130",
    "issuer": "https://app.onelogin.com/saml/metadata/138130",
    "nameid_format": "email",
    "sso_role_matching": [
      {
        "assigned": "user",
        "match": "Student"
      }
    ],
    "use_sso_role_for_cert": true
  }
}
```

## Errors

| HTTP Status Code | Error Description | Exception Class |
|  --- | --- | --- |
| 400 | Bad Syntax | [`ApiV1OrgsNacportals400ErrorException`](../../doc/models/api-v1-orgs-nacportals-400-error-exception.md) |
| 401 | Unauthorized | [`ApiV1OrgsNacportals401ErrorException`](../../doc/models/api-v1-orgs-nacportals-401-error-exception.md) |
| 403 | Permission Denied | [`ApiV1OrgsNacportals403ErrorException`](../../doc/models/api-v1-orgs-nacportals-403-error-exception.md) |
| 404 | Not found. The API endpoint doesnâ€™t exist or resource doesnâ€™ t exist | [`ResponseHttp404Exception`](../../doc/models/response-http-404-exception.md) |
| 429 | Too Many Request. The API Token used for the request reached the 5000 API Calls per hour threshold | [`ApiV1OrgsNacportals429ErrorException`](../../doc/models/api-v1-orgs-nacportals-429-error-exception.md) |


# Delete Org Nac Portal

Delete Org NAC Portal

```ruby
def delete_org_nac_portal(org_id,
                          nacportal_id)
```

## Parameters

| Parameter | Type | Tags | Description |
|  --- | --- | --- | --- |
| `org_id` | `UUID \| String` | Template, Required | - |
| `nacportal_id` | `UUID \| String` | Template, Required | - |

## Response Type

`void`

## Example Usage

```ruby
org_id = '000000ab-00ab-00ab-00ab-0000000000ab'

nacportal_id = '000000ab-00ab-00ab-00ab-0000000000ab'

orgs_nac_portals_controller.delete_org_nac_portal(
  org_id,
  nacportal_id
)
```

## Errors

| HTTP Status Code | Error Description | Exception Class |
|  --- | --- | --- |
| 400 | Bad Syntax | [`ApiV1OrgsNacportals400ErrorException`](../../doc/models/api-v1-orgs-nacportals-400-error-exception.md) |
| 401 | Unauthorized | [`ApiV1OrgsNacportals401ErrorException`](../../doc/models/api-v1-orgs-nacportals-401-error-exception.md) |
| 403 | Permission Denied | [`ApiV1OrgsNacportals403ErrorException`](../../doc/models/api-v1-orgs-nacportals-403-error-exception.md) |
| 404 | Not found. The API endpoint doesnâ€™t exist or resource doesnâ€™ t exist | [`ResponseHttp404Exception`](../../doc/models/response-http-404-exception.md) |
| 429 | Too Many Request. The API Token used for the request reached the 5000 API Calls per hour threshold | [`ApiV1OrgsNacportals429ErrorException`](../../doc/models/api-v1-orgs-nacportals-429-error-exception.md) |


# Get Org Nac Portal

Get Org NAC Portal

```ruby
def get_org_nac_portal(org_id,
                       nacportal_id)
```

## Parameters

| Parameter | Type | Tags | Description |
|  --- | --- | --- | --- |
| `org_id` | `UUID \| String` | Template, Required | - |
| `nacportal_id` | `UUID \| String` | Template, Required | - |

## Response Type

[`NacPortal`](../../doc/models/nac-portal.md)

## Example Usage

```ruby
org_id = '000000ab-00ab-00ab-00ab-0000000000ab'

nacportal_id = '000000ab-00ab-00ab-00ab-0000000000ab'

result = orgs_nac_portals_controller.get_org_nac_portal(
  org_id,
  nacportal_id
)
```

## Example Response *(as JSON)*

```json
{
  "access_type": "wireless",
  "cert_expire_time": 365,
  "enable_telemetry": true,
  "expiry_notification_time": 2,
  "name": "get-wifi",
  "notify_expiry": true,
  "ssid": "Corp",
  "sso": {
    "idp_cert": "-----BEGIN CERTIFICATE-----\nMIIFZjCCA06gAwIBAgIIP61/1qm/uDowDQYJKoZIhvcNAQELBQE\n-----END CERTIFICATE-----",
    "idp_sign_algo": "sha256",
    "idp_sso_url": "https://yourorg.onelogin.com/trust/saml2/http-post/sso/138130",
    "issuer": "https://app.onelogin.com/saml/metadata/138130",
    "nameid_format": "email",
    "sso_role_matching": [
      {
        "assigned": "user",
        "match": "Student"
      }
    ],
    "use_sso_role_for_cert": true
  }
}
```

## Errors

| HTTP Status Code | Error Description | Exception Class |
|  --- | --- | --- |
| 400 | Bad Syntax | [`ApiV1OrgsNacportals400ErrorException`](../../doc/models/api-v1-orgs-nacportals-400-error-exception.md) |
| 401 | Unauthorized | [`ApiV1OrgsNacportals401ErrorException`](../../doc/models/api-v1-orgs-nacportals-401-error-exception.md) |
| 403 | Permission Denied | [`ApiV1OrgsNacportals403ErrorException`](../../doc/models/api-v1-orgs-nacportals-403-error-exception.md) |
| 404 | Not found. The API endpoint doesnâ€™t exist or resource doesnâ€™ t exist | [`ResponseHttp404Exception`](../../doc/models/response-http-404-exception.md) |
| 429 | Too Many Request. The API Token used for the request reached the 5000 API Calls per hour threshold | [`ApiV1OrgsNacportals429ErrorException`](../../doc/models/api-v1-orgs-nacportals-429-error-exception.md) |


# Update Org Nac Portal

Update Org NAC Portal

```ruby
def update_org_nac_portal(org_id,
                          nacportal_id,
                          body: nil)
```

## Parameters

| Parameter | Type | Tags | Description |
|  --- | --- | --- | --- |
| `org_id` | `UUID \| String` | Template, Required | - |
| `nacportal_id` | `UUID \| String` | Template, Required | - |
| `body` | [`NacPortal`](../../doc/models/nac-portal.md) | Body, Optional | - |

## Response Type

[`NacPortal`](../../doc/models/nac-portal.md)

## Example Usage

```ruby
org_id = '000000ab-00ab-00ab-00ab-0000000000ab'

nacportal_id = '000000ab-00ab-00ab-00ab-0000000000ab'

body = NacPortal.new(
  nil,
  nil,
  365,
  nil,
  nil,
  nil,
  'get-wifi',
  nil,
  'Corp'
)

result = orgs_nac_portals_controller.update_org_nac_portal(
  org_id,
  nacportal_id,
  body: body
)
```

## Example Response *(as JSON)*

```json
{
  "access_type": "wireless",
  "cert_expire_time": 365,
  "enable_telemetry": true,
  "expiry_notification_time": 2,
  "name": "get-wifi",
  "notify_expiry": true,
  "ssid": "Corp",
  "sso": {
    "idp_cert": "-----BEGIN CERTIFICATE-----\nMIIFZjCCA06gAwIBAgIIP61/1qm/uDowDQYJKoZIhvcNAQELBQE\n-----END CERTIFICATE-----",
    "idp_sign_algo": "sha256",
    "idp_sso_url": "https://yourorg.onelogin.com/trust/saml2/http-post/sso/138130",
    "issuer": "https://app.onelogin.com/saml/metadata/138130",
    "nameid_format": "email",
    "sso_role_matching": [
      {
        "assigned": "user",
        "match": "Student"
      }
    ],
    "use_sso_role_for_cert": true
  }
}
```

## Errors

| HTTP Status Code | Error Description | Exception Class |
|  --- | --- | --- |
| 400 | Bad Syntax | [`ApiV1OrgsNacportals400ErrorException`](../../doc/models/api-v1-orgs-nacportals-400-error-exception.md) |
| 401 | Unauthorized | [`ApiV1OrgsNacportals401ErrorException`](../../doc/models/api-v1-orgs-nacportals-401-error-exception.md) |
| 403 | Permission Denied | [`ApiV1OrgsNacportals403ErrorException`](../../doc/models/api-v1-orgs-nacportals-403-error-exception.md) |
| 404 | Not found. The API endpoint doesnâ€™t exist or resource doesnâ€™ t exist | [`ResponseHttp404Exception`](../../doc/models/response-http-404-exception.md) |
| 429 | Too Many Request. The API Token used for the request reached the 5000 API Calls per hour threshold | [`ApiV1OrgsNacportals429ErrorException`](../../doc/models/api-v1-orgs-nacportals-429-error-exception.md) |


# List Org Nac Portal Sso Latest Failures

Get List of Org NAC Portal SSO Latest Failures

```ruby
def list_org_nac_portal_sso_latest_failures(org_id,
                                            nacportal_id,
                                            page: 1,
                                            limit: 100,
                                            start: nil,
                                            mend: nil,
                                            duration: '1d')
```

## Parameters

| Parameter | Type | Tags | Description |
|  --- | --- | --- | --- |
| `org_id` | `UUID \| String` | Template, Required | - |
| `nacportal_id` | `UUID \| String` | Template, Required | - |
| `page` | `Integer` | Query, Optional | **Default**: `1`<br>**Constraints**: `>= 1` |
| `limit` | `Integer` | Query, Optional | **Default**: `100`<br>**Constraints**: `>= 0` |
| `start` | `Integer` | Query, Optional | start datetime, can be epoch or relative time like -1d, -1w; -1d if not specified |
| `mend` | `Integer` | Query, Optional | end datetime, can be epoch or relative time like -1d, -2h; now if not specified |
| `duration` | `String` | Query, Optional | duration like 7d, 2w<br>**Default**: `'1d'` |

## Response Type

[`ResponseSsoFailureSearch`](../../doc/models/response-sso-failure-search.md)

## Example Usage

```ruby
org_id = '000000ab-00ab-00ab-00ab-0000000000ab'

nacportal_id = '000000ab-00ab-00ab-00ab-0000000000ab'

page = 1

limit = 100

duration = '10m'

result = orgs_nac_portals_controller.list_org_nac_portal_sso_latest_failures(
  org_id,
  nacportal_id,
  page: page,
  limit: limit,
  duration: duration
)
```

## Example Response *(as JSON)*

```json
{
  "results": [
    {
      "detail": "string",
      "saml_assertion_xml": "string",
      "timestamp": 0
    }
  ]
}
```

## Errors

| HTTP Status Code | Error Description | Exception Class |
|  --- | --- | --- |
| 400 | Bad Syntax | [`ApiV1OrgsNacportalsFailures400ErrorException`](../../doc/models/api-v1-orgs-nacportals-failures-400-error-exception.md) |
| 401 | Unauthorized | [`ApiV1OrgsNacportalsFailures401ErrorException`](../../doc/models/api-v1-orgs-nacportals-failures-401-error-exception.md) |
| 403 | Permission Denied | [`ApiV1OrgsNacportalsFailures403ErrorException`](../../doc/models/api-v1-orgs-nacportals-failures-403-error-exception.md) |
| 404 | Not found. The API endpoint doesnâ€™t exist or resource doesnâ€™ t exist | [`ResponseHttp404Exception`](../../doc/models/response-http-404-exception.md) |
| 429 | Too Many Request. The API Token used for the request reached the 5000 API Calls per hour threshold | [`ApiV1OrgsNacportalsFailures429ErrorException`](../../doc/models/api-v1-orgs-nacportals-failures-429-error-exception.md) |


# Delete Org Nac Portal Image

Delete background image for NAC Portal

If image is not uploaded or is deleted, NAC Portal will use default image.

```ruby
def delete_org_nac_portal_image(org_id,
                                nacportal_id)
```

## Parameters

| Parameter | Type | Tags | Description |
|  --- | --- | --- | --- |
| `org_id` | `UUID \| String` | Template, Required | - |
| `nacportal_id` | `UUID \| String` | Template, Required | - |

## Response Type

`void`

## Example Usage

```ruby
org_id = '000000ab-00ab-00ab-00ab-0000000000ab'

nacportal_id = '000000ab-00ab-00ab-00ab-0000000000ab'

orgs_nac_portals_controller.delete_org_nac_portal_image(
  org_id,
  nacportal_id
)
```

## Errors

| HTTP Status Code | Error Description | Exception Class |
|  --- | --- | --- |
| 400 | Bad Syntax | [`ApiV1OrgsNacportalsPortalImage400ErrorException`](../../doc/models/api-v1-orgs-nacportals-portal-image-400-error-exception.md) |
| 401 | Unauthorized | [`ApiV1OrgsNacportalsPortalImage401ErrorException`](../../doc/models/api-v1-orgs-nacportals-portal-image-401-error-exception.md) |
| 403 | Permission Denied | [`ApiV1OrgsNacportalsPortalImage403ErrorException`](../../doc/models/api-v1-orgs-nacportals-portal-image-403-error-exception.md) |
| 404 | Not found. The API endpoint doesnâ€™t exist or resource doesnâ€™ t exist | [`ResponseHttp404Exception`](../../doc/models/response-http-404-exception.md) |
| 429 | Too Many Request. The API Token used for the request reached the 5000 API Calls per hour threshold | [`ApiV1OrgsNacportalsPortalImage429ErrorException`](../../doc/models/api-v1-orgs-nacportals-portal-image-429-error-exception.md) |


# Upload Org Nac Portal Image

Upload background image for NAC Portal

```ruby
def upload_org_nac_portal_image(org_id,
                                nacportal_id,
                                file: nil,
                                json: nil)
```

## Parameters

| Parameter | Type | Tags | Description |
|  --- | --- | --- | --- |
| `org_id` | `UUID \| String` | Template, Required | - |
| `nacportal_id` | `UUID \| String` | Template, Required | - |
| `file` | `File \| UploadIO` | Form, Optional | Binary file |
| `json` | `String` | Form, Optional | JSON string describing the upload |

## Response Type

`void`

## Example Usage

```ruby
org_id = '000000ab-00ab-00ab-00ab-0000000000ab'

nacportal_id = '000000ab-00ab-00ab-00ab-0000000000ab'

orgs_nac_portals_controller.upload_org_nac_portal_image(
  org_id,
  nacportal_id
)
```

## Errors

| HTTP Status Code | Error Description | Exception Class |
|  --- | --- | --- |
| 400 | Bad Syntax | [`ApiV1OrgsNacportalsPortalImage400ErrorException`](../../doc/models/api-v1-orgs-nacportals-portal-image-400-error-exception.md) |
| 401 | Unauthorized | [`ApiV1OrgsNacportalsPortalImage401ErrorException`](../../doc/models/api-v1-orgs-nacportals-portal-image-401-error-exception.md) |
| 403 | Permission Denied | [`ApiV1OrgsNacportalsPortalImage403ErrorException`](../../doc/models/api-v1-orgs-nacportals-portal-image-403-error-exception.md) |
| 404 | Not found. The API endpoint doesnâ€™t exist or resource doesnâ€™ t exist | [`ResponseHttp404Exception`](../../doc/models/response-http-404-exception.md) |
| 429 | Too Many Request. The API Token used for the request reached the 5000 API Calls per hour threshold | [`ApiV1OrgsNacportalsPortalImage429ErrorException`](../../doc/models/api-v1-orgs-nacportals-portal-image-429-error-exception.md) |


# Update Org Nac Portal Tempalte

Update Org NAC Portal Template

```ruby
def update_org_nac_portal_tempalte(org_id,
                                   nacportal_id,
                                   body: nil)
```

## Parameters

| Parameter | Type | Tags | Description |
|  --- | --- | --- | --- |
| `org_id` | `UUID \| String` | Template, Required | - |
| `nacportal_id` | `UUID \| String` | Template, Required | - |
| `body` | [`NacPortalTemplate`](../../doc/models/nac-portal-template.md) | Body, Optional | - |

## Response Type

`void`

## Example Usage

```ruby
org_id = '000000ab-00ab-00ab-00ab-0000000000ab'

nacportal_id = '000000ab-00ab-00ab-00ab-0000000000ab'

body = NacPortalTemplate.new(
  nil,
  '#1074bc',
  nil,
  false
)

orgs_nac_portals_controller.update_org_nac_portal_tempalte(
  org_id,
  nacportal_id,
  body: body
)
```

## Errors

| HTTP Status Code | Error Description | Exception Class |
|  --- | --- | --- |
| 400 | Bad Syntax | [`ApiV1OrgsNacportalsPortalTemplate400ErrorException`](../../doc/models/api-v1-orgs-nacportals-portal-template-400-error-exception.md) |
| 401 | Unauthorized | [`ApiV1OrgsNacportalsPortalTemplate401ErrorException`](../../doc/models/api-v1-orgs-nacportals-portal-template-401-error-exception.md) |
| 403 | Permission Denied | [`ApiV1OrgsNacportalsPortalTemplate403ErrorException`](../../doc/models/api-v1-orgs-nacportals-portal-template-403-error-exception.md) |
| 404 | Not found. The API endpoint doesnâ€™t exist or resource doesnâ€™ t exist | [`ResponseHttp404Exception`](../../doc/models/response-http-404-exception.md) |
| 429 | Too Many Request. The API Token used for the request reached the 5000 API Calls per hour threshold | [`ApiV1OrgsNacportalsPortalTemplate429ErrorException`](../../doc/models/api-v1-orgs-nacportals-portal-template-429-error-exception.md) |

