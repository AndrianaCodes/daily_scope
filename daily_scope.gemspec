require_relative 'lib/daily_scope/version'

Gem::Specification.new do |spec|
  spec.name          = "daily_scope"
  spec.version       = DailyScope::VERSION
  spec.authors       = ["AndrianaCodes"]
  spec.email         = ["andriana.amg@gmail.com"]

  spec.summary       = %q{todo: Write a short summary, because RubyGems requires one.}
  spec.description   = %q{todo: Write a longer description or delete this line.}
  spec.homepage      = "https://github.com/AndrianaCodes/daily_scope"
  spec.license       = "MIT"
  spec.required_ruby_version = Gem::Requirement.new(">= 2.3.0")


  # Specify which files should be added to the gem when it is released.
  # The `git ls-files -z` loads the files in the RubyGem that have been added into git.
  spec.files         = Dir.chdir(File.expand_path('..', __FILE__)) do
    `git ls-files -z`.split("\x0").reject { |f| f.match(%r{^(test|spec|features)/}) }
  end
  spec.bindir        = "exe"
  spec.executables   = spec.files.grep(%r{^exe/}) { |f| File.basename(f) }
  spec.require_paths = ["lib"]

  spec.add_dependency 'nokogiri'
end
