require 'rubocop/rake_task'
require 'fileutils'

desc 'run bookingsync stylecheck'
task :style do
  Rake::Task['bookingsync:stylecheck:rubocop'].invoke
end

namespace :bookingsync do
  namespace :stylecheck do
    desc 'Run RuboCop'
    RuboCop::RakeTask.new

    desc 'update RuboCop config'
    task :update_rubocop_config do
      BookingSync::Stylecheck::RubocopHelpers.update_config
    end
  end
  Rake::Task['bookingsync:stylecheck:rubocop'].enhance([:update_rubocop_config])
end
