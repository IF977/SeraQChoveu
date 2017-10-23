# -*- encoding: utf-8 -*-
# stub: cucumber-expressions 4.0.4 ruby lib

Gem::Specification.new do |s|
  s.name = "cucumber-expressions"
  s.version = "4.0.4"

  s.required_rubygems_version = Gem::Requirement.new(">= 0") if s.respond_to? :required_rubygems_version=
  s.require_paths = ["lib"]
  s.authors = ["Aslak Helles\u{f8}y"]
  s.date = "2017-10-05"
  s.description = "Cucumber Expressions - a simpler alternative to Regular Expressions"
  s.email = "cukes@googlegroups.com"
  s.homepage = "https://github.com/cucumber/cucumber-expressions-ruby#readme"
  s.licenses = ["MIT"]
  s.rdoc_options = ["--charset=UTF-8"]
  s.required_ruby_version = Gem::Requirement.new(">= 1.9.3")
  s.rubygems_version = "2.5.1"
  s.summary = "cucumber-expressions-4.0.4"

  s.installed_by_version = "2.5.1" if s.respond_to? :installed_by_version

  if s.respond_to? :specification_version then
    s.specification_version = 4

    if Gem::Version.new(Gem::VERSION) >= Gem::Version.new('1.2.0') then
      s.add_development_dependency(%q<bundler>, [">= 0"])
      s.add_development_dependency(%q<rake>, ["~> 10.5"])
      s.add_development_dependency(%q<rspec>, ["~> 3.5"])
      s.add_development_dependency(%q<coveralls>, [">= 0"])
    else
      s.add_dependency(%q<bundler>, [">= 0"])
      s.add_dependency(%q<rake>, ["~> 10.5"])
      s.add_dependency(%q<rspec>, ["~> 3.5"])
      s.add_dependency(%q<coveralls>, [">= 0"])
    end
  else
    s.add_dependency(%q<bundler>, [">= 0"])
    s.add_dependency(%q<rake>, ["~> 10.5"])
    s.add_dependency(%q<rspec>, ["~> 3.5"])
    s.add_dependency(%q<coveralls>, [">= 0"])
  end
end
