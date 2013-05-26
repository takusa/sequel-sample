require 'rubygems'
require 'rake'
require 'sequel'
require 'sequel/extensions/migration'

namespace :db do
  desc 'migrate database'
  task :migrate do
    #options = {:user=>"root", :password=>"", :database=>"sequel_test"}
    options = YAML.load_file("#{File.dirname(__FILE__)}/config/database.yml")
    DB = Sequel.connect("mysql2:/", options)
    Sequel::Migrator.apply(DB, './db/migrate')
  end
end
