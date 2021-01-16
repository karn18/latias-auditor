require_relative "lib/latias/auditor/version"

Gem::Specification.new do |spec|
  spec.name        = "latias-auditor"
  spec.version     = Latias::Auditor::VERSION
  spec.authors     = ["Karn Tirasoontorn"]
  spec.email       = ["karn@hey.com"]
  spec.homepage    = "https://github.com/karn18/latias-auditor"
  spec.summary     = "Auditor allows you to log any audit events to database"
  # spec.description = "TODO: Description of Latias::Auditor."
  spec.license     = "MIT"

  # Prevent pushing this gem to RubyGems.org. To allow pushes either set the 'allowed_push_host'
  # to allow pushing to a single host or delete this section to allow pushing to any host.
  # spec.metadata["allowed_push_host"] = "TODO: Set to 'http://mygemserver.com'"

  # spec.metadata["homepage_uri"] = spec.homepage
  spec.metadata["source_code_uri"] = "https://github.com/karn18/latias-auditor"
  # spec.metadata["changelog_uri"] = "TODO: Put your gem's CHANGELOG.md URL here."

  spec.files = Dir["{app,config,db,lib}/**/*", "MIT-LICENSE", "Rakefile", "README.md"]

  spec.add_dependency "rails", "~> 6.1.1"
end
