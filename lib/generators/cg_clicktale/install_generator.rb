require 'rails/generators'

module CgClicktale
  module Generators
    class InstallGenerator < Rails::Generators::Base
      desc "CgClickTale installer"

      # commandline arguments
      argument :project_id, :type => :string, :required => false, :desc => "ClickTale project ID", :banner => "PROJECT_ID"
      argument :ratio, :type => :string, :required => false, :default => "1", :desc => "ClickTale visitor recording ratio", :banner => "RATIO"
      argument :params, :type => :string, :required => false, :default => "www02", :desc => "Optional parameters", :banner => "PARAMS"

      def self.source_root
        @source_root ||= File.join(File.dirname(__FILE__), 'templates')
      end

      def setup_clicktale
        if project_id
          # create a loader for the config
          template "load_config.rb", "config/initializers/clicktale.rb"
          # create the config file
          template 'config.yml', File.join('config', 'clicktale.yml')
          # create the clicktale dir in the public folder
          clicktale_dir = File.join(::Rails.root, "public/clicktale")
          FileUtils.mkdir_p(clicktale_dir)
        end
      end

    end
  end
end
