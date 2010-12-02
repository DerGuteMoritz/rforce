require 'rubygems'
require 'rake'

begin
  require 'jeweler'
  Jeweler::Tasks.new do |gem|
    gem.name = "DerGuteMoritz-rforce"
    gem.summary = %Q{A simple, usable binding to the SalesForce API.}
    gem.description = %Q{Rather than enforcing adherence to the sforce.com schema, RForce assumes you are familiar with the API. Ruby method names become SOAP method names. Nested Ruby hashes become nested XML elements.}
    gem.email = "moritz@twoticketsplease.de"
    gem.homepage = "http://github.com/DerGuteMoritz/rforce"
    gem.authors = ["Ian Dees", "Logan (henriquez)", "Aaron Qian", "Moritz Heidkamp"]
    gem.add_dependency "builder", ">= 2.0.0"
    gem.add_dependency 'oauth'
    gem.add_development_dependency "rspec", ">= 1.3"
    # gem is a Gem::Specification... see http://www.rubygems.org/read/chapter/20 for additional settings
  end
  Jeweler::GemcutterTasks.new
rescue LoadError
  puts "Jeweler (or a dependency) not available. Install it with: gem install jeweler"
end

require 'rake/testtask'
Rake::TestTask.new(:test) do |test|
  test.libs << 'lib' << 'test'
  test.pattern = 'test/**/test_*.rb'
  test.verbose = true
end

begin
  require 'rcov/rcovtask'
  Rcov::RcovTask.new do |test|
    test.libs << 'test'
    test.pattern = 'test/**/test_*.rb'
    test.verbose = true
  end
rescue LoadError
  task :rcov do
    abort "RCov is not available. In order to run rcov, you must: sudo gem install spicycode-rcov"
  end
end

task :test => :check_dependencies

task :default => :test

require 'rake/rdoctask'
Rake::RDocTask.new do |rdoc|
  version = File.exist?('VERSION') ? File.read('VERSION') : ""

  rdoc.rdoc_dir = 'rdoc'
  rdoc.title = "rforce #{version}"
  rdoc.rdoc_files.include('README*')
  rdoc.rdoc_files.include('lib/**/*.rb')
end
