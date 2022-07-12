Gem::Specification.new do |spec|
  spec.name          = 'iparith'
  spec.version       = '0.0.3'
  spec.authors       = ['Forgot-His-Name']
  spec.email         = ['103605633+Forgot-His-Name@users.noreply.github.com']

  spec.summary       = 'Yet Another IP Calculator'
  spec.description   = 'IP manipulations, based on ipaddr gem'
  spec.homepage      = 'https://github.com/Forgot-His-Name/iparith'
  spec.license       = "BSD-3-Clause"

  spec.files         = ['iparith.gemspec', 'lib/iparith.rb', 'lib/iparith/parse.rb', 'lib/iparith/check.rb']
  spec.require_paths = ['lib']

  spec.add_runtime_dependency 'ipaddr', '~> 1.2'
end
