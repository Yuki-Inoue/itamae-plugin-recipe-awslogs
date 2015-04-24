# Install awslogs package.
package 'awslogs' do
  action :install
end

# Replace configs for awslogs.
if node[:awslogs][:config][:logs]
  logs = node[:awslogs][:config][:logs]

  if logs[:template]
    vars = (logs[:variables] || {})

    template '/etc/awslogs/awslogs.conf' do
      source logs[:template]
      owner 'root'
      group 'root'
      mode '644'
      variables vars
    end
  end
end

if node[:awslogs][:config][:cli]
  cli = node[:awslogs][:config][:cli]

  if cli[:template]
    vars = (cli[:variables] || {})

    template '/etc/awslogs/awscli.conf' do
      source cli[:template]
      owner 'root'
      group 'root'
      mode '600'
      variables vars
    end
  end
end

# Enable awslogs agent.
service 'awslogs' do
  action [:enable, :restart]
end
