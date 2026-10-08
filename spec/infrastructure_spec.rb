require 'serverspec'

set :backend, :exec

describe command('docker --version') do
  its(:exit_status) { should eq 0 }
end

describe command('docker info') do
  its(:exit_status) { should eq 0 }
end

describe port(8080) do
  it { should be_listening }
end
