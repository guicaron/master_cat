class CreateChefs < ActiveRecord::Migration[7.0]
  def change
    create_table :chefs do |t|
      t.string :cat_name
      t.string :speciality
      t.references :user, null: false, foreign_key: true

      t.timestamps
    end
  end
end
