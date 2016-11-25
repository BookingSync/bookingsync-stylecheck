module BookingSync
  # style checking for booking sync projects
  module Stylecheck
    class << self
      def root
        Gem::Specification.find_by_name("bookingsync-stylecheck").gem_dir
      end
    end
  end
end

require "bookingsync/stylecheck/rubocop_helpers"
require "bookingsync/stylecheck/railtie" rescue nil # support non rails setups
