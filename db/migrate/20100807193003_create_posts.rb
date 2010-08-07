class CreatePosts < ActiveRecord::Migration
  def self.up
    create_table :posts do |t|
      t.string :postCreator
      t.string :postTopic
      t.datetime :postTime

      t.timestamps
    end
  end

  def self.down
    drop_table :posts
  end
end
