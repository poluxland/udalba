class CreateWords < ActiveRecord::Migration[8.0]
  def change
    create_table :words do |t|
      t.string :content

      t.timestamps
    end
  end
end
