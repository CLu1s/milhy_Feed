class CreateBgs < ActiveRecord::Migration
  def change
    create_table :bgs do |t|
      t.string :url

      t.timestamps null: false
    end
  end
end
