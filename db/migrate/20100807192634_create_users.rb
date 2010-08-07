class CreateUsers < ActiveRecord::Migration
  def self.up
    create_table :users do |t|
      t.string :userName
      t.string :firstName
      t.string :lastName
      t.string :userId
      t.string :userType
      t.string :userPassword
      t.string :userEmail

      t.timestamps
    end
  end

  def self.down
    drop_table :users
  end
end
