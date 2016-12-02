require 'spec_helper'

describe 'ipsec::psk' do
  let(:facts) do
    {
      :osfamily => 'RedHat',
      :operatingsystem => 'CentOS',
      :operatingsystemrelease => '7.0',
    }
  end

  let(:title) { 'PSK-TEST-1' }
  let(:params) do
    {
      :leftid => '192.168.1.1',
      :rightid => '192.168.2.1',
    }
  end

  it do
    is_expected.to contain_file('/etc/ipsec.d/192_168_1_1_192_168_2_1.secrets')
  end
end
