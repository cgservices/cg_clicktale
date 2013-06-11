require 'active_support'

require 'cg_clicktale/controller'
require 'cg_clicktale/helper'

module CgClicktale

  def self.init
    ActionController::Base.append_view_path(File.dirname(__FILE__) + "/../../app/views") if ActionController::Base.respond_to?(:append_view_path)
    ActionController::Base.send(:include, CgClicktale::Controller)
    #ActionView::Base.send(:include, CgClicktale::Helper)
  end

  ActiveSupport.on_load(:action_view) do
    include CgClicktale::Helper
  end
end
