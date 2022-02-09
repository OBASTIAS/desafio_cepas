class CreateMegazines < ActiveRecord::Migration[5.2]
  def change
    create_table :megazines do |t|
      t.string :name
      t.references :oenologist, foreign_key: true

      t.timestamps
    end
  end
end
