
#Sequel.migration do
#  up do
#    create_table :posts do
#      primary_key :id
#      String :text
#    end
#  end
#
#  down do
#   drop_table :posts
#  end
#end

class CreatePosts < Sequel::Migration
  def up
    create_table :posts do
      primary_key :id
      String :text
    end
  end
end
