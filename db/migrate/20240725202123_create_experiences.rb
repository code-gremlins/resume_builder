class CreateExperiences < ActiveRecord::Migration[7.1]
  def change
    create_table :experiences do |t|
      t.text       :description
      t.references :position, null: false, foreign_key: true

      t.timestamps
    end
  end
end
