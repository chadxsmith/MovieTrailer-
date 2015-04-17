class CreateTrailers < ActiveRecord::Migration
  def change
    create_table :trailers do |t|
      t.string :title
      t.text :embedded_url
      t.timestamps
      t.belongs_to :movie
      t.integer :movie_id 
    end
  end
end
