# Create your costume_stores migration here
class CreateCostumeStores < ActiveRecord::Migration[5.2]
  def up 
    drop_table :costumestores do |t|
      binding.pry
    end
  end
  
  def change(*args)
    create_table :costume_stores, IF NOT EXISTS do |t|
      t.string      :name
      t.string      :location
      t.integer     :costume_inventory
      t.integer     :num_of_employees
      t.boolean     :still_in_business
      t.datetime    :opening_time 
      t.datetime    :closing_time 
      t.timestamps
    end
  end
end