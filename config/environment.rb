require "bundler/setup"

require "sinatra/activerecord"
require 'ostruct'
require 'date'
require 'sqlite3'

Bundler.require

Dir[File.join(File.dirname(__FILE__), "../app/models", "*.rb")].each {|f| require f}

connection_details = YAML::load(File.open('config/database.yml'))
ActiveRecord::Base.establish_connection(connection_details)
