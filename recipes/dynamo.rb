
git "#{node[:dynamo][:install_dir]}/dynamo" do
  repository "#{node[:dynamo][:git_repo]}"
  reference "master"
  user 'root'
  group 'root'
  depth 1
end
