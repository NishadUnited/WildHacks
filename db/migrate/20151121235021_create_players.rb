class CreatePlayers < ActiveRecord::Migration
  def change
    create_table :players do |t|
      t.string :team
      t.integer :score
      t.integer :flagsClaimed

      t.timestamps
    end
  end
end
