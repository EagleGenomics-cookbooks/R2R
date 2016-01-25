#
# Cookbook Name:: R2R
# Recipe:: default
#
# Copyright 2016, Eagle Genomics Ltd
#

# download and upack R2R for RNA secondary structure prediction
# We can't make & install at the same time as it's too complicated/hacky
ark 'R2R' do
  url 'http://breaker.research.yale.edu/R2R/R2R-1.0.3.tgz'
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

# install R2R
execute 'install R2R' do
  command 'cp /usr/local/src/R2R/src/R2R /usr/local/bin/r2r'
end
