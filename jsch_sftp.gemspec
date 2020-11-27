# -*- encoding: utf-8 -*-
lib = File.expand_path('../lib', __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require 'jsch_sftp/version'

Gem::Specification.new do |gem|
  gem.name          = "jsch_sftp"
  gem.version       = JschSFTP::VERSION
  gem.authors       = ['AquisTech']
  gem.email         = ['aquis.tech@gmail.com']
  gem.description   = %q{Jsch wrapper for SFTP in JRuby}
  gem.summary       = %q{Wraps Jsch library for easy implementation of SFTP in JRuby}
  gem.homepage      = 'https://github.com/AquisTech/jsch_sftp'

  gem.files         = `git ls-files`.split($/)
  gem.executables   = gem.files.grep(%r{^bin/}).map{ |f| File.basename(f) }
  gem.test_files    = gem.files.grep(%r{^(test|spec|features)/})
  gem.require_paths = ['lib']

  gem.add_development_dependency 'rspec'
end
