
# Nac Portal Sso

## Structure

`NacPortalSso`

## Fields

| Name | Type | Tags | Description |
|  --- | --- | --- | --- |
| `idp_cert` | `String` | Optional | - |
| `idp_sign_algo` | `String` | Optional | - |
| `idp_sso_url` | `String` | Optional | - |
| `issuer` | `String` | Optional | - |
| `nameid_format` | `String` | Optional | - |
| `sso_role_matching` | [`Array<NacPortalSsoRoleMatching>`](../../doc/models/nac-portal-sso-role-matching.md) | Optional | - |
| `use_sso_role_for_cert` | `TrueClass \| FalseClass` | Optional | if it's desired to inject a role into Cert's Subject (so it can be used later on in policy) |

## Example (as JSON)

```json
{
  "idp_cert": "-----BEGIN CERTIFICATE-----\\nMIIFZjCCA06gAwIBAgIIP61/1qm/uDowDQYJKoZIhvcNAQELBQE\\n-----END CERTIFICATE-----",
  "idp_sign_algo": "sha256",
  "idp_sso_url": "https://yourorg.onelogin.com/trust/saml2/http-post/sso/138130",
  "issuer": "https://app.onelogin.com/saml/metadata/138130",
  "nameid_format": "email"
}
```

