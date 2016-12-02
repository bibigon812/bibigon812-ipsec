RSpec.configure do |config|
  config.mock_with :rspec
end

def with_centos_facts
  let :facts do
    {
      :kernel          => 'Linux',
      :operatingsystem => 'CentOS',
      :operatingsystemrelease => '7.0',
      :osfamily        => 'RedHat',
    }
  end
end
