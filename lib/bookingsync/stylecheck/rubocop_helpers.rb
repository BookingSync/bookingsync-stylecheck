require "fileutils"

module BookingSync
  module Stylecheck
    # helper to nicely update rubocop config
    module RubocopHelpers
      class << self
        def config
          File.join(BookingSync::Stylecheck.root, "config", "rubocop.yml")
        end
      end
    end
  end
end
