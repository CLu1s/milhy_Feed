class CreateBackgrounds < ActiveRecord::Migration
  def change
    create_table :backgrounds do |t|
      t.string :name
      t.text :url

      t.timestamps null: false
    end
  end
end
