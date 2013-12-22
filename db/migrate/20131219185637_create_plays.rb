class CreatePlays < ActiveRecord::Migration
  def change
    create_table :plays do |t|
      t.integer :number
      t.integer :period
      t.text :str
      t.text :timelap
      t.text :event
      t.text :description
      t.text :visonice
      t.text :homeonice

      t.timestamps
    end
  end
end
