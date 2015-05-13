# Enable awslogs service.
service 'awslogs' do
  action [:enable, :restart]
end
