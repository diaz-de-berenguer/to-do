class CreateProjects < ActiveRecord::Migration
  def change
    create_table :projects do |t|
      t.integer :position
      t.string :title
      t.text :description

      t.timestamps null: false
    end
  end
end
