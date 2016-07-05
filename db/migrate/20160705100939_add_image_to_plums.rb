class AddImageToPlums < ActiveRecord::Migration
  def change
    add_column :plums, :image, :string
  end
end
