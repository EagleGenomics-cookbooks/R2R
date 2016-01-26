#
# Cookbook Name:: R2R
# Recipe:: default
#
# Copyright 2016, Eagle Genomics Ltd
#

include_recipe 'build-essential'

package ['tar'] do
  action :install
end

# here for use by serverspec
magic_shell_environment 'R2R_SRC' do
  value node['R2R']['src_path']
end

# r2r does not provide version information via the cmd line
# magic_shell_environment 'R2R_VERSION' do
#   value node['R2R']['version']
# end

magic_shell_environment 'R2R_BINARY' do
  value node['R2R']['binary_path']
end

# download and upack R2R for RNA secondary structure prediction
ark 'R2R' do
  url node['R2R']['url']
  action :put
  path node['R2R']['src_path']
end

# configure & make infernal, then make R2R
bash 'make R2R' do
  cwd "#{node['R2R']['src_path']}/R2R/NotByZasha/infernal-0.7/"
  code <<-EOH
  ./configure
  make
  cd #{node['R2R']['src_path']}/R2R/src
  make
  EOH
end

# add symbolic link
link node['R2R']['binary_path'] do
  to "#{node['R2R']['src_path']}/R2R/src/r2r"
end
