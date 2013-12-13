#
# Cookbook Name:: r2r
# Recipe:: default
#
# Copyright 2013, Eagle Genomics Ltd
#

# where to unack r2r to. 
default[:r2r][:src_path] = '/usr/local/src'

# location for the binary once it's made
default[:r2r][:binary_path] = '/usr/local/bin/r2r'
