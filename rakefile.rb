require 'rubygems'
require 'rake'
require 'sequel'
require 'sequel/extensions/migration'

require './lib/app.rb'

namespace :db do
  desc 'migrate database'
  task :migrate do
    con = App.connect
    Sequel::Migrator.apply(con , './db/migrate')
  end
end
