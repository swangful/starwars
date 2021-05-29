require 'yaml'

module Constants
  TEST_ENV = ENV.fetch('TEST_ENV', 'production')
  CONFIG = YAML.load_file('config/config.yml')[TEST_ENV]
end
