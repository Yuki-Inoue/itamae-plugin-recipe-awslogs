# coding: utf-8
lib = File.expand_path('../lib', __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require 'itamae/plugin/recipe/awslogs/version'

Gem::Specification.new do |spec|
  spec.name          = 'itamae-plugin-recipe-awslogs'
  spec.version       = Itamae::Plugin::Recipe::Awslogs::VERSION
  spec.authors       = ['Daisuke Hirakiuchi']
  spec.email         = ['devops@leonisand.co']
  spec.licenses      = ['MIT']

  spec.summary       = 'Plugin to support AWS CloudWatch Logs for Itamae'
  spec.description   = 'Plugin to support AWS CloudWatch Logs for Itamae. (Currently, this plugin supports only Amazon Linux.)'
  spec.homepage      = 'https://github.com/leonis/itamae-plugin-recipe-awslogs'

  spec.files         = `git ls-files -z`.split("\x0").reject { |f| f.match(%r{^(test|spec|features)/}) }
  spec.require_paths = ['lib']

  spec.add_development_dependency 'bundler', '~> 1.7'
  spec.add_development_dependency 'rake', '~> 10.0'
  spec.add_runtime_dependency 'itamae', '~> 1.2'
end
