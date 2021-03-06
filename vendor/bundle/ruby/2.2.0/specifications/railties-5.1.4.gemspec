# -*- encoding: utf-8 -*-
# stub: railties 5.1.4 ruby lib

Gem::Specification.new do |s|
  s.name = "railties"
  s.version = "5.1.4"

  s.required_rubygems_version = Gem::Requirement.new(">= 0") if s.respond_to? :required_rubygems_version=
  s.require_paths = ["lib"]
  s.authors = ["David Heinemeier Hansson"]
  s.bindir = "exe"
  s.date = "2017-09-08"
  s.description = "Rails internals: application bootup, plugins, generators, and rake tasks."
  s.email = "david@loudthinking.com"
  s.executables = ["rails"]
  s.files = ["exe/rails"]
  s.homepage = "http://rubyonrails.org"
  s.licenses = ["MIT"]
  s.rdoc_options = ["--exclude", "."]
  s.required_ruby_version = Gem::Requirement.new(">= 2.2.2")
  s.rubygems_version = "2.4.5"
  s.summary = "Tools for creating, working with, and running Rails applications."

  s.installed_by_version = "2.4.5" if s.respond_to? :installed_by_version

  if s.respond_to? :specification_version then
    s.specification_version = 4

    if Gem::Version.new(Gem::VERSION) >= Gem::Version.new('1.2.0') then
      s.add_runtime_dependency(%q<activesupport>, ["= 5.1.4"])
      s.add_runtime_dependency(%q<actionpack>, ["= 5.1.4"])
      s.add_runtime_dependency(%q<rake>, [">= 0.8.7"])
      s.add_runtime_dependency(%q<thor>, ["< 2.0", ">= 0.18.1"])
      s.add_runtime_dependency(%q<method_source>, [">= 0"])
      s.add_development_dependency(%q<actionview>, ["= 5.1.4"])
    else
      s.add_dependency(%q<activesupport>, ["= 5.1.4"])
      s.add_dependency(%q<actionpack>, ["= 5.1.4"])
      s.add_dependency(%q<rake>, [">= 0.8.7"])
      s.add_dependency(%q<thor>, ["< 2.0", ">= 0.18.1"])
      s.add_dependency(%q<method_source>, [">= 0"])
      s.add_dependency(%q<actionview>, ["= 5.1.4"])
    end
  else
    s.add_dependency(%q<activesupport>, ["= 5.1.4"])
    s.add_dependency(%q<actionpack>, ["= 5.1.4"])
    s.add_dependency(%q<rake>, [">= 0.8.7"])
    s.add_dependency(%q<thor>, ["< 2.0", ">= 0.18.1"])
    s.add_dependency(%q<method_source>, [">= 0"])
    s.add_dependency(%q<actionview>, ["= 5.1.4"])
  end
end
