# coding: utf-8
lib = File.expand_path('../lib', __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require 'copyright_sigil/version'

Gem::Specification.new do |spec|
  spec.name          = "copyright_sigil"
  spec.version       = CopyrightSigil::VERSION
  spec.authors       = ["Ryan Peterson"]
  spec.email         = ["nothere@nonexistant.com"]

  spec.summary       = %q{This gem contains magic and sorcery that the human mind can not understand or comprehend. All you can see is a magical sigil giving a copyright}
  spec.description   = %q{I have already explained everything you need to know. But the voices in my head tell me this must be longer than the first message, and so it shall be that way.}
  spec.homepage      = "https://utahedu.devcamp.com/sie2017/guide/how-to-build-rubygem-scratch"

  spec.files         = `git ls-files -z`.split("\x0").reject do |f|
    f.match(%r{^(test|spec|features)/})
  end
  spec.bindir        = "exe"
  spec.executables   = spec.files.grep(%r{^exe/}) { |f| File.basename(f) }
  spec.require_paths = ["lib"]

  spec.add_development_dependency "bundler", "~> 1.13"
  spec.add_development_dependency "rake", "~> 10.0"
end
