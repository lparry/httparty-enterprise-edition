# -*- encoding: utf-8 -*-
$:.push File.expand_path("../lib", __FILE__)
require "httparty/version"

Gem::Specification.new do |s|
  s.name        = "httparty-enterprise-edition"
  s.version     = HTTParty::VERSION
  s.platform    = Gem::Platform::RUBY
  s.licenses    = ['MIT']
  s.authors     = ["John Nunemaker", "Sandro Turriate"]
  s.email       = ["nunemaker@gmail.com"]
  s.homepage    = "http://lparry.github.com/httparty-enterprise-edition"
  s.summary     = %q{Makes consuming restful web services dead easy.}
  s.description = %q{Makes consuming restful web services dead easy.}

  s.required_ruby_version     = '>= 1.9.3'

  s.add_dependency 'json',      "~> 1.8"
  s.add_dependency 'multi_xml', ">= 0.5.2"

  s.files         = `git ls-files`.split("\n")
  s.test_files    = `git ls-files -- {test,spec,features}/*`.split("\n")
  s.executables   = `git ls-files -- bin/*`.split("\n").map{ |f| File.basename(f) }
  s.require_paths = ["lib"]
end
