class CreateCategories < ActiveRecord::Migration
  def change
    create_table :categories do |t|
      t.references :movie
      t.references :genre
    end
  end
end
