# Create your haunted_houses migration here[5.2]
class CreateHauntedHouses < ActiveRecord::Migration[5.2]
    def change(*args)
    create_table :haunted_houses, IF NOT EXISTSE do |t|
      t.string       :name 
      t.string       :location
      t.string       :theme
      t.decimal      :price 
      t.boolean      :family_friend
      t.datetime     :opening_date 
      t.datetime     :closing_date 
      t.text         :description
      t.timestamps 
      end
    end  
end