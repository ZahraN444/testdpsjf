
# Nac Crl File

## Structure

`NacCrlFile`

## Fields

| Name | Type | Tags | Description |
|  --- | --- | --- | --- |
| `created_time` | `Float` | Optional | Time at which the file was first uploaded, in epoch |
| `id` | `String` | Optional | ID for file upload, used to identify file even for deletion |
| `modified_time` | `Float` | Optional | Time at which the file was last updated, in epoch |
| `name` | `String` | Optional | Name for the .crl file issuer if set |
| `url` | `String` | Optional | Download URL for the .crl file |

## Example (as JSON)

```json
{
  "created_time": 1698099079.0,
  "id": "a1ca26f3-44dd-4833-9a7b-97bbb2ab5230",
  "modified_time": 1698099079.0,
  "name": "SampleCertificateSigner",
  "url": "http://url/to/crl_file.crl"
}
```

