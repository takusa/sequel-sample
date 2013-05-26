# -*- encoding: utf-8 -*-

#DB = Sequel.connect('mysql2://root:@localhost/sequel_test')
if ENV['CLEARDB_DATABASE_URL']
  DB = Sequel.connect(ENV['CLEARDB_DATABASE_URL'])
else
  options = YAML.load_file("#{File.dirname(__FILE__)}/../config/database.yml")
  DB = Sequel.connect('mysql2:/', options)
end
class Post < Sequel::Model

  def self.create_test_data
    3.times do |n|
      post = Post.new
      post.text = "create_text_by:#{Time.now.to_s}"
      post.save
    end
  end
end
