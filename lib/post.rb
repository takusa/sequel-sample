# -*- encoding: utf-8 -*-

#DB = Sequel.connect('mysql2://root:@localhost/sequel_test')
options = YAML.load_file("#{File.dirname(__FILE__)}/../config/database.yml")
DB = Sequel.connect('mysql2:/', options)
class Post < Sequel::Model

  def self.create_test_data
    3.times do |n|
      post = Post.new
      post.text = "create_text_by:#{Time.now.to_s}"
      post.save
    end
  end
end
