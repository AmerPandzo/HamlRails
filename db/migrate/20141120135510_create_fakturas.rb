class CreateFakturas < ActiveRecord::Migration
  def change
    create_table :fakturas do |t|
      t.string :naziv
      t.integer :klijent_id

      t.timestamps
    end
  end
end
