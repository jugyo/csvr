# -*- encoding: utf-8 -*-

Gem::Specification.new do |s|
  s.name = %q{csvr}
  s.version = "0.1.0"

  s.required_rubygems_version = Gem::Requirement.new(">= 0") if s.respond_to? :required_rubygems_version=
  s.authors = ["jugyo"]
  s.date = %q{2009-09-29}
  s.default_executable = %q{csvr}
  s.description = %q{Command line tool to view csv file}
  s.email = %q{jugyo.org@gmail.com}
  s.executables = ["csvr"]
  s.files = ["Rakefile", "README.rdoc", "bin/csvr", "lib/csvr.rb", "spec/csvr_spec.rb", "spec/test.csv"]
  s.homepage = %q{http://github.com/jugyo/csvr}
  s.require_paths = ["lib"]
  s.rubyforge_project = %q{csvr}
  s.rubygems_version = %q{1.3.4}
  s.summary = %q{CSV Viewer}

  if s.respond_to? :specification_version then
    current_version = Gem::Specification::CURRENT_SPECIFICATION_VERSION
    s.specification_version = 3

    if Gem::Version.new(Gem::RubyGemsVersion) >= Gem::Version.new('1.2.0') then
      s.add_runtime_dependency(%q<hirb>, [">= 0.2.6"])
    else
      s.add_dependency(%q<hirb>, [">= 0.2.6"])
    end
  else
    s.add_dependency(%q<hirb>, [">= 0.2.6"])
  end
end
