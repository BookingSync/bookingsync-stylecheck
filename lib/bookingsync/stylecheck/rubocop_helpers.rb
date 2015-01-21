require 'fileutils'

module BookingSync
  module Stylecheck
    # helper to nicely update rubocop config
    module RubocopHelpers
      class << self
        def update_config
          FileUtils.copy(gem_config, project_config) if update_config?
        end

        def update_config?
          config_missing? || config_out_of_date?
        end

        def config_missing?
          !File.exist?(project_config)
        end

        def config_out_of_date?
          !FileUtils.compare_file(project_config, gem_config)
        end

        def project_config
          Rails.root.join('.rubocop.yml')
        end

        def gem_config
          File.join(BookingSync::Stylecheck.root, 'config', 'rubocop.yml')
        end
      end
    end
  end
end
