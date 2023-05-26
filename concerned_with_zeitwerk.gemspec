# frozen_string_literal: true

require_relative "lib/concerned_with_zeitwerk/version"

Gem::Specification.new do |spec|
  spec.name = "concerned_with_zeitwerk"
  spec.version = ConcernedWithZeitwerk::VERSION
  spec.authors = ["Ruban Thilak"]
  spec.email = ["ruban.thilak@freshworks.com"]

  spec.summary = "concerned_with for Zeitwerk mode !"
  spec.description = "concerned_with method can be used for code spliting in model files"
  spec.homepage = "https://github.com/ruban-thilak/concerned_with_zeitwerk"
  spec.license = "MIT"
  spec.required_ruby_version = ">= 2.6.0"

  spec.metadata["allowed_push_host"] = "https://rubygems.pkg.github.com/"

  spec.metadata["homepage_uri"] = spec.homepage
  spec.metadata["source_code_uri"] = "https://github.com/ruban-thilak/concerned_with_zeitwerk"
  spec.metadata["changelog_uri"] = "https://github.com/ruban-thilak/concerned_with_zeitwerk#readme"
  spec.metadata["rubygems_mfa_required"] = "true"

  # Specify which files should be added to the gem when it is released.
  # The `git ls-files -z` loads the files in the RubyGem that have been added into git.
  spec.files = Dir.chdir(__dir__) do
    `git ls-files -z`.split("\x0").reject do |f|
      (File.expand_path(f) == __FILE__) || f.start_with?(*%w[bin/ test/ spec/ features/ .git .circleci appveyor])
    end
  end
  spec.bindir = "exe"
  spec.executables = spec.files.grep(%r{\Aexe/}) { |f| File.basename(f) }
  spec.require_paths = ["lib"]

  # Add new dependency of your gem
  spec.add_dependency "rails", "~> 4.2"
end
