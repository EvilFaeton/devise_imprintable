# -*- encoding: utf-8 -*-
require File.expand_path('../lib/devise_imprintable/version', __FILE__)

Gem::Specification.new do |gem|
  gem.authors       = ["Sergey Efremov"]
  gem.email         = ["efremov.sergey@gmail.com"]
  gem.description   = %q{An imprintable strategy for Devise}
  gem.summary       = %q{It adds support to devise for track time and ip for first user sign in.}
  gem.homepage      = "https://github.com/EvilFaeton/devise_imprintable"

  gem.files         = `git ls-files`.split($\)
  gem.executables   = gem.files.grep(%r{^bin/}).map{ |f| File.basename(f) }
  gem.test_files    = gem.files.grep(%r{^(test|spec|features)/})
  gem.name          = "devise_imprintable"
  gem.require_paths = ["lib"]
  gem.version       = DeviseImprintable::VERSION

  gem.required_ruby_version     = '>= 1.8.6'
  gem.required_rubygems_version = '>= 1.3.6'

  gem.add_development_dependency('bundler', '>= 1.1.0')

  {
    'railties' => '~> 3.0',
    'devise'   => '>= 2.1.0'
  }.each do |lib, version|
    gem.add_runtime_dependency(lib, *version)
  end
end
