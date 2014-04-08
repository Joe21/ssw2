class CreateEntries < ActiveRecord::Migration
  def change
    create_table :entries do |t|
    	t.datetime :date
    	t.integer :quantity, default: 0
    	t.integer :hrs_slept, default: 0
    	t.integer :temp
    	t.integer :user_id

      t.timestamps
    end
  end
end
