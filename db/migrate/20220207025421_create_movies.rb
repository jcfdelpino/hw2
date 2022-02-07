class CreateMovies < ActiveRecord::Migration[7.0]
  def change
    create_table :movies do |t|
      t.integer :released
      t.string :rating

      t.timestamps
    end
  end
end
