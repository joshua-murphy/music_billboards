class CreateBillboards < ActiveRecord::Migration[5.1]
  def change
    create_table :billboards do |t|
      t.string :name, null: false
      t.integer :count, null:false, default: 100
      t.string :genre, null:false

      t.timestamps
    end
  end
end
