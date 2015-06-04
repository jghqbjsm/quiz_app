class CreateUnits < ActiveRecord::Migration
  def change
    create_table :units do |t|
      t.integer :unitID
      t.string :unitTitle
      t.string :studentID

      t.timestamps null: false
    end
  end
end