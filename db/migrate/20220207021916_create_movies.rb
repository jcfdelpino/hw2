class CreateMovies < ActiveRecord::Migration[7.0]
  def change
    create_table :movies do |t|
      t.integer :id
      t.string :title
      t.integer :released
      t.string :rating
      t.integer :person_id

      t.timestamps
    end
  end
end
