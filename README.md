# CG ClickTale
Gem to implement ClickTale in Rails 3 applications.

## Installation
### In Gemfile
gem 'cg_clicktale', :git => "https://github.com/cgservices/cg_clicktale.git"

### Generator
Install ClickTale support by using the generator

    rails g cg_clicktale:install <project_id> (<ratio> <params>)

Project ID is the ClickTale project id, for example '100000'.
Ratio is the visitor recording ratio, for example '0.1' for recording 1/10th of all visitors. This defaults to '1' if omitted.
Params are optional parameters, for example 'www02'. This defaults to 'www02' if omitted.

## Usage
After installation, include

    CgClicktale::clicktale_top()

after the <body> tag and

    CgClicktale::clicktale_bottom()

before the </body> tag in your layout.html.erb file to enable ClickTale recording.


Based on the ClickTale gem by Astrials @ http://github.com/astrails/clicktale