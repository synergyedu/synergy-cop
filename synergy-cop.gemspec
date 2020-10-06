# frozen_string_literal: true

require_relative 'lib/synergy/cop/version'

Gem::Specification.new do |spec|
  spec.name          = 'synergy-cop'
  spec.version       = Synergy::Cop::VERSION
  spec.authors       = ['Mike Seleznev']
  spec.email         = ['Mseleznev@gmail.com']

  spec.summary       = 'Dependency and configuration for rubocop.'
  spec.description   = 'Dependency and configuration for rubocop for all project written in SynegySoft'
  spec.homepage      = 'https://synergy.ru'
  spec.license       = 'MIT'
  spec.required_ruby_version = Gem::Requirement.new('>= 2.3.0')

  spec.metadata['allowed_push_host'] = spec.homepage

  spec.metadata['homepage_uri'] = spec.homepage
  spec.metadata['source_code_uri'] = 'https://github.com/synergyedu/synergy-cop'
  spec.metadata['changelog_uri'] = "#{ spec.metadata['source_code_uri'] }/CHANGELOG.md"

  # Specify which files should be added to the gem when it is released.
  # The `git ls-files -z` loads the files in the RubyGem that have been added into git.
  spec.files = Dir.chdir(File.expand_path(__dir__)) do
    `git ls-files -z`.split("\x0").reject { |f| f.match(%r{^(test|spec|features)/}) }
  end
  spec.bindir        = 'exe'
  spec.executables   = spec.files.grep(%r{^exe/}) { |f| File.basename(f) }
  spec.require_paths = ['lib']
end
