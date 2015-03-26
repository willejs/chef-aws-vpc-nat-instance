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
    <td>Which subnet to accept traffic from</td>
    <td><tt>10.0.0.0/8</tt></td>
  </tr>
  <tr>
    <td><tt>['aws-vpc-nat-instance']['interface']</tt></td>
    <td>String</td>
    <td>Output interface, probably to the internet</td>
    <td><tt>eth0</tt></td>
  </tr>  
  <tr>
    <td><tt>['aws-vpc-nat-instance']['access_key_id']</tt></td>
    <td>nil</td>
    <td>aws key</td>
    <td><tt>nil</tt></td>
  </tr>
  <tr>
    <td><tt>['aws-vpc-nat-instance']['secret_access_key']</tt></td>
    <td>String</td>
    <td>aws secret</td>
    <td><tt>nil</tt></td>
  </tr>
  <tr>
    <td><tt>['aws-vpc-nat-instance']['disable_source_dest_check']</tt></td>
    <td>String</td>
    <td>Disable source dest check</td>
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
