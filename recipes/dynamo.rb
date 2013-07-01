
execute 'clone_dynamo' do
  cwd "#{node[:dynamo][:install_dir]}"
  command "git clone #{node[:dynamo][:git_repo]} dynamo"
  not_if { FileTest.exists?("#{node[:dynamo][:install_dir]}/dynamo") }
end

execute 'update_dynamo' do
  command "mix deps.get"
  cwd "#{node[:dynamo][:install_dir]}/dynamo"
end
