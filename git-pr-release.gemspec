# coding: utf-8
lib = File.expand_path('../lib', __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require 'git-pr-release/version'

Gem::Specification.new do |spec|
  spec.name          = "git-pr-release"
  spec.version       = GitPrRelease::VERSION
  spec.authors       = ["Yannick Chiasson"]
  spec.email         = ["y.chiasson@buysell-technologies.com"]

  spec.summary       = "Takahashi's fork from motemen/git-pr-release"
  spec.description   = "n/a"
  spec.homepage      = "https://github.com/buysell-technologies"

  # Prevent pushing this gem to RubyGems.org. To allow pushes either set the 'allowed_push_host'
  # to allow pushing to a single host or delete this section to allow pushing to any host.
  if spec.respond_to?(:metadata)
    spec.metadata['allowed_push_host'] = "https://github.com/buysell-technologies/git-pr-release"
  else
    raise "RubyGems 2.0 or newer is required to protect against " \
      "public gem pushes."
  end

  spec.files         = `git ls-files -z`.split("\x0").reject do |f|
    f.match(%r{^(test|spec|features)/})
  end
  spec.bindir        = "exe"
  spec.executables   = ['git-pr-release']
  spec.require_paths = ["lib"]

  spec.add_dependency 'octokit'
  spec.add_dependency 'colorize'
  spec.add_dependency 'diff-lcs'

  spec.add_development_dependency "bundler", "~> 1.14"
  spec.add_development_dependency "rake", "~> 10.0"
end


