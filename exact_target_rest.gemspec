# coding: utf-8
lib = File.expand_path('../lib', __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require 'exact_target_rest/version'

Gem::Specification.new do |spec|
  spec.name          = 'exact_target_rest'
  spec.version       = ExactTargetRest::VERSION
  spec.authors       = ['Ronie Uliana']
  spec.email         = ['ronie.uliana@vagas.com.br']
  spec.summary       = %q{Simple wrapper around ExactTarget REST API}
  spec.description   = %q{Simple wrapper around ExactTarget REST API. It deals with authorization and with coding conventions (CamelCase vs snake_case)}
  spec.homepage      = ''
  spec.license       = 'MIT'

  spec.files         = `git ls-files -z`.split("\x0")
  spec.executables   = spec.files.grep(%r{^bin/}) { |f| File.basename(f) }
  spec.test_files    = spec.files.grep(%r{^(test|spec|features)/})
  spec.require_paths = ['lib']

  spec.add_dependency 'addressable', '~> 2.8'
  spec.add_dependency 'faraday', '~> 1.8'
  spec.add_dependency 'faraday_middleware', '~> 1.2'

  spec.add_development_dependency 'bundler', '~> 2.3.4'
  spec.add_development_dependency 'rake', '~> 10.0'
  spec.add_development_dependency 'guard-rspec', '~> 4.5'
  spec.add_development_dependency 'pry', '~> 0.13'
  spec.add_development_dependency 'pry-byebug', '~> 3.9.0'
  spec.add_development_dependency 'webmock', '~> 3.10.0'
end
