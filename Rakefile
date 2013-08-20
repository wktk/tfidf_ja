require 'rubygems'
require 'bundler'
begin
  Bundler.setup(:default, :development)
rescue Bundler::BundlerError => e
  $stderr.puts e.message
  $stderr.puts "Run `bundle install` to install missing gems"
  exit e.status_code
end
require 'rake'

require 'jeweler'
Jeweler::Tasks.new do |gem|
  # gem is a Gem::Specification... see http://docs.rubygems.org/read/chapter/20 for more options
  gem.name = "tfidf_ja"
  gem.homepage = "http://github.com/kyow/tfidf_ja"
  gem.license = "MIT"
  gem.summary = %Q{Computes TF-IDF with Japanese dictionary.}
  gem.description = %Q{
    tfidf_ja computes TF-IDF with a dictionary.
    This gem include a Japanese IDF dictionary that were prepared in Yahoo! API.
  }
  gem.email = "24signals@gmail.com"
  gem.authors = ["K.Nishi"]
end
Jeweler::RubygemsDotOrgTasks.new

require 'rspec/core'
require 'rspec/core/rake_task'
RSpec::Core::RakeTask.new(:spec) do |spec|
  spec.pattern = FileList['spec/**/*_spec.rb']
end

task :default => :spec

require 'rdoc/task'
Rake::RDocTask.new do |rdoc|
  version = File.exist?('VERSION') ? File.read('VERSION') : ""

  rdoc.rdoc_dir = 'rdoc'
  rdoc.title = "tfidf_ja #{version}"
  rdoc.rdoc_files.include('README*')
  rdoc.rdoc_files.include('lib/**/*.rb')
  
  rdoc.options << '-c UTF-8' << '-S' << '-U'
end
