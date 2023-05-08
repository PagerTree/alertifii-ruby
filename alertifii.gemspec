require File.expand_path('lib/alertifii/version', __dir__)
Gem::Specification.new do |spec|
  spec.name = 'alertifii'
  spec.authors       = ['Austin Miller']
  spec.email         = ['austinrmiller1991@gmail.com']
  spec.date          = Time.now.strftime('%Y-%m-%d')
  spec.version       = Alertifii::VERSION
  spec.platform      = Gem::Platform::RUBY
  spec.license       = 'MIT'

  # descriptions
  spec.description   = 'Api (and CLI) to interface with alertifii.com'
  spec.summary       = 'This spec provides both an API and CLI interface to alertifii.com.'
  spec.homepage      = 'https://github.com/armiiller/alertifii-ruby'

  # files
  spec.files         = `git ls-files`.split($OUTPUT_RECORD_SEPARATOR)
  spec.executables   = spec.files.grep(%r{^bin/}).map { |f| File.basename(f) }
  spec.test_files    = spec.files.grep(%r{^(test|spec|features)/})
  spec.require_paths = ['lib']

  # dependencies.
  spec.add_runtime_dependency 'excon'
  spec.add_runtime_dependency 'gli'
  spec.add_runtime_dependency 'oj'
end
