# -*- encoding: utf-8 -*-
$:.push File.expand_path("../lib", __FILE__)
require "httparty/version"

Gem::Specification.new do |s|
  s.name        = "httparty-enterprise-edition"
  s.version     = "#{HTTParty::VERSION}.1"
  s.platform    = Gem::Platform::RUBY
  s.licenses    = ['MIT']
  s.authors     = ["John Nunemaker", "Sandro Turriate", "Lucas Parry"]
  s.email       = ["nunemaker@gmail.com"]
  s.homepage    = ""
  s.summary     = %q{Makes consuming restful web services dead easy.}
  s.description = %q{This is actually just httparty, with that stupid post-install message removed. You should probably just use the real one and maybe complain at https://github.com/jnunemaker/httparty/pull/139}

  s.required_ruby_version     = '>= 1.9.3'

  s.add_dependency 'json',      "~> 1.8"
  s.add_dependency 'multi_xml', ">= 0.5.2"

  s.files         = `git ls-files`.split("\n")
  s.test_files    = `git ls-files -- {test,spec,features}/*`.split("\n")
  s.executables   = `git ls-files -- bin/*`.split("\n").map{ |f| File.basename(f) }
  s.require_paths = ["lib"]
end
