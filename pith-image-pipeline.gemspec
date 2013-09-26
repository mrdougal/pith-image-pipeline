# coding: utf-8
lib = File.expand_path('../lib', __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require 'pith/image/pipeline/version'

Gem::Specification.new do |spec|
  spec.name          = "pith-image-pipeline"
  spec.version       = Pith::Image::Pipeline::VERSION
  spec.authors       = ["Dougal MacPherson"]
  spec.email         = ["dougal.macpherson@me.com"]
  spec.description   = "Pipeline to process images in pith"
  spec.summary       = "Pipeline to process images in pith (a static site generator)"
  spec.homepage      = "https://github.com/mrdougal/pith-image-pipeline"
  spec.license       = "MIT"

  spec.files         = `git ls-files`.split($/)
  spec.executables   = spec.files.grep(%r{^bin/}) { |f| File.basename(f) }
  spec.test_files    = spec.files.grep(%r{^(test|spec|features)/})
  spec.require_paths = ["lib"]

  spec.add_development_dependency "bundler", "~> 1.3"
  spec.add_development_dependency "rake"
end
