class Episode < ActiveRecord::Migration
  def change
    create_table :episodes do |t|
      t.string :title
      t.integer :episode_number
      t.integer :season_id
      t.timestamps(null: false)
    end
  end
end