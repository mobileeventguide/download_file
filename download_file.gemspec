# coding: utf-8
lib = File.expand_path('../lib', __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require 'download_file/version'

Gem::Specification.new do |spec|
  spec.name          = "download_file"
  spec.version       = DownloadFile::VERSION
  spec.authors       = ["Marc Schuba"]
  spec.email         = ["marc.schuba@mobileeventguide.de"]

  spec.summary       = %q{Downloads a file from a remote URL to a tempfile on the local system.}
  spec.description   = %q{Downloads a file from a remote URL to a tempfile on the local system.}
  spec.homepage      = "http://www.mobileeventguide.com"
  spec.license       = "MIT"

  spec.files         = `git ls-files -z`.split("\x0").reject { |f| f.match(%r{^(test|spec|features)/}) }
  spec.bindir        = "exe"
  spec.executables   = spec.files.grep(%r{^exe/}) { |f| File.basename(f) }
  spec.require_paths = ["lib"]

  spec.add_development_dependency "bundler", "~> 1.8"
  spec.add_development_dependency "rake", "~> 10.0"
  spec.add_development_dependency "rspec"
  spec.add_development_dependency "webmock"
  spec.add_dependency "pry"
end
