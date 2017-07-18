# coding: utf-8
lib = File.expand_path('../lib', __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require 'git_pr_release/version'

Gem::Specification.new do |spec|
  spec.name          = "git_pr_release"
  spec.version       = GitPrRelease::VERSION
  spec.authors       = ["Yannick Chiasson"]
  spec.email         = ["y.chiasson@buysell-technologies.com"]

  spec.summary       = %q{TODO: Write a short summary, because Rubygems requires one.}
  spec.description   = %q{TODO: Write a longer description or delete this line.}
  spec.homepage      = "TODO: Put your gem's website or public repo URL here."

  # Prevent pushing this gem to RubyGems.org. To allow pushes either set the 'allowed_push_host'
  # to allow pushing to a single host or delete this section to allow pushing to any host.
  if spec.respond_to?(:metadata)
    spec.metadata['allowed_push_host'] = "TODO: Set to 'http://mygemserver.com'"
  else
    raise "RubyGems 2.0 or newer is required to protect against " \
      "public gem pushes."
  end

  spec.files         = `git ls-files -z`.split("\x0").reject do |f|
    f.match(%r{^(test|spec|features)/})
  end
  spec.bindir        = "exe"
  spec.executables   = spec.files.grep(%r{^exe/}) { |f| File.basename(f) }
  spec.require_paths = ["lib"]

  spec.add_dependency 'engtagger'
  spec.add_dependency 'uri'
  spec.add_dependency 'erb'
  spec.add_dependency 'open3'
  spec.add_dependency 'tmpdir'
  spec.add_dependency 'json'
  spec.add_dependency 'optparse'

  spec.add_dependency 'octokit'
  spec.add_dependency 'colorize'
  spec.add_dependency 'diff/lcs'

  spec.add_development_dependency "bundler", "~> 1.14"
  spec.add_development_dependency "rake", "~> 10.0"
end


