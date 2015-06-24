require 'serverspec'

set :backend, :exec

describe command('curl localhost/lib/jquery/jquery.js') do
  its(:stdout) { should match /jquery/ }
end
