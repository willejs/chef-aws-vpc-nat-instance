# aws-vpc-nat-instance-cookbook

This is a simple cookbook to setup a NAT instance, and additionally set source destination checking for the instance off in amazon. 

## Supported Platforms

- Ubuntu 12.04

## Attributes

<table>
  <tr>
    <th>Key</th>
    <th>Type</th>
    <th>Description</th>
    <th>Default</th>
  </tr>
  <tr>
    <td><tt>['aws-vpc-nat-instance']['ipmasq_src']</tt></td>
    <td>String</td>
    <td>10.0.0.0/8</td>
    <td><tt>true</tt></td>
  </tr>
  <tr>
    <td><tt>['aws-vpc-nat-instance']['interface']</tt></td>
    <td>String</td>
    <td>eth0</td>
    <td><tt>true</tt></td>
  </tr>  
  <tr>
    <td><tt>['aws-vpc-nat-instance']['access_key_id']</tt></td>
    <td>String</td>
    <td>nil</td>
  </tr>
  <tr>
    <td><tt>['aws-vpc-nat-instance']['secret_access_key']</tt></td>
    <td>String</td>
    <td>nil</td>
  </tr>
  <tr>
    <td><tt>['aws-vpc-nat-instance']['disable_source_dest_check']</tt></td>
    <td>Boolean</td>
    <td>true</td>
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

Author:: Will Salt (<williamejsalt@gmail.com>)
