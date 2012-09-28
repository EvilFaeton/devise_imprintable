# -*- encoding: utf-8 -*-
require File.expand_path('../lib/devise_imprintable/version', __FILE__)

Gem::Specification.new do |gem|
  gem.authors       = ["Sergey Efremov"]
  gem.email         = ["efremov.sergey@gmail.com"]
  gem.description   = %q{Gem for tracking first sign event in for user}
  gem.summary       = %q{Gem for tracking first sign event in for user}
  gem.homepage      = "https://github.com/EvilFaeton/devise_imprintable"

  gem.files         = `git ls-files`.split($\)
  gem.executables   = gem.files.grep(%r{^bin/}).map{ |f| File.basename(f) }
  gem.test_files    = gem.files.grep(%r{^(test|spec|features)/})
  gem.name          = "devise_imprintable"
  gem.require_paths = ["lib"]
  gem.version       = DeviseImprintable::VERSION
end
