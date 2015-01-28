class CreateMovies < ActiveRecord::Migration
  def change
    create_table :movies do |t|
      t.string :name
      t.text :description
      t.integer :rating
      t.references :user
    end
  end
end
