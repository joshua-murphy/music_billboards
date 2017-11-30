class CreateArtists < ActiveRecord::Migration[5.1]
  def change
    create_table :artists do |t|
      t.string :name, not_null: true
      t.integer :rank, not_null: true
      t.belongs_to :billboard, foreign_key: true

      t.timestamps
    end
  end
end
