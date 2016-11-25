# bookingsync-stylecheck

This gem should streamline using of rubocop and potentially other automated stylecheck tools.

# install

Just add to gemfile and new rake task should be available

# Tasks

## Rails

For rails projects the rake tasks should be added automatically through railties.

## Non rails

For non rails and gems add the following snippet to `Rakefile`
```ruby
require "bookingsync/stylecheck"
load "bookingsync/tasks/rubocop.rake"
```

## Default

`bundle exec rake style`

This for now just prepares a rubocop config and runs the rubocop check

## Custom

The first argument will be concatenated to the commands that Rubocop receives.
The second argument, when set to true, makes the task always return with success.
For example:

`bundle exec rake style:rubocop:custom[--auto-correct app/controllers/application_controller.rb, true]`
