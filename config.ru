require 'rubygems'
require 'bundler'
Bundler.require

require 'yaml'
require 'erb'

Dir[File.dirname(__FILE__) + '/lib/*.rb'].each {|file| require file }

require './web.rb'
run Sinatra::Application
