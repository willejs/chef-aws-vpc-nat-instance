require_relative '../spec_helper'

describe 'default' do
  describe command('sysctl net.ipv4.ip_forward') do
    its(:stdout) { should match /.*= 1/ }
  end

  describe iptables do
    it { should have_rule('-A POSTROUTING -s 10.0.0.0/8 -m comment --comment "set up nat" -j MASQUERADE').with_table('nat').with_chain('POSTROUTING') }
  end
end
