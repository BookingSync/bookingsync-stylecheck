require 'rubocop/rake_task'
require 'fileutils'

desc 'run bookingsync stylecheck'
task :style do
  Rake::Task['bookingsync:stylecheck:rubocop'].invoke
end

namespace :bookingsync do
  namespace :stylecheck do
    desc 'Run RuboCop'
    RuboCop::RakeTask.new do |task|
      task.options = ['-c', BookingSync::Stylecheck::RubocopHelpers.config]
    end
  end
end
