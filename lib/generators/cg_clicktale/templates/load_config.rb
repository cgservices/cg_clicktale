raw_config = File.read(::Rails.root + "config/clicktale.yml")
CgClicktale.config = YAML.load(raw_config)[::Rails.env].symbolize_keys
puts "Setting CLICKTALE"
