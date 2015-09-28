# Generated by jeweler
# DO NOT EDIT THIS FILE DIRECTLY
# Instead, edit Jeweler::Tasks in Rakefile, and run 'rake gemspec'
# -*- encoding: utf-8 -*-

Gem::Specification.new do |s|
  s.name = "retrospec-plugingen"
  s.version = "0.2.2"

  s.required_rubygems_version = Gem::Requirement.new(">= 0") if s.respond_to? :required_rubygems_version=
  s.authors = ["Corey Osman"]
  s.date = "2015-09-28"
  s.description = ""
  s.email = "corey@logicminds.biz"
  s.extra_rdoc_files = [
    "LICENSE.txt",
    "README.md"
  ]
  s.files = [
    ".document",
    ".rspec",
    "Gemfile",
    "Gemfile.lock",
    "LICENSE.txt",
    "README.md",
    "Rakefile",
    "VERSION",
    "lib/retrospec-plugingen.rb",
    "lib/retrospec/plugins/v1/plugin/plugin_gen.rb",
    "lib/retrospec/plugins/v1/plugin/spec_object.rb",
    "lib/retrospec/plugins/v1/plugin/templates/module_files/.gitignore",
    "lib/retrospec/plugins/v1/plugin/templates/module_files/.rspec",
    "lib/retrospec/plugins/v1/plugin/templates/module_files/Gemfile",
    "lib/retrospec/plugins/v1/plugin/templates/module_files/LICENSE.txt",
    "lib/retrospec/plugins/v1/plugin/templates/module_files/README.md.retrospec.erb",
    "lib/retrospec/plugins/v1/plugin/templates/module_files/Rakefile.retrospec.erb",
    "lib/retrospec/plugins/v1/plugin/templates/module_files/lib/retrospec/plugins/v1/plugin/spec_object.rb.retrospec.erb",
    "lib/retrospec/plugins/v1/plugin/templates/module_files/spec/spec_helper.rb.retrospec.erb",
    "lib/retrospec/plugins/v1/plugin/templates/module_files/spec/unit/plugin_spec.rb.retrospec.erb",
    "lib/retrospec/plugins/v1/plugin/templates/plugin-name.rb.retrospec.erb",
    "lib/retrospec/plugins/v1/plugin/templates/retrospec-main-plugin-file.rb.retrospec.erb",
    "retrospec-plugingen.gemspec",
    "spec/plugin_gen_spec.rb",
    "spec/retrospec-plugin_spec.rb",
    "spec/spec_helper.rb"
  ]
  s.homepage = "https://github.com/nwops/retrospec-plugingen"
  s.licenses = ["MIT"]
  s.require_paths = ["lib"]
  s.rubygems_version = "2.0.14"
  s.summary = "Generates the retrospec plugin scaffolding for retrospec plugins"

  if s.respond_to? :specification_version then
    s.specification_version = 4

    if Gem::Version.new(Gem::VERSION) >= Gem::Version.new('1.2.0') then
      s.add_runtime_dependency(%q<facets>, [">= 0"])
      s.add_runtime_dependency(%q<retrospec>, ["~> 0.3"])
      s.add_development_dependency(%q<rspec>, ["~> 3.2"])
      s.add_development_dependency(%q<rdoc>, ["~> 3.12"])
      s.add_development_dependency(%q<bundler>, ["~> 1.0"])
      s.add_development_dependency(%q<jeweler>, ["~> 2.0.1"])
      s.add_development_dependency(%q<simplecov>, [">= 0"])
      s.add_development_dependency(%q<pry>, [">= 0"])
    else
      s.add_dependency(%q<facets>, [">= 0"])
      s.add_dependency(%q<retrospec>, ["~> 0.3"])
      s.add_dependency(%q<rspec>, ["~> 3.2"])
      s.add_dependency(%q<rdoc>, ["~> 3.12"])
      s.add_dependency(%q<bundler>, ["~> 1.0"])
      s.add_dependency(%q<jeweler>, ["~> 2.0.1"])
      s.add_dependency(%q<simplecov>, [">= 0"])
      s.add_dependency(%q<pry>, [">= 0"])
    end
  else
    s.add_dependency(%q<facets>, [">= 0"])
    s.add_dependency(%q<retrospec>, ["~> 0.3"])
    s.add_dependency(%q<rspec>, ["~> 3.2"])
    s.add_dependency(%q<rdoc>, ["~> 3.12"])
    s.add_dependency(%q<bundler>, ["~> 1.0"])
    s.add_dependency(%q<jeweler>, ["~> 2.0.1"])
    s.add_dependency(%q<simplecov>, [">= 0"])
    s.add_dependency(%q<pry>, [">= 0"])
  end
end

