class CreateStyles < ActiveRecord::Migration
  def change
    create_table :styles do |t|
      
      t.string :name
      t.integer :age
      t.string :job
      t.string :photo
      t.integer :fashion_id

      t.timestamps null: false
    end
  end
end
