# frozen_string_literal: true

require_relative 'lib/mygem/version'

Gem::Specification.new do |spec|
  spec.name          = 'mygem'
  spec.version       = Mygem::VERSION
  spec.authors       = %w[ogabriel linqueta]
  spec.email         = ['lincolnrodrs@gmail.com']

  spec.summary       = 'Summary'
  spec.description   = 'Description'
  spec.homepage      = 'https://github.com/activemessage/gem-template'
  spec.license       = 'MIT'
  spec.required_ruby_version = Gem::Requirement.new('>= 2.4.0')

  spec.files = Dir['{lib}/**/*', 'CHANGELOG.md', 'README.md']

  spec.add_runtime_dependency 'aws-sdk-core', '~> 3.0', '>= 3.0'

  spec.add_development_dependency 'bundler', '~> 2.0'
  spec.add_development_dependency 'factory_bot', '~> 5.1', '>= 5.1.1'
  spec.add_development_dependency 'pry-byebug', '~> 3.9', '>= 3.9.0'
  spec.add_development_dependency 'rake', '~> 13.0'
  spec.add_development_dependency 'rspec', '~> 3.0'
  spec.add_development_dependency 'rubocop', '~> 0.74', '>= 0.74.0'
  spec.add_development_dependency 'rubocop-performance', '~> 1.4', '>= 1.4.1'
  spec.add_development_dependency 'simplecov', '~> 0.17.1'
  spec.add_development_dependency 'simplecov-console', '~> 0.5.0', '>= 0.5.0'
  spec.add_development_dependency 'vcr', '~> 5.0', '>= 5.0.0'
  spec.add_development_dependency 'webmock', '~> 3.7', '>= 3.7.6'
end
