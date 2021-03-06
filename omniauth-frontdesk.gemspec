# -*- encoding: utf-8 -*-
require File.expand_path('../lib/omniauth-frontdesk/version', __FILE__)

Gem::Specification.new do |gem|
  gem.authors       = ["Steve Brewer", "Jason Cypret"]
  gem.email         = ["dev@boxboard.io"]
  gem.description   = %q{OmniAuth strategy for Front Desk.}
  gem.summary       = %q{OmniAuth strategy for Front Desk.}
  gem.homepage      = "https://github.com/BoxBoard/omniauth-frontdesk"

  gem.executables   = `git ls-files -- bin/*`.split("\n").map{ |f| File.basename(f) }
  gem.files         = `git ls-files`.split("\n")
  gem.test_files    = `git ls-files -- {test,spec,features}/*`.split("\n")
  gem.name          = "omniauth-frontdesk"
  gem.require_paths = ["lib"]
  gem.version       = OmniAuth::FrontDesk::VERSION

  gem.add_dependency 'omniauth', '~> 1.0'
  gem.add_dependency 'omniauth-oauth2', '~> 1.0'
  gem.add_development_dependency 'rspec', '~> 2.7'
  gem.add_development_dependency 'rack-test'
  gem.add_development_dependency 'simplecov'
  gem.add_development_dependency 'webmock'
end
