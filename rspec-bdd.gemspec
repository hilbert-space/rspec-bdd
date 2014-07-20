Gem::Specification.new do |spec|
  spec.name          = 'rspec-bdd'
  spec.version       = '0.0.2'
  spec.authors       = [ 'Ivan Ukhov' ]
  spec.email         = [ 'ivan.ukhov@gmail.com' ]
  spec.summary       = 'Behavior-driven vocabulary for RSpec'
  spec.description   = 'The library extends the DSL of RSpec with ' \
                       'given, background, feature, scenario, and ' \
                       'shared_scenarios.'
  spec.homepage      = 'https://github.com/IvanUkhov/rspec-bdd'
  spec.license       = 'MIT'

  spec.files         = `git ls-files -z`.split("\x0")
  spec.test_files    = spec.files.grep(%r{^spec/})
  spec.require_paths = [ 'lib' ]

  spec.required_ruby_version = '>= 1.8.7'

  spec.add_dependency 'rspec', '~> 3.0'

  spec.add_development_dependency 'bundler', '~> 1.6'
  spec.add_development_dependency 'rake'
end
