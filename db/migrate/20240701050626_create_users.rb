class CreateUsers < ActiveRecord::Migration[7.1]
  def change
    create_table :users do |t|
      t.string :first_name
      t.string :last_name
      t.string :citizenship
      t.string :veteran_status
      t.string :gender
      t.string :ethnicity

      t.timestamps
    end
  end
end
