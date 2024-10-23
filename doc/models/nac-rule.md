
# Nac Rule

## Structure

`NacRule`

## Fields

| Name | Type | Tags | Description |
|  --- | --- | --- | --- |
| `action` | [`NacRuleActionEnum`](../../doc/models/nac-rule-action-enum.md) | Required | - |
| `apply_tags` | `Array<String>` | Optional | all optional, this goes into Access-Accept |
| `created_time` | `Float` | Optional | - |
| `enabled` | `TrueClass \| FalseClass` | Optional | enabled or not<br>**Default**: `true` |
| `id` | `UUID \| String` | Optional | - |
| `matching` | [`NacRuleMatching`](../../doc/models/nac-rule-matching.md) | Optional | - |
| `modified_time` | `Float` | Optional | - |
| `name` | `String` | Required | - |
| `not_matching` | [`NacRuleMatching`](../../doc/models/nac-rule-matching.md) | Optional | - |
| `order` | `Integer` | Optional | the order of the rule, lower value implies higher priority<br>**Constraints**: `>= 0` |
| `org_id` | `UUID \| String` | Optional | - |

## Example (as JSON)

```json
{
  "action": "allow",
  "apply_tags": [
    "c049dfcd-0c73-5014-1c64-062e9903f1e5"
  ],
  "enabled": true,
  "name": "name0",
  "order": 1,
  "org_id": "a97c1b22-a4e9-411e-9bfd-d8695a0f9e61",
  "created_time": 238.9,
  "id": "000004ec-0000-0000-0000-000000000000",
  "matching": {
    "auth_type": "cert",
    "nactags": [
      "nactags6"
    ],
    "port_types": [
      "wired"
    ],
    "site_ids": [
      "00000738-0000-0000-0000-000000000000"
    ],
    "sitegroup_ids": [
      "00002472-0000-0000-0000-000000000000",
      "00002473-0000-0000-0000-000000000000",
      "00002474-0000-0000-0000-000000000000"
    ]
  }
}
```

