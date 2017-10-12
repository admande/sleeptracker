# -*- encoding: utf-8 -*-
# stub: pg_search 2.1.1 ruby lib

Gem::Specification.new do |s|
  s.name = "pg_search"
  s.version = "2.1.1"

  s.required_rubygems_version = Gem::Requirement.new(">= 0") if s.respond_to? :required_rubygems_version=
  s.require_paths = ["lib"]
  s.authors = ["Grant Hutchins", "Case Commons, LLC"]
  s.date = "2017-09-20"
  s.description = "PgSearch builds Active Record named scopes that take advantage of PostgreSQL's full text search"
  s.email = ["gems@nertzy.com", "casecommons-dev@googlegroups.com"]
  s.homepage = "https://github.com/Casecommons/pg_search"
  s.licenses = ["MIT"]
  s.required_ruby_version = Gem::Requirement.new(">= 2.1")
  s.rubygems_version = "2.5.1"
  s.summary = "PgSearch builds Active Record named scopes that take advantage of PostgreSQL's full text search"

  s.installed_by_version = "2.5.1" if s.respond_to? :installed_by_version

  if s.respond_to? :specification_version then
    s.specification_version = 4

    if Gem::Version.new(Gem::VERSION) >= Gem::Version.new('1.2.0') then
      s.add_runtime_dependency(%q<activerecord>, [">= 4.2"])
      s.add_runtime_dependency(%q<activesupport>, [">= 4.2"])
      s.add_runtime_dependency(%q<arel>, [">= 6"])
      s.add_development_dependency(%q<rake>, [">= 0"])
      s.add_development_dependency(%q<pry>, [">= 0"])
      s.add_development_dependency(%q<rspec>, [">= 3.3"])
      s.add_development_dependency(%q<with_model>, [">= 1.2"])
      s.add_development_dependency(%q<rubocop>, [">= 0"])
      s.add_development_dependency(%q<codeclimate-test-reporter>, [">= 0"])
      s.add_development_dependency(%q<simplecov>, [">= 0"])
    else
      s.add_dependency(%q<activerecord>, [">= 4.2"])
      s.add_dependency(%q<activesupport>, [">= 4.2"])
      s.add_dependency(%q<arel>, [">= 6"])
      s.add_dependency(%q<rake>, [">= 0"])
      s.add_dependency(%q<pry>, [">= 0"])
      s.add_dependency(%q<rspec>, [">= 3.3"])
      s.add_dependency(%q<with_model>, [">= 1.2"])
      s.add_dependency(%q<rubocop>, [">= 0"])
      s.add_dependency(%q<codeclimate-test-reporter>, [">= 0"])
      s.add_dependency(%q<simplecov>, [">= 0"])
    end
  else
    s.add_dependency(%q<activerecord>, [">= 4.2"])
    s.add_dependency(%q<activesupport>, [">= 4.2"])
    s.add_dependency(%q<arel>, [">= 6"])
    s.add_dependency(%q<rake>, [">= 0"])
    s.add_dependency(%q<pry>, [">= 0"])
    s.add_dependency(%q<rspec>, [">= 3.3"])
    s.add_dependency(%q<with_model>, [">= 1.2"])
    s.add_dependency(%q<rubocop>, [">= 0"])
    s.add_dependency(%q<codeclimate-test-reporter>, [">= 0"])
    s.add_dependency(%q<simplecov>, [">= 0"])
  end
end
