# Configure awslogs
require 'pathname'
require Pathname.new(__FILE__).join('../../awslogs.rb')

node.reverse_merge!(
  awslogs: {
    config: {
      cli: {
        region: 'us-east-1',
        aws_access_key_id: nil,
        aws_secret_access_key: nil
      }
    }
  }
)

template '/etc/awslogs/awscli.conf' do
  source Itamae::Plugin::Recipe::Awslogs.template_path('awscli.conf.erb')
  owner 'root'
  group 'root'
  mode '600'
  variables node[:awslogs][:config][:cli]
end
