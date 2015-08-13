#
# Cookbook Name:: R2R
# Recipe:: default
#
# Copyright 2013, Eagle Genomics Ltd
#

# where to unack R2R to. 
default[:R2R][:src_path] = '/usr/local/src'

# location for the binary once it's made
default[:R2R][:binary_path] = '/usr/local/bin/r2r'
