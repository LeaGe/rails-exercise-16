class CreatePapers < ActiveRecord::Migration
  def change
    create_table :papers do |t|
      t.string :Title
      t.string :Venue
      t.string :Year

      t.timestamps null: false
    end
  end
end
