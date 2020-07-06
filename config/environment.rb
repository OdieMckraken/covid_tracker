#require "covid_status_by_country/version"

#module CovidStatusByCountry
#  class Error < StandardError; end
#  # Your code goes here...
#end

require 'pry'
require 'httparty'
require 'colorize'
require 'yaml'
require 'tty-font'
require 'pastel'
require 'tty-prompt'
require 'pp'



require_relative '../lib/services/covid_status_api.rb'
require_relative '../lib/models/country_status.rb'
require_relative '../lib/models/global_status.rb'
require_relative '../lib/services/covid_status_cli.rb'


