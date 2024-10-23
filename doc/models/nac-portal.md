
# Nac Portal

## Structure

`NacPortal`

## Fields

| Name | Type | Tags | Description |
|  --- | --- | --- | --- |
| `access_type` | [`NacPortalAccessTypeEnum`](../../doc/models/nac-portal-access-type-enum.md) | Optional | - |
| `bg_image_url` | `String` | Optional | background image |
| `cert_expire_time` | `Integer` | Optional | in days |
| `enable_telemetry` | `TrueClass \| FalseClass` | Optional | model, version, fingering, events (connecting, disconnect, roaming), which ap |
| `expiry_notification_time` | `Integer` | Optional | in days |
| `guest_portal_config` | [`NacPortalSso`](../../doc/models/nac-portal-sso.md) | Optional | - |
| `name` | `String` | Optional | - |
| `notify_expiry` | `TrueClass \| FalseClass` | Optional | phase 2 |
| `ssid` | `String` | Optional | - |
| `sso` | [`NacPortalSso`](../../doc/models/nac-portal-sso.md) | Optional | - |
| `template_url` | `String` | Optional | - |
| `thumbnail_url` | `String` | Optional | - |
| `tos` | `String` | Optional | - |
| `type` | [`NacPortalTypeEnum`](../../doc/models/nac-portal-type-enum.md) | Optional | - |

## Example (as JSON)

```json
{
  "cert_expire_time": 365,
  "name": "get-wifi",
  "ssid": "Corp",
  "access_type": "wireless",
  "bg_image_url": "bg_image_url2",
  "enable_telemetry": false,
  "expiry_notification_time": 2
}
```

