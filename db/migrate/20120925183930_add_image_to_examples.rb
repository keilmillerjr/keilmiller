class AddImageToExamples < ActiveRecord::Migration
  def change
    add_column :examples, :image, :string
  end
end
