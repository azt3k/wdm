require 'wdm'

Dir["#{File.dirname(__FILE__)}/support/**/*.rb"].each { |f| require f }

RSpec.configure do |config|
  config.treat_symbols_as_metadata_keys_with_true_values = true
  config.run_all_when_everything_filtered = true
  config.color_enabled = true
  config.filter_run :focus

  config.before(:all) { `rake compile` }
  
  config.include WDM::SpecHelpers
end