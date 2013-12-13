#
# Cookbook Name:: r2r
# Recipe:: default
#
# Copyright 2013, Eagle Genomics Ltd
#


# download and upack R2R for RNA secondary structure prediction
# We can't make & install at the same time as it's too complicated/hacky
ark 'R2R' do
  url "http://breaker.research.yale.edu/R2R/R2R-1.0.3.tgz"
  action :put
  path node[:r2r][:src_path]
end

# configure & make infernal, then make R2R
bash "make R2R" do
  cwd "#{node[:r2r][:src_path]}/R2R/NotByZasha/infernal-0.7/"
  code <<-EOH
  ./configure
  make
  cd #{node[:r2r][:src_path]}/R2R/src
  make
  EOH
end

# install r2r
execute "install R2R" do
  command "cp /usr/local/src/R2R/src/r2r /usr/local/bin/r2r"
end
