# Generated by jeweler
# DO NOT EDIT THIS FILE DIRECTLY
# Instead, edit Jeweler::Tasks in Rakefile, and run 'rake gemspec'
# -*- encoding: utf-8 -*-

Gem::Specification.new do |s|
  s.name = %q{DerGuteMoritz-rforce}
  s.version = "0.4.2"

  s.required_rubygems_version = Gem::Requirement.new(">= 0") if s.respond_to? :required_rubygems_version=
  s.authors = ["Ian Dees", "Logan (henriquez)", "Aaron Qian", "Moritz Heidkamp"]
  s.date = %q{2010-12-02}
  s.description = %q{Rather than enforcing adherence to the sforce.com schema, RForce assumes you are familiar with the API. Ruby method names become SOAP method names. Nested Ruby hashes become nested XML elements.}
  s.email = %q{moritz@twoticketsplease.de}
  s.extra_rdoc_files = [
    "LICENSE",
    "README.rdoc"
  ]
  s.files = [
    ".hgignore",
    ".hgtags",
    ".specification",
    "DerGuteMoritz-rforce.gemspec",
    "History.txt",
    "LICENSE",
    "README.rdoc",
    "Rakefile",
    "VERSION",
    "bugs/issue-09d998dc3f9d6e8928598fd5d9c6627102dedd65.yaml",
    "bugs/issue-1b668248120eb4fd055f0ea6b75ff807f6955936.yaml",
    "bugs/issue-3ef7a7c5c7e38fb76e1f53e1b67f45559e21b104.yaml",
    "bugs/issue-a7a87cb98d29943a49d1608adb68475838ad2e65.yaml",
    "bugs/issue-c92d34e10038ba6b9acfd7e3dfb2b154e463baba.yaml",
    "bugs/project.yaml",
    "lib/rforce.rb",
    "lib/rforce/binding.rb",
    "lib/rforce/method_keys.rb",
    "lib/rforce/soap_pullable.rb",
    "lib/rforce/soap_response.rb",
    "lib/rforce/soap_response_expat.rb",
    "lib/rforce/soap_response_hpricot.rb",
    "lib/rforce/soap_response_nokogiri.rb",
    "lib/rforce/soap_response_rexml.rb",
    "lib/rforce/version.rb",
    "rforce.tmproj",
    "spec/rforce_spec.rb",
    "spec/soap-response.xml",
    "spec/spec.opts",
    "spec/spec_helper.rb",
    "tasks/timing.rake",
    "test/oauth_tests.rb",
    "wsdl/README.html",
    "wsdl/README.txt",
    "wsdl/ca.pem",
    "wsdl/default.rb",
    "wsdl/defaultDriver.rb",
    "wsdl/orderedhash.rb",
    "wsdl/partner.wsdl.xml",
    "wsdl/partner.wsdl.xml.old",
    "wsdl/sample/create.rb",
    "wsdl/sample/describeGlobal.rb",
    "wsdl/sample/describeSObjects.rb",
    "wsdl/sample/getServerTimestamp.rb",
    "wsdl/sample/query.rb",
    "wsdl/sample/queryMore.rb",
    "wsdl/sample/retrieve.rb",
    "wsdl/sforceDriver.rb",
    "wsdl/soap/property",
    "wsdl/wsdl.rb"
  ]
  s.homepage = %q{http://github.com/DerGuteMoritz/rforce}
  s.require_paths = ["lib"]
  s.rubygems_version = %q{1.3.7}
  s.summary = %q{A simple, usable binding to the SalesForce API.}
  s.test_files = [
    "spec/rforce_spec.rb",
    "spec/spec_helper.rb",
    "test/oauth_tests.rb"
  ]

  if s.respond_to? :specification_version then
    current_version = Gem::Specification::CURRENT_SPECIFICATION_VERSION
    s.specification_version = 3

    if Gem::Version.new(Gem::VERSION) >= Gem::Version.new('1.2.0') then
      s.add_runtime_dependency(%q<builder>, [">= 2.0.0"])
      s.add_runtime_dependency(%q<nokogiri>, ["~> 1.4.4"])
      s.add_runtime_dependency(%q<oauth>, [">= 0"])
      s.add_development_dependency(%q<rspec>, [">= 1.3"])
    else
      s.add_dependency(%q<builder>, [">= 2.0.0"])
      s.add_dependency(%q<nokogiri>, ["~> 1.4.4"])
      s.add_dependency(%q<oauth>, [">= 0"])
      s.add_dependency(%q<rspec>, [">= 1.3"])
    end
  else
    s.add_dependency(%q<builder>, [">= 2.0.0"])
    s.add_dependency(%q<nokogiri>, ["~> 1.4.4"])
    s.add_dependency(%q<oauth>, [">= 0"])
    s.add_dependency(%q<rspec>, [">= 1.3"])
  end
end

