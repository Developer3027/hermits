class CreateHermits < ActiveRecord::Migration[7.1]
  def change
    create_table :hermits do |t|
      t.integer :start_year
      t.string :alias
      t.float :subs
      t.text :description
      t.text :youtube
      t.text :twitch
      t.text :twitter
      t.text :instagram
      t.text :patreon
      t.string :skin_alt
      t.string :face_alt

      t.timestamps
    end
  end
end
