$:.unshift File.dirname(__FILE__) + '/lib'
require 'csvr'
require 'spec/rake/spectask'
require 'rake/clean'
require 'rake/gempackagetask'
require 'rake/rdoctask'

task :default => [:spec]

desc 'run all specs'
Spec::Rake::SpecTask.new do |t|
  t.spec_files = FileList['spec/**/*_spec.rb']
  t.spec_opts = ['-c']
end

name = 'csvr'
version = Csvr::VERSION

spec = Gem::Specification.new do |s|
  s.name = name
  s.version = version
  s.summary = "CSV Viewer"
  s.description = "Command line tool to view csv file."
  s.files = %w(Rakefile README.rdoc) + Dir.glob("{bin,lib,spec}/**/*")
  s.add_dependency("hirb", ">= 0.2.6")
  s.executables = ["csvr"]
  s.authors = %w(jugyo)
  s.email = 'jugyo.org@gmail.com'
  s.homepage = 'http://github.com/jugyo/csvr'
  s.rubyforge_project = 'csvr'
  s.has_rdoc = false
end

Rake::GemPackageTask.new(spec) do |p|
  p.need_tar = true
end

task :gemspec do
  filename = "#{name}.gemspec"
  open(filename, 'w') do |f|
    f.write spec.to_ruby
  end
  puts <<-EOS
  Successfully generated gemspec
  Name: #{name}
  Version: #{version}
  File: #{filename}
  EOS
end

task :install => [ :package ] do
  sh %{sudo gem install pkg/#{name}-#{version}.gem}
end

task :uninstall => [ :clean ] do
  sh %{sudo gem uninstall #{name}}
end

CLEAN.include ['pkg']
