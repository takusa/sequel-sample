# -*- encoding: utf-8 -*-
require_relative 'app.rb'
#require File.expand_path('app.rb', File.dirname(__FILE__))
#DB = Sequel.connect('mysql2://root:@localhost/sequel_test')
App.connect
class Post < Sequel::Model

  def self.create_test_data
    3.times do |n|
      post = Post.new
      post.text = "create_text_by:#{Time.now.to_s}"
      post.save
    end
  end
end
