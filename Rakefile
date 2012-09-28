require 'rake/testtask'

require 'bundler'
Bundler::GemHelper.install_tasks

desc 'Default: run tests for all ORMs.'
task :default => :test


desc 'Run Devise unit tests.'
Rake::TestTask.new(:test) do |t|
  t.libs << 'lib'
  t.libs << 'test'
  t.pattern = 'test/**/*_test.rb'
  t.verbose = true
end
