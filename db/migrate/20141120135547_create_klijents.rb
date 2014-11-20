class CreateKlijents < ActiveRecord::Migration
  def change
    create_table :klijents do |t|
      t.string :naziv

      t.timestamps
    end
  end
end
