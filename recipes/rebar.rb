
bash 'install_rebar' do
  code <<-EOH
    git clone #{node[:rebar][:git_repo]} #{node[:rebar][:install_dir]}/rebar &&
    cd #{node[:rebar][:install_dir]}/rebar &&
    ./bootstrap &&
    cp rebar #{node[:rebar][:bin_dir]}
  EOH
  not_if { FileTest.exists?("#{node[:rebar][:bin_dir]}/rebar") }
end