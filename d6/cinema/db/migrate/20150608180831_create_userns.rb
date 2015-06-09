class CreateUserns < ActiveRecord::Migration
  def change
    create_table :userns do |t|
      t.string :nombre
      t.float :location

      t.timestamps null: false
    end
  end
end
