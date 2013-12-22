class CreateGames < ActiveRecord::Migration
  def change
    create_table :games do |t|
      t.integer :number
      t.text :visitor
      t.text :home
      t.text :start
      t.text :endtime
      t.integer :vscore
      t.integer :hscore
      t.text :date
      t.text :weekday
      t.text :visitorhva
      t.text :homehva

      t.timestamps
    end
  end
end
