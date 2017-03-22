require './app'
require 'rspec/core/rake_task'

RSpec::Core::RakeTask.new(:feature) do |task|
  task.pattern = 'features/*spec.rb'
end

task :default=>[:feature]


