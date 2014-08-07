class CreateUsers < ActiveRecord::Migration
  def change
    create_table :users do |t|
      t.string :name
      t.string :email
      t.string :roll
      t.string :hostel
      t.integer :room
      t.integer :phone

      t.timestamps
    end
  end
end
