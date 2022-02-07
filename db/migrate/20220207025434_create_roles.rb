class CreateRoles < ActiveRecord::Migration[7.0]
  def change
    create_table :roles do |t|
      t.integer :movieid
      t.integer :personid
      t.string :character

      t.timestamps
    end
  end
end
