require 'spec_helper'

describe 'ipsec::tunnel' do
  let(:facts) do
    {
      :osfamily => 'RedHat',
      :operatingsystem => 'CentOS',
      :operatingsystemrelease => '7.0',
    }
  end

  let(:title) { 'test-1' }
  let(:params) do
    {
      :left => '192.168.1.1',
      :leftprotoport => 'all',
      :leftsourceip => '10.0.0.1',
      :leftsubnet => '10.0.0.1/32',
      :right => '192.168.2.1',
      :rightprotoport => 'all',
      :rightsubnet => '10.0.0.2/32',
      :ike => 'aes256-sha;dh24',
      :psk => 'preshared secret key',
    }
  end

  it do
    is_expected.to contain_file('/etc/ipsec.d/tunnel_test_1.conf')
  end

  it do
    is_expected.to contain_file('/etc/ipsec.d/tunnel_test_1.secrets')
  end
end
