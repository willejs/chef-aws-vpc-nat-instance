module AwsVpcNatInstance
  module Helper
    
    def disable_source_dest()
		  require 'aws-sdk'

		  aws_region = node['ec2']['placement_availability_zone'][0..-2]

		  AWS.config(access_key_id: node['aws-vpc-nat-instance']['access_key_id'],
		             secret_access_key: node['aws-vpc-nat-instance']['secret_access_key'],
		             region: aws_region)

		  instance = AWS::EC2::Instance.new(node['ec2']['instance_id'])
		  instance.source_dest_check = false
    end

  end
end
