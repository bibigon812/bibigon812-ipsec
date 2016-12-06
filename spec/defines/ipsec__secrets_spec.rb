require 'spec_helper'

describe 'ipsec::secrets', :type => :define do
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
      is_expected.to contain_file('/etc/ipsec.d/test_1.secrets')
    }
  end

  context 'Without psk, rsa and xauth.' do
    let(:title) { 'test-2' }
    let(:params) {
      {
        :leftid  => '192.168.3.1',
      }
    }

    it do
      expect {
        is_expected.to contain_file('/etc/ipsec.d/test_2.secrets')
      }.to raise_error(Puppet::Error, /Leftid, rightid and psk|rsa|xauth required./)
    end
  end

  context 'Remove configuration.' do
    let(:title) { 'test-3' }
    let(:params) {
      {
        :ensure => 'absent',
      }
    }
    it do
      expect {
        is_expected.to contain_file('/etc/ipsec.d/test_r.secrets').with({
          :enshure => 'absent',
        })
      }
    end
  end
end
