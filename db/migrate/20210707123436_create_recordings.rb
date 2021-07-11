class CreateRecordings < ActiveRecord::Migration[6.1]
  def change
    create_table :recordings do |t|
      t.string :name
      t.string :surname
      t.string :patronymic
      t.string :phone
      t.string :email
      t.float :weight
      t.float :length
      t.float :width
      t.float :height
      t.string :origin
      t.string :destination
      t.float :distance
      t.float :price

      t.timestamps
    end
  end
end
