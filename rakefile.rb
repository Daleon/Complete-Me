require 'rake'
require 'rake/testtask'
require 'pry'

Rake::TestTask.new do |test_file|
  t.libs << "test"
  t.test_files = FileList['test/*_test.rb']
  t.verbose = true
  ruby FileList['test/*_test.rb']
end

task default: :test
