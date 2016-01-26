require 'serverspec'
require_relative './spec_helper'

# Required by serverspec
set :backend, :exec

describe command('which r2r') do
  its(:exit_status) { should eq 0 }
end

describe file("#{ENV['R2R_SRC']}/R2R/src") do
  it { should be_directory }
end

describe file(ENV['R2R_BINARY']) do
  it { should be_file }
  it { should be_executable }
end

describe command(ENV['R2R_BINARY']) do
  # there is no version information returned by r2r
  its(:stdout) { should contain('Command line is wrong') }
end
