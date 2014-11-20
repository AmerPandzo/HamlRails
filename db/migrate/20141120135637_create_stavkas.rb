class CreateStavkas < ActiveRecord::Migration
  def change
    create_table :stavkas do |t|
      t.string :naziv
      t.integer :iznos
      t.integer :faktura_id

      t.timestamps
    end
  end
end
