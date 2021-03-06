#
# Cookbook Name'' R2R
# Recipe'' default
#
# Copyright 2016, Eagle Genomics Ltd
#

default['R2R']['version'] = '1.0.5'

# https://sourceforge.net/projects/weinberg-r2r/files/

# default['R2R']['url'] = 'http://breaker.research.yale.edu/R2R/R2R-' + default['R2R']['version'] + '.tgz'

default['R2R']['url'] = 'https://sourceforge.net/projects/weinberg-r2r/files/R2R-' + default['R2R']['version'] + '.tgz'

# where to unpack R2R to
default['R2R']['src_path'] = '/usr/local/src'

# location for the binary once it's made
default['R2R']['binary_path'] = '/usr/local/bin/r2r'
