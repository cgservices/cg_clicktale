require 'active_support'

require 'cg_clicktale/railtie' if defined?(Rails)

require 'cg_clicktale/controller'
require 'cg_clicktale/helper'

module CgClicktale
  mattr_accessor :config
end
