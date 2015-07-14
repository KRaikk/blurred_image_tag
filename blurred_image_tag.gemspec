# coding: utf-8

require File.expand_path('../lib/blurred_image_tag/version', __FILE__)

Gem::Specification.new do |spec|
  spec.name          = "blurred_image_tag"
  spec.version       = BlurredImageTag::VERSION
  spec.authors       = ["KRaikk"]
  spec.email         = ["alex@alexeguia.net"]
  spec.summary       = "Generates a div with a given image with a blurred background keeping its aspect ratio."
  spec.homepage      = "https://github.com/KRaikk/blurred_image_tag"
  spec.license       = "MIT"

  spec.files         = Dir["{app,lib}/**/*"] + ["LICENSE.txt", "Rakefile", "README.md"]
  spec.test_files    = Dir["test/**/*"]
  spec.require_paths = ["lib"]

  spec.add_dependency "railties", ">= 3.2"
end
