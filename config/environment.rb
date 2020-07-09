

#module CovidStatusByCountry
#  class Error < StandardError; end
#  # Your code goes here...
#end
require "bundler/setup"
require 'dotenv/load'
Bundler.require
require "irb"




require_relative "../lib/covid_status_by_country/version"
require_relative '../lib/services/covid_status_api.rb'
require_relative '../lib/models/country_status.rb'
require_relative '../lib/models/global_status.rb'
require_relative '../lib/services/covid_status_cli.rb'


