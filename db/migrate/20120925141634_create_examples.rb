class CreateExamples < ActiveRecord::Migration
  def change
    create_table :examples do |t|
      t.string :title
      t.string :url
      t.text :description

      t.timestamps
    end
  end
end
