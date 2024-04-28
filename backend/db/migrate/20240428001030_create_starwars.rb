class CreateStarwars < ActiveRecord::Migration[7.0]
  def change
    create_table :starwars do |t|
      t.string :name

      t.timestamps
    end
  end
end
