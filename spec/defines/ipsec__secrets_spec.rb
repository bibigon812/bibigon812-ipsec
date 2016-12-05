require 'spec_helper'

describe 'ipsec::secrets' do
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
      :leftid  => '192.168.1.1',
      :rightid => '192.168.2.1',
      :psk     => 'preshared secret key',
    }
  end

  it do
    is_expected.to contain_file('/etc/ipsec.d/192_168_1_1_192_168_2_1.secrets')
  end
end
