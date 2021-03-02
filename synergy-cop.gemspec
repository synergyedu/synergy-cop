# frozen_string_literal: true

require_relative 'lib/synergy/cop/version'

Gem::Specification.new do |spec|
  spec.name          = 'synergy-cop'
  spec.version       = Synergy::Cop::VERSION
  spec.authors       = ['Ruslan Valeev']
  spec.email         = ['ruvaleev@gmail.com']

  spec.summary       = 'Dependency and configuration for rubocop.'
  spec.description   = 'Dependency and configuration for rubocop for all project written in SynegySoft'
  spec.homepage      = 'https://github.com/synergyedu/synergy-cop'
  spec.license       = 'MIT'
  spec.required_ruby_version = Gem::Requirement.new('>= 2.3.0')

  spec.metadata['homepage_uri'] = spec.homepage
  spec.metadata['changelog_uri'] = "#{ spec.homepage }/blob/master/CHANGELOG.md"
  spec.metadata['source_code_uri'] = spec.homepage

  # Specify which files should be added to the gem when it is released.
  # The `git ls-files -z` loads the files in the RubyGem that have been added into git.
  spec.files = Dir.chdir(File.expand_path(__dir__)) do
    `git ls-files -z`.split("\x0").reject { |f| f.match(/^(test|spec|features)|(.gem$)/) }
  end
  spec.bindir        = 'exe'
  spec.executables   = spec.files.grep(%r{^exe/}) { |f| File.basename(f) }
  spec.require_paths = ['lib']

  spec.add_dependency 'rake', '~> 13.0'
  spec.add_dependency 'rspec', '~> 3.0'
  spec.add_dependency 'rubocop', '>= 0.8', '< 2.0'
  spec.add_dependency 'rubocop-performance', '>= 1.8.1', '< 1.11.0'
  spec.add_dependency 'rubocop-rspec', '>= 1.43.2', '< 1.45.0'
end
