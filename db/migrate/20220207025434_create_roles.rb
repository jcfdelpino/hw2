class CreateRoles < ActiveRecord::Migration[7.0]
  def change
    create_table :roles do |t|
      t.string :movieid
      t.string :personid
      t.string :character

      t.timestamps
    end
  end
end
