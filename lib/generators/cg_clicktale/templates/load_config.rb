raw_config = File.read(::Rails.root + "config/clicktale.yml")
CONFIG = YAML.load(raw_config)[::Rails.env].symbolize_keys
puts "Setting CLICKTALE"
