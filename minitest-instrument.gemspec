# -*- encoding: utf-8 -*-
$:.push File.expand_path("../lib", __FILE__)
require "minitest-instrument/version"

Gem::Specification.new do |s|
  s.name        = "minitest-instrument"
  s.version     = Minitest::Instrument::VERSION
  s.platform    = Gem::Platform::RUBY
  s.authors     = ["Robert Pankowecki"]
  s.email       = ["robert.pankowecki@gmail.com"]
  s.homepage    = "http://rubygems.org/gems/minitest-instrument"
  s.summary     = %q{Instrument ActiveSupport::Notifications when test method is executed}
  s.description = %q{Instrument ActiveSupport::Notifications when test method is executed}

  s.rubyforge_project = "minitest-instrument"

  s.required_rubygems_version = ">= 1.3.6"
  s.add_dependency "activesupport", "~> 3.0"
  s.add_development_dependency "bundler", "~> 1.0.0"

  s.files         = `git ls-files`.split("\n")
  s.test_files    = `git ls-files -- {test,spec,features}/*`.split("\n")
  s.executables   = `git ls-files -- bin/*`.split("\n").map{ |f| File.basename(f) }
  s.require_paths = ["lib"]
end
