
lib = File.expand_path("../lib", __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require "tailwindui_rails/version"

Gem::Specification.new do |spec|
  spec.name          = "tailwindui_rails"
  spec.version       = TailwinduiRails::VERSION
  spec.authors       = ["Jeff Scholen"]
  spec.email         = ["jmscholen@gmail.com"]

  spec.summary       = %q{TailwindUI and Rails 6 gem.}
  spec.description   = %q{This gem allows you to run a simple command to install Tailwindcss and the necessary modifications in order to use TailwindUI on a Rails 6 app. This repo contains no TailwindUI components. You must purchase a license from tailwindui.com. }
  spec.homepage      = "https://github.com/jmscholen/tailwindui_rails"
  spec.license       = "MIT"

  # Prevent pushing this gem to RubyGems.org. To allow pushes either set the 'allowed_push_host'
  # to allow pushing to a single host or delete this section to allow pushing to any host.
  # The `git ls-files -z` loads the files in the RubyGem that have been added into git.

  spec.files         = `git ls-files`.split("\n")
  spec.require_paths = ["lib"]

  spec.add_development_dependency "bundler", "~> 1.17"
  spec.add_development_dependency "rake", "~> 13.0"
  spec.add_development_dependency "rspec", "~> 3.0"

  spec.add_dependency("railties", ">= 6.0")
end
