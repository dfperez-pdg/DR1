class CreateRecordBs < ActiveRecord::Migration
  def change
    create_table :record_bs do |t|
      t.string :attr1
      t.boolean :attr2
      t.datetime :attr3
      t.integer :attr4
      t.text :attr5

      t.timestamps null: false
    end
  end
end
