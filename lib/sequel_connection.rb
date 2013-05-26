# -*- encoding: utf-8 -*-
options = YAML.load_file("#{File.dirname(__FILE__)}/../config/database.yml") 
DB = Sequel.connect('mysql2:/', options)
