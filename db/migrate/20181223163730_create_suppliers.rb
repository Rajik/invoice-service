class CreateSuppliers < ActiveRecord::Migration[5.1]
  def change
    create_table :suppliers do |t|
      t.string :name
      t.string :registration_type
      t.string :trn

      t.timestamps
    end
  end
end
