# coding: utf-8
lib = File.expand_path('../lib', __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require 'bitcoin-jruby/version'

Gem::Specification.new do |spec|
  spec.name          = "bitcoin-jruby"
  spec.version       = BitcoinJRuby::VERSION
  spec.authors       = ["Marcin Łabanowski"]
  spec.email         = ["marcin@6irc.net"]
  spec.summary       = %q{Bitcoin-J + JRuby. A full Bitcoin solution using Bitcoin-J under the hood}
  spec.description   = %q{}
  spec.homepage      = "https://github.com/czaks/bitcoin-jruby"
  spec.license       = "MIT"

  spec.files         = `git ls-files -z`.split("\x0")
  spec.executables   = spec.files.grep(%r{^bin/}) { |f| File.basename(f) }
  spec.test_files    = spec.files.grep(%r{^(test|spec|features)/})
  spec.require_paths = ["lib"]

  spec.platform      = "java"

  spec.add_development_dependency "bundler", "~> 1.5"
  spec.add_development_dependency "rake"
end
