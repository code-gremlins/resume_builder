class CreatePositions < ActiveRecord::Migration[7.1]
  def change
    create_table :positions do |t|
      t.string     :company_name
      t.string     :title
      t.text       :description
      t.date       :start_date
      t.date       :end_date
      t.references :users, null: false, foreign_key: true

      t.timestamps
    end
  end
end
