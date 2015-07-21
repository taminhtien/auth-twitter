class CreateTwitters < ActiveRecord::Migration
  def change
    create_table :twitters do |t|
      t.string :title
      t.text :body

      t.timestamps null: false
    end
  end
end
