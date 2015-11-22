class CreateFlags < ActiveRecord::Migration
  def change
    create_table :flags do |t|
      t.integer :x
      t.integer :y
      t.string :type
      t.integer :claimed

      t.timestamps
    end
  end
end
