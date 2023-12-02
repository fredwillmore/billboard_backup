class CreateTracks < ActiveRecord::Migration[7.1]
  def change
    create_table :tracks do |t|
      t.string :name
      t.belongs_to :artist, index: true, foreign_key: true

      t.timestamps
    end
  end
end
