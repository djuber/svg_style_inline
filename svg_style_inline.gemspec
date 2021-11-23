# frozen_string_literal: true

require_relative "lib/svg_style_inline/version"

Gem::Specification.new do |spec|
  spec.name          = "svg_style_inline"
  spec.version       = SvgStyleInline::VERSION
  spec.authors       = ["Dan Uber"]
  spec.email         = ["dan@forem.com"]

  spec.summary       = "Inline style tags onto elements for SVG files."
  spec.description   = "<style> tags within svg files act at the page level,
and interfere with one another if the same tool generated class names are styled.
To avoid conflict with svg's, particularly when supporting user supplied images,
move styles defined in css <style> tags onto the elements."
  spec.homepage      = "https://github.com/djuber/svg_style_inline"
  spec.license       = "MIT"
  spec.required_ruby_version = ">= 3.0.2"

  spec.metadata["allowed_push_host"] = "TODO: Set to your gem server 'https://example.com'"

  spec.metadata["homepage_uri"] = spec.homepage
  spec.metadata["source_code_uri"] = "https://github.com/djuber/svg_style_inline"
  spec.metadata["changelog_uri"] = "https://github.com/djuber/svg_style_inline/blob/main/CHANGELOG.md"

  # Specify which files should be added to the gem when it is released.
  # The `git ls-files -z` loads the files in the RubyGem that have been added into git.
  spec.files = Dir.chdir(File.expand_path(__dir__)) do
    `git ls-files -z`.split("\x0").reject do |f|
      (f == __FILE__) || f.match(%r{\A(?:(?:test|spec|features)/|\.(?:git|travis|circleci)|appveyor)})
    end
  end
  spec.bindir        = "exe"
  spec.executables   = spec.files.grep(%r{\Aexe/}) { |f| File.basename(f) }
  spec.require_paths = ["lib"]

  # Uncomment to register a new dependency of your gem
  # spec.add_dependency "example-gem", "~> 1.0"

  # For more information and examples about making a new gem, checkout our
  # guide at: https://bundler.io/guides/creating_gem.html
end
