class CreateMovies < ActiveRecord::Migration[7.0]
  def change
    create_table :movies do |t|
      t.string :title
      t.string :year_released
      t.string :rating
      t.string :person_id
    end
  end
end
