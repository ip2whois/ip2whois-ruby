# coding: utf-8

lib = File.expand_path("../lib", __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require "ip2whois_ruby/version"

Gem::Specification.new do |s|
  s.name          = "ip2whois_ruby"
  s.version       = Ip2whoisRuby::VERSION
  s.authors       = ["ip2whois"]
  s.email         = ["support@ip2whois.com"]
  s.summary       = "IP2WHOIS Ruby SDK"
  s.description   = "A Ruby SDK enables user to easily implement the checking of WHOIS information for a particular domain into their solution using the API from www.ip2whois.com"
  s.homepage      = "https://github.com/ip2whois/ip2whois-ruby"
  s.licenses      = ["MIT"]
  s.require_paths = ["lib"]
  s.extra_rdoc_files = [
    "LICENSE.txt",
    "README.md"
  ]
  s.files = [
    "Gemfile",
    "LICENSE.txt",
    "README.md",
    "Rakefile",
    "ip2whois_ruby.gemspec",
    "lib/ip2whois_ruby.rb",
    "lib/ip2whois_ruby/api.rb",
    "lib/ip2whois_ruby/configuration.rb",
    "lib/ip2whois_ruby/version.rb",
    "spec/spec_helper.rb",
    "spec/ip2whois_ruby_spec.rb"
  ]

  if s.respond_to?(:metadata=)
    s.metadata = {
      "bug_tracker_uri" => "https://github.com/ip2whois/ip2whois-ruby/issues",
      "documentation_uri" => "https://www.rubydoc.info/gems/ip2whois_ruby",
      "homepage_uri" => "https://www.ip2whois.com",
      "source_code_uri" => "https://github.com/ip2whois/ip2whois-ruby",
    }
  end

  if Gem::Version.new(Gem::VERSION) >= Gem::Version.new('1.2.0') then
    s.add_runtime_dependency(%q<simpleidn>, [">= 0.2.1"])
  else
    s.add_dependency(%q<simpleidn>, [">= 0.2.1"])
  end
end