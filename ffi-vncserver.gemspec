# coding: utf-8
lib = File.expand_path('../lib', __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require 'ffi/vncserver/version'

Gem::Specification.new do |spec|
  spec.name          = 'ffi-vncserver'
  spec.version       = Ffi::Vncserver::VERSION
  spec.authors       = ['Tim Garton']
  spec.email         = ['garton.tim@gmail.com']
  spec.description   = %q{Ruby FFI wrapper of libvncserver}
  spec.summary       = %q{Ruby FFI wrapper of libvncserver}
  spec.homepage      = 'https://github.com/ralfthewise/ffi-vncserver'
  spec.license       = 'MIT'

  spec.files         = `git ls-files`.split($/)
  spec.executables   = spec.files.grep(%r{^bin/}) { |f| File.basename(f) }
  spec.test_files    = spec.files.grep(%r{^(test|spec|features)/})
  spec.require_paths = ["lib"]

  spec.add_development_dependency 'bundler', '~> 1.3'
  spec.add_development_dependency 'rake'
end
