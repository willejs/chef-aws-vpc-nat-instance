# aws-vpc-nat-instance-cookbook

TODO: Enter the cookbook description here.

## Supported Platforms

TODO: List your supported platforms.

## Attributes

<table>
  <tr>
    <th>Key</th>
    <th>Type</th>
    <th>Description</th>
    <th>Default</th>
  </tr>
  <tr>
    <td><tt>['aws-vpc-nat-instance']['bacon']</tt></td>
    <td>Boolean</td>
    <td>whether to include bacon</td>
    <td><tt>true</tt></td>
  </tr>
</table>

## Usage

### aws-vpc-nat-instance::default

Include `aws-vpc-nat-instance` in your node's `run_list`:

```json
{
  "run_list": [
    "recipe[aws-vpc-nat-instance::default]"
  ]
}
```

## License and Authors

Author:: Will Salt (<will@crowdsurge.com>)
