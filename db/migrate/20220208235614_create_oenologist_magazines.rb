class CreateOenologistMagazines < ActiveRecord::Migration[5.2]
  def change
    create_table :oenologist_magazines do |t|
      t.references :oenologist, foreign_key: true
      t.references :magazine

      t.timestamps
    end
  end
end
