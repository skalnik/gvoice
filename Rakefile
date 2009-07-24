require 'rubygems'
require 'rake'

begin
  require 'jeweler'
  Jeweler::Tasks.new do |gem|
    gem.name = "gvoice"
    gem.summary = %Q{A small gem that enables you to call people via command line and Google Voice}
    gem.email = "mike.skalnik@gmail.com"
    gem.homepage = "http://github.com/skalnik/gvoice"
    gem.authors = ["Mike Skalnik"]
    gem.add_dependency('mechanize', '>=0.9.3')
  end
  
rescue LoadError
  puts "Jeweler (or a dependency) not available. Install it with: sudo gem install jeweler"
end


require 'rake/rdoctask'
Rake::RDocTask.new do |rdoc|
  if File.exist?('VERSION.yml')
    config = YAML.load(File.read('VERSION.yml'))
    version = "#{config[:major]}.#{config[:minor]}.#{config[:patch]}"
  else
    version = ""
  end

  rdoc.rdoc_dir = 'rdoc'
  rdoc.title = "gvoice #{version}"
  rdoc.rdoc_files.include('README*')
  rdoc.rdoc_files.include('lib/**/*.rb')
end

