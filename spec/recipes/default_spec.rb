require_relative '../spec_helper'

describe 'aws-vpc-nat-instance::default' do
  let(:chef_run) { ChefSpec::ServerRunner.new.converge(described_recipe) }
 
  it 'creates the sysctl forward rule' do
    expect(chef_run).to apply_sysctl_param('net.ipv4.ip_forward')
  end

  it 'creates the nat masquerade rule' do
    expect(chef_run).to append_simple_iptables_rule('set up nat')
  end
end