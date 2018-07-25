class CreateInvests < ActiveRecord::Migration[5.1]
  def change
    create_table :invests do |t|
      t.float :investment
      t.float :value
      t.references :user, foreign_key: true
      t.references :marketasset, foreign_key: true

      t.timestamps
    end
  end
end
