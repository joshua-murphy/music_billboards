class CreateBillboards < ActiveRecord::Migration[5.1]
  def change
    create_table :billboards do |t|
      t.string :name
      t.integer :count
      t.string :genre

      t.timestamps
    end
  end
end
