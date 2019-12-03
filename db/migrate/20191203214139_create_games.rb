class CreateGames < ActiveRecord::Migration[6.0]
  def change
    create_table :games do |t|
      t.string :name
      t.string :developer
      t.string :release_date

      t.timestamps
    end
  end
end
