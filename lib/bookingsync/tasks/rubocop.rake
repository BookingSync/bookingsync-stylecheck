require 'fileutils'

desc 'run bookingsync stylecheck'
task :style do
  Rake::Task['bookingsync:stylecheck:rubocop'].invoke
end

namespace :bookingsync do
  namespace :stylecheck do
    desc 'Run RuboCop'
    task :rubocop do
      options = ['--rails', '--auto-correct']
      options += ['-c', BookingSync::Stylecheck::RubocopHelpers.config]
      sh "bundle exec rubocop #{options.join(' ')}"
    end
  end
end
