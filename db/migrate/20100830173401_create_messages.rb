class CreateMessages < ActiveRecord::Migration
  def self.up
    create_table :messages do |t|
      t.string :messageCreator
      t.integer :messageTopic
      t.datetime :messageTime
      t.text :messageBody

      t.timestamps
    end
  end

  def self.down
    drop_table :messages
  end
end
