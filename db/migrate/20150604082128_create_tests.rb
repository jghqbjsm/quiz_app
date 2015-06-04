class CreateTests < ActiveRecord::Migration
  def change
    create_table :tests do |t|
      t.integer :Int
      t.string :Str

      t.timestamps null: false
    end
  end
end
