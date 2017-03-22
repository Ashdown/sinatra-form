require './app'
require 'rspec/core/rake_task'
require 'sinatra/activerecord/rake'


RSpec::Core::RakeTask.new(:feature) do |task|
  task.pattern = 'features/*spec.rb'
end

task :default=>[:feature]


