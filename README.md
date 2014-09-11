# CG ClickTale
Gem to implement ClickTale in Rails 3 applications.

## Installation
### In Gemfile
gem 'cg_clicktale', :git => "https://github.com/cgservices/cg_clicktale.git"

### Generator
Install ClickTale support by using the generator

    rails g cg_clicktale:install <project_id> (<ratio> <params>)

**Project ID** is the ClickTale project id, for example '100000'. This argument is mandatory.

**Ratio** is the visitor recording ratio, for example '0.1' for recording 1/10th of all visitors. This defaults to '1' if omitted.

**Params** are optional parameters, for example 'www02'. This defaults to 'www02' if omitted.

The generator adds the *clicktale* folder to your public folder and adds two files to your Rails application; *clicktale.yml* in the config folder and *clicktale.rb* in the config/initializers folder.

#### config/clicktale.yml
This config file contains the configuration of ClickTale. It contains the project id, ratio and params and enables you to turn ClickTale on and off in the different Rails environments. See below for configuration options.

#### config/initializers/clicktale.rb
This initializer loads the clicktale.yml config file and sets the config in the CgClicktale gem with the options found in the config file.

## Usage
After installation, include

    <%= clicktale_top() %>

after the &st;body&gt; tag and

    <%= clicktale_bottom() %>

before the &st;/body&gt; tag in your layout.html.erb file to enable ClickTale recording.

The clicktale_top function adds the javascript to initialize the WRInit var for ClickTale and the clicktale_bottom adds the actual ClickTale script and the activation call to the script using your project id, ratio and params.

## Configuration
The basic configuration of the CgClicktale gem can be found in the config.yml file in your Rails app.

* allowed_addresses: Allows configuration of IP addresses that should be allowed. When using a load balancer, you'l want to include the load balancers IP address here.

See http://wiki.clicktale.com/Article/Ruby_on_Rails_Integration_Module#Configuring_the_ClickTale.yml_File for more configuration options.

## Cache cleanup
To cleanup the clicktale cache folder in your public folder, add a cron job (crontab -e)

     */30 * * * * find /path/to/your/application/public/clicktale/ -type f -mmin +30 -exec rm {} \;


Based on the ClickTale gem by Astrials @ http://github.com/astrails/clicktale and the ClickTale Ruby on Rails Integration Module @ http://wiki.clicktale.com/Article/Ruby_on_Rails_Integration_Module
