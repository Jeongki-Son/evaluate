class CreateFashions < ActiveRecord::Migration
  def change
    create_table :fashions do |t|
      
      t.string :title

      t.timestamps null: false
    end
  end
end
