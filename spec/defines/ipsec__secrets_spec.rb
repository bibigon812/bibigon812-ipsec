require 'spec_helper'

describe 'ipsec::secrets' do
  let(:facts) {
    {
      :osfamily => 'RedHat',
      :operatingsystem => 'CentOS',
      :operatingsystemrelease => '7.0',
    }
  }

  context 'With valid params.' do
    let(:title) { 'test-1' }
    let(:params) {
      {
        :leftid  => '192.168.1.1',
        :rightid => '192.168.2.1',
        :psk     => 'preshared secret key',
      }
    }

    it {
      is_expected.to contain_file('/etc/ipsec.d/192_168_1_1_192_168_2_1.secrets')
    }
  end


  context 'Without psk, rsa and xauth.' do
    let(:title) { 'test-2' }
    let(:params) {
      {
        :leftid  => '192.168.3.1',
        :rightid => '192.168.4.1',
      }
    }

    it do
      expect {
        is_expected.to contain_file('/etc/ipsec.d/192_168_3_1_192_168_4_1.secrets')
      }.to raise_error(Puppet::Error, /Psk, rsa or xauth required/)
    end
  end
end
