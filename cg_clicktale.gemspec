Gem::Specification.new do |gem|
  gem.authors       = ['Arno Geurts']
  gem.email         = ['arno@cg.nl']
  gem.description   = 'Library for implementing ClickTale'
  gem.summary       = 'Rails 3 implementation of the ClickTale plugin by Michael Mazyar'
  gem.homepage      = 'http://www.cg.nl'

  gem.files         = `git ls-files`.split($\)
  gem.test_files    = gem.files.grep(%r{^(test|spec|features)/})
  gem.name          = 'cg_clicktale'
  gem.require_paths = ['lib']
  gem.version       = "0.0.1"

  gem.add_dependency('activesupport', ['>= 0'])
  gem.add_development_dependency('rake', ['>= 0'])
end
