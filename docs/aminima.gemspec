# coding: utf-8

Gem::Specification.new do |spec|
  spec.name          = "aminima"
  spec.version       = "0.0.1"
  spec.authors       = ["Shohei Yamasaki"]
  spec.email         = ["yamasaki0406@gmail.com"]

  spec.summary       = %q{Using AMP, aminimal theme for Jekyll.}
  spec.homepage      = "https://github.com/shoyan/aminima"
  spec.license       = "MIT"

  spec.metadata["plugin_type"] = "theme"

  spec.files         = `git ls-files -z`.split("\x0").select do |f|
    f.match(%r{^(assets|_(includes|layouts|sass)/|(LICENSE|README)((\.(txt|md|markdown)|$)))}i)
  end

  spec.bindir        = "exe"
  spec.executables   = spec.files.grep(%r{^exe/}) { |f| File.basename(f) }

  spec.add_runtime_dependency "jekyll", "~> 3.3"
  spec.add_development_dependency "bundler", "~> 1.12"
end
