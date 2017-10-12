# -*- encoding: utf-8 -*-
# stub: indico 0.10.5 ruby lib

Gem::Specification.new do |s|
  s.name = "indico"
  s.version = "0.10.5"

  s.required_rubygems_version = Gem::Requirement.new(">= 0") if s.respond_to? :required_rubygems_version=
  s.require_paths = ["lib"]
  s.authors = ["Slater Victoroff", "Amit Ambardekar", "Madison May", "Annie Carlson"]
  s.date = "2017-06-13"
  s.description = "A simple Ruby Wrapper for the indico set of APIs."
  s.email = ["slater@indico.io", "amitamb@gmail.com", "madison@indico.io", "annie@indico.io"]
  s.homepage = "https://github.com/IndicoDataSolutions/IndicoIo-ruby"
  s.licenses = ["MIT"]
  s.rubygems_version = "2.5.1"
  s.summary = "A simple Ruby Wrapper for the indico set of APIs."

  s.installed_by_version = "2.5.1" if s.respond_to? :installed_by_version

  if s.respond_to? :specification_version then
    s.specification_version = 3

    if Gem::Version.new(Gem::VERSION) >= Gem::Version.new('1.2.0') then
      s.add_runtime_dependency(%q<inifile>, ["~> 3.0.0"])
      s.add_runtime_dependency(%q<oily_png>, ["~> 1.2.0"])
      s.add_development_dependency(%q<bundler>, ["~> 1.6"])
      s.add_development_dependency(%q<rake>, [">= 0"])
      s.add_development_dependency(%q<rspec>, [">= 0"])
    else
      s.add_dependency(%q<inifile>, ["~> 3.0.0"])
      s.add_dependency(%q<oily_png>, ["~> 1.2.0"])
      s.add_dependency(%q<bundler>, ["~> 1.6"])
      s.add_dependency(%q<rake>, [">= 0"])
      s.add_dependency(%q<rspec>, [">= 0"])
    end
  else
    s.add_dependency(%q<inifile>, ["~> 3.0.0"])
    s.add_dependency(%q<oily_png>, ["~> 1.2.0"])
    s.add_dependency(%q<bundler>, ["~> 1.6"])
    s.add_dependency(%q<rake>, [">= 0"])
    s.add_dependency(%q<rspec>, [">= 0"])
  end
end
