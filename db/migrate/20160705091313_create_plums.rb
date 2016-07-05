class CreatePlums < ActiveRecord::Migration
  def change
    create_table :plums do |t|
      t.string :name
      t.string :address
      t.string :gender

      t.timestamps
    end
  end
end
