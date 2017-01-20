class CreatePhrases < ActiveRecord::Migration
  def change
    create_table :phrases do |t|
      t.text :phrase
      t.string :author
      t.boolean :seen

      t.timestamps null: false
    end
  end
end
