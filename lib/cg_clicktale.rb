require 'active_support'

require 'cg_clicktale/controller'
require 'cg_clicktale/helper'

module Cg_Clicktale

  def self.init
    ActionController::Base.append_view_path(File.dirname(__FILE__) + "/../../app/views") if ActionController::Base.respond_to?(:append_view_path)
    ActionController::Base.send(:include, Cg_Clicktale::Controller)
    ActionView::Base.send(:include, Cg_Clicktale::Helper)
  end

  CONFIG = HashWithIndifferentAccess.new
  begin
    conffile = File.join(::Rails.root, "config", "clicktale.yml")
    conf = YAML.load(File.read(conffile))
    CONFIG.merge!(conf[::Rails.env])
    puts "Setting CLICKTALE"
  rescue
    puts "*" * 50
    puts "#{conffile} can not be loaded:"
    puts $!
    puts "*" * 50
  end
end
