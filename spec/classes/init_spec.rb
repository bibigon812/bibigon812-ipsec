require 'spec_helper'

describe 'ipsec' do
  context 'kernel => Linux' do
    let(:facts) do
      {
        :osfamily => 'RedHat',
        :operatingsystem => 'CentOS',
        :operatingsystemrelease => '7.0',
      }
    end

    it { should contain_class('ipsec') }

    # Package
    it do
      is_expected.to contain_package('libreswan').with({
        :ensure => :present,
      })
    end

    # Configuration driectory
    it do
      is_expected.to contain_file('/etc/ipsec.d').with({
        :ensure => :directory,
      })
    end

    # Configuration file /etc/ipsec.conf
    it do
      is_expected.to contain_file('/etc/ipsec.conf').with({
        :ensure => :file,
        :mode   => '0600',
        :owner  => :root,
      })
    end

    # Configuration file /etc/ipsec.secrets
    it do
      is_expected.to contain_file('/etc/ipsec.secrets').with({
        :ensure => :file,
        :mode   => '0600',
        :owner  => :root,
      })
    end

    # Service
    it do
      is_expected.to contain_service('ipsec').with({
        :enable     => :true,
        :ensure     => :running,
        :hasrestart => :true,
        :hasstatus  => :true,
      })
    end
  end
end
