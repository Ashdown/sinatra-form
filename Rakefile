require './app'
require 'rspec/core/rake_task'
require 'sinatra/activerecord/rake'


RSpec::Core::RakeTask.new(:feature) do |task|
  task.pattern = 'features/*spec.rb'
end

desc 'compile jsx for production'
task :compilejsx do
  `jsx --no-cache-dir assets/javascripts/app assets/javascripts/app.prod`
end

task :default=>[:feature]


