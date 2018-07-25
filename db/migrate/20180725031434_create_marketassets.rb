class CreateMarketassets < ActiveRecord::Migration[5.1]
  def change
    create_table :marketassets do |t|
      t.string :name
      t.float :value

      t.timestamps
    end
  end
end
