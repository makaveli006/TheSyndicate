class CreateTests < ActiveRecord::Migration[7.0]
  def change
    create_table :tests do |t|
      t.string :first_name

      t.timestamps
    end
  end
end
