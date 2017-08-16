class CreateLists < ActiveRecord::Migration
  def change
    create_table :lists do |t|
      t.string :start
      t.string :gu
      t.string :dong
      t.string :juso
      t.string :name
      t.integer :number
      t.string :degree

      t.timestamps null: false
    end
  end
end
