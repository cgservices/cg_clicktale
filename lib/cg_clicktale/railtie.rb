require 'cg_clicktale/controller'
require 'cg_clicktale/helper'

module CgClicktale
  class Railtie < Rails::Railtie
    initializer "cg_clicktale.initialize" do
      ActionController::Base.append_view_path(File.dirname(__FILE__) + "/../../app/views") if ActionController::Base.respond_to?(:append_view_path)
      ActionController::Base.send(:include, CgClicktale::Controller)
      ActionView::Base.send :include, CgClicktale::Helper
    end
  end
end