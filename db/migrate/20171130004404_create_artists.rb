class CreateArtists < ActiveRecord::Migration[5.1]
  def change
    create_table :artists do |t|
      t.string :name, not_null: true
      t.string :genre, not_null: true
      t.belongs_to :billboard, foreign_key: true, optional: true

      t.timestamps
    end
  end
end
