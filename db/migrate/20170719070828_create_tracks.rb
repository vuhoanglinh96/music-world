class CreateTracks < ActiveRecord::Migration[5.0]
  def change
    create_table :tracks do |t|
      t.string :title
      t.string :song
      t.references :genre
      t.references :user
      t.text :description
      t.string :image

      t.timestamps
    end
    add_index :tracks, :title
  end
end
