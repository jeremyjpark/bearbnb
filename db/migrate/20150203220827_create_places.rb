class CreatePlaces < ActiveRecord::Migration
  def change
    create_table :places do |t|
      t.string :title, null: false
      t.decimal :price, null: false, precision: 7, scale: 2
      t.decimal :utilities, precision: 7, scale: 2
      t.decimal :deposit, precision: 7, scale: 2
      t.string :type, null: false
      t.string :preference, null: false
      t.date :start_date, null: false
      t.date :end_date
      t.string :laundry, null: false
      t.string :agreement, null: false
      t.string :email
      t.string :phonenum
      t.string :desc, null: false
      t.string :address, null: false

      t.timestamps
    end
  end
end
