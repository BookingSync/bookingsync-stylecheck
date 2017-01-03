require "fileutils"

namespace :style do
  namespace :rubocop do
    desc "Run RuboCop with auto_correct"
    task :with_auto_correct do
      options = ["--rails", "--auto-correct", "--display-cop-names"]
      options += ["--fail-level", "refactor"]
      options += ["-c", BookingSync::Stylecheck::RubocopHelpers.config]
      sh "bundle exec rubocop #{options.join(' ')}" do |ok, _res|
        abort "Fix code style errors" unless ok
      end
    end

    desc "Run RuboCop without auto_correct"
    task :without_auto_correct do
      options = ["--rails", "--display-cop-names"]
      options += ["--fail-level", "refactor"]
      options += ["-c", BookingSync::Stylecheck::RubocopHelpers.config]
      sh "bundle exec rubocop #{options.join(' ')}" do |ok, _res|
        abort "Fix code style errors" unless ok
      end
    end

    desc "Run RuboCop using the BookingSync config and concatenate custom commands"
    task :custom, [:command_string, :no_fail] do |t, args|
      args[:no_fail] ||= false

      options = ["--rails", "--fail-level", "refactor", "--display-cop-names"]
      options += ["-c", BookingSync::Stylecheck::RubocopHelpers.config]
      options += [args[:command_string]]
      sh "bundle exec rubocop #{options.join(' ')}" do |ok, res|
        abort "Fix code style errors" if !args[:no_fail] && !ok
      end
    end
  end
end

desc "Check codestyle and fix common errors"
task :style do
  Rake::Task["style:rubocop:with_auto_correct"].invoke
end
